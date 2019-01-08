using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;
using FMStyle.Models;

namespace FMStyle.Controllers
{
    public class TrangChuController : Controller
    {
        //database context:
        private DBPublicFMStyleDataContext db = new DBPublicFMStyleDataContext();
        
        // GET: /TrangChu/
        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC;
            var slide = db.slides.OrderBy(x=>x.vitri).ToList();
            var qc = db.quangcaos.Where(x => x.trangthai == true).Single();
            var spMoi = db.san_phams.OrderByDescending(x => x.id_sanpham).Skip(0).Take(Conf.TAKE_ROWS_PUBLIC).ToList();
            int khuyenMai = db.khuyenmais.Where(x => x.id_khuyenmai == Conf.ID_PROMOTION).Select(x => x.giatri).Single();
            var spKM = db.san_phams.Where(x=>x.khuyenmai == true).OrderByDescending(x => x.id_sanpham).Skip(0).Take(Conf.TAKE_ROWS_PUBLIC).ToList();
            var spMuaNhieu = (from d in db.dat_hang_details
                             group d by d.id_sanpham into v
                             select new { id = v.Select(x => x.id_sanpham).FirstOrDefault(), count = v.Count() }).OrderByDescending(x => x.count).Skip(0).Take(Conf.TAKE_ROWS_PUBLIC);
            List<san_pham> listMuaNhieu = new List<san_pham>();
            foreach (var item in spMuaNhieu)
            {
                //san_pham t = db.san_phams.Where(x => x.id_sanpham == item.id).Select(s =>new san_pham { id_sanpham = s.id_sanpham, gia = s.gia, hinhanh = s.hinhanh, khuyenmai = s.khuyenmai}).Single();
                san_pham t = db.san_phams.Where(x => x.id_sanpham == item.id).Single();
                listMuaNhieu.Add(t);
            }

            List<object> lst = new List<object>();
            lst.Add(slide);
            lst.Add(qc);
            lst.Add(spMoi);
            lst.Add(khuyenMai);
            lst.Add(spKM);
            lst.Add(listMuaNhieu);
            return View(lst);
        }


        // error:
        public ActionResult Error() {
            ViewBag.Title = Conf.TITLE_PUBLIC +" - Error";
            return View();
        }
    }
}
