using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Models;
using FMStyle.Config;

namespace FMStyle.Controllers
{
    public class PublicSanPhamController : Controller
    {
        //database context:
        private DBPublicFMStyleDataContext db = new DBPublicFMStyleDataContext();

        // get khuyen mai:
        private int GetKhuyenMai() {
            return db.khuyenmais.Where(x => x.id_khuyenmai == Conf.ID_PROMOTION).Select(x => x.giatri).Single();
        }
        
        // GET: /PublicSanPham/
        public ActionResult Index()
        {
            return View();
        }

        // ajax search product:
        public PartialViewResult AjaxSearch(FormCollection coll) {
            string key = coll["key"].ToString();
            int id = Convert.ToInt32(coll["id"]);
            ViewBag.key = key;
            ViewBag.idCat = id;
            ViewBag.khuyenMai = this.GetKhuyenMai();
            List<MSanPham> lst = new List<MSanPham>();
            if (id > 0)
            {
                lst = db.san_phams.Where(x => x.id_danhmuc == id).Where(x => x.ten_sanpham.Contains(key)).OrderByDescending(x => x.id_sanpham).Skip(0).Take(Conf.RESULT_SEARCH_PUBLIC)
                    .Select(x => new MSanPham { id_sanpham = x.id_sanpham, gia = x.gia, hinhanh = x.hinhanh, khuyenmai = x.khuyenmai, ten_sanpham = x.ten_sanpham }).ToList();
            }
            else
            {
                lst = db.san_phams.Where(x => x.ten_sanpham.Contains(key)).OrderByDescending(x => x.id_sanpham).Skip(0).Take(Conf.RESULT_SEARCH_PUBLIC)
                    .Select(x => new MSanPham { id_sanpham = x.id_sanpham, gia = x.gia, hinhanh = x.hinhanh, khuyenmai = x.khuyenmai, ten_sanpham = x.ten_sanpham }).ToList();
            }
            return PartialView(lst);
        }


        // search product:
        [HttpGet]
        public ActionResult Search(string key = "", int id = 0, int page = 0) {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Tìm kiếm từ khóa \"" + key + "\"";
            ViewBag.key = key;
            ViewBag.idCat = id;
            ViewBag.page = page;
            int sum = 0;
            List<MSanPham> sp = null;
            if (id > 0)
            {
                sp = db.san_phams.Where(x => x.id_danhmuc == id).Where(x => x.ten_sanpham.Contains(key)).Skip(page * Conf.TAKE_ROWS_PUBLIC).Take(Conf.TAKE_ROWS_PUBLIC)
                    .Select(x => new MSanPham { gia = x.gia, hinhanh = x.hinhanh, id_sanpham = x.id_sanpham, khuyenmai = x.khuyenmai, ten_sanpham = x.ten_sanpham }).ToList();
                sum = db.san_phams.Where(x => x.id_danhmuc == id).Where(x => x.ten_sanpham.Contains(key)).Count();
            }
            else {
                sp = db.san_phams.Where(x => x.ten_sanpham.Contains(key)).Skip(page * Conf.TAKE_ROWS_PUBLIC).Take(Conf.TAKE_ROWS_PUBLIC)
                    .Select(x => new MSanPham { gia = x.gia, hinhanh = x.hinhanh, id_sanpham = x.id_sanpham, khuyenmai = x.khuyenmai, ten_sanpham = x.ten_sanpham }).ToList();
                sum = db.san_phams.Where(x => x.ten_sanpham.Contains(key)).Count();
            }
            ViewBag.sum = sum;
            return View(sp);
        }

        // product by id Category:
        [HttpGet]
        public ActionResult Category(int idCat, int page = 0) {
            var sp = db.san_phams.Where(x => x.id_danhmuc == idCat).OrderByDescending(x => x.id_sanpham).Skip(page * Conf.TAKE_ROWS_PUBLIC).Take(Conf.TAKE_ROWS_PUBLIC).ToList();
            ViewBag.Title = Conf.TITLE_PUBLIC + " - " + sp[0].danhmuc.ten_danhmuc;
            ViewBag.sum = db.san_phams.Where(x => x.id_danhmuc == idCat).Count();
            ViewBag.page = page;
            return View(sp);
        }

        // product detailt:
        [HttpGet]
        public ActionResult ChiTietSanPham(string title, int id)
        {
            ViewBag.khuyenMai = this.GetKhuyenMai();
            var sp = db.san_phams.Where(x => x.id_sanpham == id).Single();
            ViewBag.Title = Conf.TITLE_PUBLIC + " - " + sp.ten_sanpham;
            return View(sp);
        }

        //product containt:
        [HttpPost]
        public string NoiDungSanPham(FormCollection coll)
        {
            int id = Convert.ToInt32(coll["id"]);
            string ct = db.san_phams.Where(x => x.id_sanpham == id).Select(x => x.tt_chitiet).Single();
            return ct;
        }

        // product id category:
        [HttpPost]
        public PartialViewResult SanPhamLienQuan(FormCollection coll) {
            int idCat = Convert.ToInt32(coll["idCat"]);
            int idPro = Convert.ToInt32(coll["idPro"]);
            ViewBag.khuyenMai = this.GetKhuyenMai();
            List<san_pham> sp = db.san_phams.Where(x => x.id_danhmuc == idCat).Where(x=>x.id_sanpham != idPro).OrderByDescending(x=>x.id_sanpham).ToList();
            return PartialView(sp);
        }

        // sam pham moi:
        public ActionResult SanPhamMoi(int page = 0) {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Sản phẩm mới";
            var sp = db.san_phams.OrderByDescending(x => x.id_sanpham).Skip(page*Conf.TAKE_ROWS_PRO_PUBLIC).Take(Conf.TAKE_ROWS_PRO_PUBLIC).ToList();
            ViewBag.count = db.san_phams.Count();
            ViewBag.current = page;
            return View(sp);
        }

        // sam ban chay:
        public ActionResult SanPhamBanChay(int page = 0)
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Sản phẩm bán chạy";
            int spCount = (from d in db.dat_hang_details
                              group d by d.id_sanpham).Count();
            var spMuaNhieu = (from d in db.dat_hang_details
                              group d by d.id_sanpham into v
                              select new { id = v.Select(x => x.id_sanpham).FirstOrDefault(), count = v.Count() }).OrderByDescending(x => x.count).Skip(0).Take(Conf.TAKE_ROWS_PRO_PUBLIC);
            List<san_pham> listMuaNhieu = new List<san_pham>();
            foreach (var item in spMuaNhieu)
            {
                san_pham t = db.san_phams.Where(x => x.id_sanpham == item.id).Single();
                listMuaNhieu.Add(t);
            }

            ViewBag.count = spCount;
            ViewBag.current = page;
            return View(listMuaNhieu);
        }
        
        // sam pham khuyen mai:
        public ActionResult SanPhamKhuyenMai(int page = 0)
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Sản phẩm khuyến mãi";
            var sp = db.san_phams.Where(x=>x.khuyenmai==true).OrderByDescending(x => x.id_sanpham).Skip(page * Conf.TAKE_ROWS_PRO_PUBLIC).Take(Conf.TAKE_ROWS_PRO_PUBLIC).ToList();
            ViewBag.count = db.san_phams.Where(x => x.khuyenmai == true).Count();
            ViewBag.current = page;
            return View(sp);
        }

    }
}
