using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Areas.Admin.Models;
using FMStyle.Config;
using FMStyle.Libraries;

namespace FMStyle.Areas.Admin.Controllers
{
    public class PhuongThucController : Controller
    {
        public PhuongThucController() {
            Login l = new Login();
            l.RedirectPacge();
        }

        // connect database:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();
        // get data from table phuong_thuc_thanh_toan
        private List<phuong_thuc_thanh_toan> GetData() {
            return db.phuong_thuc_thanh_toans.ToList();
        }

        // GET: /PhuongThuc/
        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE + "Phương thức thanh toán";
            var pt = this.GetData();
            return View(pt);
        }

        // delete from table phuong_thuc_thanh_toan:
        [HttpPost]
        public ActionResult Index(FormCollection coll)
        {
            string mess = "";
            ViewBag.Title = Conf.TITLE + "Phương thức thanh toán";
            List<phuong_thuc_thanh_toan> listPT = this.GetData();
            for (int i = 0; i < listPT.Count; i++) {
                if (coll[i.ToString()] != null) {
                    phuong_thuc_thanh_toan pt = db.phuong_thuc_thanh_toans.Where(x => x.id_pt == int.Parse(coll[i.ToString()])).Single();
                    List<dat_hang> listOrder = db.dat_hangs.Where(x => x.id_pt == pt.id_pt).ToList();
                    foreach (dat_hang dh in listOrder)
                    {
                        List<dat_hang_detail> listOrderDetailt = db.dat_hang_details.Where(id => id.id_dathang == dh.id_dathang).ToList();
                        db.dat_hang_details.DeleteAllOnSubmit(listOrderDetailt);
                    }
                    db.dat_hangs.DeleteAllOnSubmit(listOrder);
                    db.phuong_thuc_thanh_toans.DeleteOnSubmit(pt);
                }
            }
            try
            {
                db.SubmitChanges();
                mess = Lib.messenger(0, "Xóa thành công!");
            }
            catch (Exception ex) {
                mess = Lib.messenger(2, "Xóa thất bại! "+ex.ToString());
            }
            ViewBag.error = mess;
            return View(this.GetData());
        }

        // insert to table phuong_thuc_thanh_toan:
        public ActionResult Add() {
            ViewBag.Title = Conf.TITLE + "Thêm phương thức thanh toán";
            return View();
        }

        // insert to table phuong_thuc_thanh_toan:
        [HttpPost,ValidateInput(false)]
        public ActionResult Add(FormCollection coll)
        {
            string mess = "";
            ViewBag.Title = Conf.TITLE + "Thêm phương thức thanh toán";
            try
            {
                phuong_thuc_thanh_toan pt = new phuong_thuc_thanh_toan();
                pt.ten_phuongthuc = coll["txtTen"].ToString();
                pt.chitiet = coll["txtChiTiet"].ToString();
                db.phuong_thuc_thanh_toans.InsertOnSubmit(pt);
                db.SubmitChanges();
                mess = Lib.messenger(0, "Thêm thành công!");
            }
            catch (Exception ex) {
                mess = Lib.messenger(2, "Thêm thất bại!");
            }
            ViewBag.error = mess;
            return View();
        }
        // update to table phuong_thuc_thanh_toan:
        public ActionResult Update(int id)
        {
            var pt = db.phuong_thuc_thanh_toans.Where(x => x.id_pt == id).Single();
            ViewBag.Title = Conf.TITLE + "Thông tin phương thức "+pt.ten_phuongthuc;
            return View(pt);
        }

        // update to table phuong_thuc_thanh_toan:
        [HttpPost,ValidateInput(false)]
        public ActionResult Update(FormCollection coll)
        {
            string mess = "";
            int id = Convert.ToInt32(coll["hdId"].ToString());
            var pt = db.phuong_thuc_thanh_toans.Where(x => x.id_pt == id).Single();
            try
            {
                pt.ten_phuongthuc = coll["txtTen"].ToString();
                pt.chitiet = coll["txtChiTiet"].ToString();
                db.SubmitChanges();
                mess = Lib.messenger(0, "Lưu thành công!");
            }
            catch (Exception ex) {
                mess = Lib.messenger(2, "Lưu thất bại!");
            }
            ViewBag.error = mess;
            ViewBag.Title = Conf.TITLE + "Thông tin phương thức " + pt.ten_phuongthuc;
            return View(pt);
        }

    }
}
