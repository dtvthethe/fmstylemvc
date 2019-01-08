using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Models;

namespace FMStyle.Controllers
{
    public class CartController : Controller
    {
        //database context:
        private DBPublicFMStyleDataContext db = new DBPublicFMStyleDataContext();

        // get promotion:
        private int GetPromotion()
        {
            return db.khuyenmais.Where(x => x.id_khuyenmai == Config.Conf.ID_PROMOTION).Select(x => x.giatri).Single();
        }

        // GET: /Cart/
        public ActionResult Index()
        {
            ViewBag.Title = Config.Conf.TITLE_PUBLIC + " - Giỏ hàng";
            if (Session["cart"] != null)
            {
                List<MCart> lstCart = (List<MCart>)Session["cart"];
                List<san_pham> lstSanPham = new List<san_pham>();
                foreach (MCart m in lstCart)
                {
                    san_pham sp = db.san_phams.Where(x => x.id_sanpham == m.idPro).Single();
                    lstSanPham.Add(sp);
                }
                List<object> lst = new List<object>();
                lst.Add(lstCart);
                lst.Add(lstSanPham);
                ViewBag.khuyenMai = this.GetPromotion();
                return View(lst);
            }
            else
            {
                ViewBag.messenger = "Giỏ hàng trống!";
                return Redirect("/");
            }
        }

        // update :
        [HttpPost]
        public ActionResult Index(FormCollection coll)
        {
            List<MCart> lstCart = (List<MCart>)Session["cart"];
            List<MCart> lstTmp = new List<MCart>();
            for (int i = 0; i < lstCart.Count(); i++)
            {
                if (coll[i.ToString() + ".del"] == null && coll[i.ToString() + ".txtSoLuong"] != "0")
                {
                    int soLuong = Convert.ToInt32(coll[i.ToString() + ".txtSoLuong"]);
                    lstCart[i].soLuong = soLuong;
                    lstTmp.Add(lstCart[i]);
                }
            }
            if (lstTmp.Count() == 0)
            {
                Session.Remove("cart");
                return Redirect("/");
            }
            else
            {
                Session["cart"] = lstTmp;
                return Redirect(Request.Url.ToString());
            }
        }

        // add product to cart:
        [HttpPost]
        public PartialViewResult ThemSanPhamVaoGioHang(FormCollection coll)
        {
            try
            {
                int idPro = Convert.ToInt32(coll["idPro"]);
                string size = coll["size"];
                int soLuong = Convert.ToInt32(coll["soLuong"]);
                MCart m = new MCart { idPro = idPro, size = size, soLuong = soLuong };
                List<MCart> listCart = new List<MCart>();
                if (Session["cart"] != null)
                {
                    bool flag = false;
                    listCart = (List<MCart>)Session["cart"];
                    foreach (MCart mc in listCart)
                    {
                        if (mc.idPro == idPro && mc.size == size)
                        {
                            mc.soLuong += soLuong;
                            flag = true;
                            break;
                        }
                    }
                    if (flag == false)
                    {
                        listCart.Add(m);
                    }
                }
                else
                {
                    listCart.Add(m);
                }
                Session["cart"] = listCart;
                ViewBag.error = "Sảm phẩm đã được thêm vào giỏ hàng!";
                return PartialView();
            }
            catch (Exception ex)
            {
                ViewBag.error = ex.Message;
                return PartialView();
            }

        }

        // count product in cart:
        public PartialViewResult CountProductCart()
        {
            int countCart = 0;
            if (Session["cart"] != null)
            {
                List<MCart> lst = (List<MCart>)Session["cart"];
                countCart = lst.Count();
            }
            ViewBag.count = countCart;
            return PartialView();
        }


    }
}
