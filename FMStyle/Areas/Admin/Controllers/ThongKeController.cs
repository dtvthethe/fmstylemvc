using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;
using FMStyle.Libraries;
using FMStyle.Areas.Admin.Models;

namespace FMStyle.Areas.Admin.Controllers
{
    public class ThongKeController : Controller
    {
        public ThongKeController() {
            Login l = new Login();
            l.RedirectPacge();
        }
        //database context:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        // get promotion:
        private int GetPromotion() {
            return db.khuyenmais.Where(x => x.id_khuyenmai == Conf.ID_PROMOTION).Select(x=>x.giatri).Single();
        }

        // GET: /ThongKe/
        public ActionResult Index()
        {
            ViewBag.Title =Conf.TITLE + "Thống kê";
            return View();
        }

        // doanh thu:
        public PartialViewResult DoanhThu() {
            var datHang = db.dat_hangs.OrderByDescending(x => x.ngaydathang).Where(x=>x.trang_thai == true).ToList();
            List<MDonHang> listDH = new List<MDonHang>();
            decimal tongTien = 0;
            foreach (var item in datHang)
            {
                decimal gia = 0;
                foreach (var de in item.dat_hang_details)
                {
                    if (de.san_pham.khuyenmai == true)
                    {
                        decimal km = (de.san_pham.gia * (100 - this.GetPromotion())) / 100;
                        gia += de.soluong * km;
                    }
                    else
                        gia += de.soluong * de.san_pham.gia;
                }
                listDH.Add(new MDonHang { gia = gia, id = item.id_dathang, idUser = item.id_user, ngayDat = item.ngaydathang, ten = item.nguoidung.hoten });
                tongTien += gia;
            }
            List<object> lst = new List<object>();
            lst.Add(listDH);
            lst.Add(tongTien);
            return PartialView(lst);
        }

        // don hang:
        public PartialViewResult DonHang()
        {
            var datHang = db.dat_hangs.OrderByDescending(x => x.ngaydathang).ToList();
            List<MDonHang> listDH = new List<MDonHang>();
            decimal tongTien = 0;
            foreach (var item in datHang) {
                decimal gia = 0;
                foreach (var de in item.dat_hang_details) {
                    if (de.san_pham.khuyenmai == true) {
                        decimal km = (de.san_pham.gia * (100 - this.GetPromotion())) / 100;
                        gia += de.soluong * km;
                    }
                    else
                        gia += de.soluong * de.san_pham.gia;
                }
                listDH.Add(new MDonHang { gia = gia, id = item.id_dathang, idUser = item.id_user, ngayDat = item.ngaydathang, ten = item.nguoidung.hoten });
                tongTien += gia;
            }
            List<object> lst = new List<object>();
            lst.Add(listDH);
            lst.Add(tongTien);
            return PartialView(lst);
        }

        // ton kho[x]
        public PartialViewResult TonKho()
        {
            ViewBag.kk = "day la ton kho";
            return PartialView();
        }

        // mua nhieu
        public PartialViewResult MuaNhieu()
        {
            var results = (from d in db.dat_hang_details group d by d.id_sanpham into v
                          select new { id = v.Select(x => x.id_sanpham).FirstOrDefault(), count = v.Count() }).OrderByDescending(x => x.count).Take(Conf.COUNT);
            List<MMuaNhieu> sp = new List<MMuaNhieu>();
            foreach (var item in results) {
                MMuaNhieu t = db.san_phams.Where(x => x.id_sanpham == item.id).Select(s => new MMuaNhieu { id = s.id_sanpham, gia = s.gia, hinhanh= s.hinhanh, luotMua = item.count, ten = s.ten_sanpham}).Single();
                sp.Add(t);
            }
            return PartialView(sp);
        }
        // dat hang(chua thanh toan)
        public PartialViewResult DatHang()
        {
            var orders = db.dat_hangs.Where(x => x.trang_thai == false).OrderByDescending(x => x.id_dathang).ToList();
            return PartialView(orders);
        }
        // khuyen mai
        public PartialViewResult KhuyenMai()
        {
            var sp = db.san_phams.Where(x => x.khuyenmai == true).OrderByDescending(x=>x.id_sanpham).ToList();
            return PartialView(sp);
        }
    }
}