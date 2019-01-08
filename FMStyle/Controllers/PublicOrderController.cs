using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Models;
using FMStyle.Libraries;
using FMStyle.Config;


namespace FMStyle.Controllers
{
    public class PublicOrderController : Controller
    {
        public PublicOrderController() {
            UserPublic us = new UserPublic();
        }

        // database context:
        private DBPublicFMStyleDataContext db = new DBPublicFMStyleDataContext();

        // get Promotion:
        public int GetPromotion() {
            return db.khuyenmais.Where(x => x.id_khuyenmai == Conf.ID_PROMOTION).Select(x => x.giatri).Single();
        }

        // GET: /PublicOrder/
        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Lịch sử mua hàng";
            MLogin us = (MLogin)Session["userPublic"];
            var datHang = db.dat_hangs.Where(x => x.id_user == us.id).OrderByDescending(c=>c.ngaydathang).ToList();
            return View(datHang);
        }

        // get order detailt:
        [HttpPost]
        public PartialViewResult OrderDetailt (FormCollection coll) {
            decimal sum = 0;
            int idOrder = Convert.ToInt32(coll["idOrder"].ToString());
            var dt = db.dat_hang_details.Where(x => x.id_dathang == idOrder).ToList();
            foreach (dat_hang_detail item in dt) {
                if (item.san_pham.khuyenmai == true)
                {
                    int percent = 100 - this.GetPromotion();
                    sum += ((item.san_pham.gia  * item.soluong) * percent)/100;
                }
                else {
                    sum += item.san_pham.gia * item.soluong;
                }
            }
            ViewBag.stongTien = Lib.convertToVietNamDong(sum);
            return PartialView(dt);
        }


        // buy:
        public ActionResult Buy() {
            if (this.CheckShoppingCart() == false)
                return Redirect("/error.html");
            ViewBag.Title = Conf.TITLE_PUBLIC+ " - Thanh toán";
            var tt = db.phuong_thuc_thanh_toans.OrderByDescending(x => x.id_pt).ToList();
            return View(tt);
        }
        
        // buy:
        [HttpPost]
        public ActionResult Buy(FormCollection coll)
        {
            if (this.CheckShoppingCart() == false)
                return Redirect("/error.html");
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Thanh toán";
            List<MCart> cart = (List<MCart>)Session["cart"];
            MLogin us = (MLogin)Session["userPublic"];
            try
            {
                dat_hang dh = new dat_hang();
                dh.id_pt = Convert.ToInt32(coll["cmbPT"].ToString());
                dh.id_user = us.id;
                dh.ngaydathang = DateTime.Now;
                dh.trang_thai = false;
                db.dat_hangs.InsertOnSubmit(dh);
                db.SubmitChanges();
                foreach (MCart c in cart)
                {
                    dat_hang_detail dt = new dat_hang_detail();
                    dt.id_dathang = dh.id_dathang;
                    dt.id_sanpham = c.idPro;
                    dt.size = c.size;
                    dt.soluong = c.soLuong;
                    db.dat_hang_details.InsertOnSubmit(dt);
                }
                db.SubmitChanges();
                Session.Remove("cart");
                return Redirect("/mua-thanh-cong.html");

            }
            catch (Exception ex)
            {
                ViewBag.error = Lib.messengerPublic(ex.Message.ToString());
                var tt = db.phuong_thuc_thanh_toans.OrderByDescending(x => x.id_pt).ToList();
                return View(tt);
            }
        }

        // get pt:
        [HttpPost]
        public string GetPT(FormCollection coll) {
            int id = Convert.ToInt32(coll["id"].ToString());
            return db.phuong_thuc_thanh_toans.Where(x => x.id_pt == id).Select(x => x.chitiet).Single();
        }

        // buy sucess:
        public ActionResult BuySuccess() {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Mua hàng thành công";
            return View();
        }

        // check ShoppingCart:
        private bool CheckShoppingCart() {
            if (Session["cart"] != null)
                return true;
            else
                return false;
        }

    }
}
