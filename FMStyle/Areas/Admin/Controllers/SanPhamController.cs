using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Areas.Admin.Models;
using FMStyle.Config;
using FMStyle.Libraries;
using System.IO;

namespace FMStyle.Areas.Admin.Controllers
{
    public class SanPhamController : Controller
    {
        public SanPhamController() {
            Login l = new Login();
        }

        // connect to datacase:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        // load category:
        public List<danhmuc> LoadDahMuc()
        {
            List<danhmuc> list = new List<danhmuc>();
            var danhMuc = db.danhmucs.ToList();
            foreach (var item in danhMuc)
            {
                if (item.groupdanhmuc.ToString().Split(Conf.CHAR_PLIT)[1].Equals("2"))
                    list.Add(item);
            }
            return list;
        }

        // GET: /SanPham/
        public ActionResult Index(int page = 0)
        {
            var sanPham = db.san_phams.OrderByDescending(x => x.id_sanpham).Skip(page * Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();
            ViewBag.DanhMuc = this.LoadDahMuc();
            ViewBag.paging = Lib.pagingPage("/admin/san-pham", db.san_phams.Count(), page);
            ViewBag.Title = Conf.TITLE + "Danh sách sản phẩm";
            return View(sanPham);
        }

        // POST: search and update san_pham:
        [HttpPost]
        public ActionResult Index(FormCollection coll)
        {
            // update khuyen_mai and delete product:
            if (Request["btnCapNhat"] != null)// button Cap_Nhat click
            {
                for (int i = 0; i < Conf.TAKE_ROWS; i++)
                {
                    if (coll[i.ToString() + ".del"] != null)//del
                    {
                        // delete row in san_pham table:
                        var sp = db.san_phams.Where(x => x.id_sanpham == Convert.ToInt32(coll[i.ToString() + ".del"])).Single();
                        // delete constaint dat_hang_detailt:
                        var sp_detailt = db.dat_hang_details.Where(x => x.id_sanpham == sp.id_sanpham).ToList();
                        db.dat_hang_details.DeleteAllOnSubmit(sp_detailt);
                        // delete file in ~/uploads director 
                        if (sp.hinhanh != null)
                        {
                            string path = Path.Combine(Server.MapPath("~/uploads/") + sp.hinhanh);
                            if (System.IO.File.Exists(path))
                                System.IO.File.Delete(path);
                        }
                        db.san_phams.DeleteOnSubmit(sp);
                        //db.SubmitChanges();
                    }
                    else
                    {// update promotion check box
                        if (coll[i.ToString()] != null)
                        {
                            var sp = db.san_phams.Where(x => x.id_sanpham == Convert.ToInt32(coll[i.ToString()])).Single();
                            if (coll[i.ToString() + ".up"] != null)
                                sp.khuyenmai = true;
                            else
                                sp.khuyenmai = false;
                            //db.SubmitChanges();
                        }
                    }
                }
                db.SubmitChanges();
                return Redirect(Request.UrlReferrer.ToString());
            }
            else// button Tim_Kiem click
            {
                string key = coll["txtTimKiem"];
                int cat = Convert.ToInt32(coll["cmbDanhMuc"]);
                if (key == "")
                {
                    return Redirect("/admin/san-pham.html");
                }
                else
                {
                    return Redirect("/admin/san-pham-tim-kiem-" + key + "-" + cat + ".html");
                }
            }
        }

        // GET: san_pham view by danh  muc:
        [HttpGet]
        public ActionResult ViewBy(string title, int id, int page = 0)
        {
            ViewBag.DanhMuc = this.LoadDahMuc();
            ViewBag.idCat = id;
            ViewBag.Title = Conf.TITLE + this.LoadDahMuc()[id].ten_danhmuc;
            ViewBag.paging = Lib.pagingPage("/admin/san-pham-danh-muc-" + title + "-" + id, db.san_phams.Where(x => x.id_danhmuc == id).Count(), page);
            var sanPham = db.san_phams.Where(x=>x.id_danhmuc == id).OrderByDescending(x=>x.id_sanpham).Skip(page * Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();
            return View("~/Areas/Admin/Views/SanPham/Index.cshtml", sanPham);
        }

        // GET: search san_pham:
        [HttpGet]
        public ActionResult TimKiem(string key, int categoty, int page = 0)
        {
            var sanPham = new List<san_pham>();
            string str = "";
            if (categoty == Conf.NONE_CATAGORY)//san-pham/a-0.html
            {
                sanPham = db.san_phams.Where(x=>x.ten_sanpham.Contains(key)).OrderByDescending(x=>x.id_sanpham).Skip(page*Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();
                str = Lib.pagingPage("/admin/san-pham-tim-kiem-" + key + "-" + categoty, db.san_phams.Where(x => x.ten_sanpham.Contains(key)).Count(), page);
            }
            else
            {
                sanPham = (from sp in db.san_phams where sp.id_danhmuc == categoty && sp.ten_sanpham.Contains(key) orderby sp.id_sanpham descending select sp).Skip(page * Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();
                str = Lib.pagingPage("/admin/san-pham-tim-kiem-" + key + "-" + categoty, db.san_phams.Where(x => x.id_danhmuc == categoty).Where(x => x.ten_sanpham.Contains(key)).Count(), page);
            }
            ViewBag.paging = str;
            ViewBag.key = key;
            ViewBag.idTim = categoty;
            ViewBag.DanhMuc = this.LoadDahMuc();
            ViewBag.Title = Conf.TITLE + "Tìm kiếm  " + key;
            return View("~/Areas/Admin/Views/SanPham/Index.cshtml", sanPham);
        }


        // add product:
        public ActionResult AddProduct()
        {
            ViewBag.DanhMuc = this.LoadDahMuc();
            ViewBag.Title = Conf.TITLE + "Thêm mới sản phẩm";
            return View();
        }

        //POST: add new Product:
        [HttpPost, ValidateInput(false)]
        public ActionResult AddProduct(FormCollection coll, HttpPostedFileBase file)
        {
            ViewBag.Title = Conf.TITLE + "Thêm mới sản phẩm";
            string txtTen = coll["txtTen"];
            string txtSoLuong = coll["txtSoLuong"];
            string cmbDanhMuc = coll["cmbDanhMuc"];
            string txtThongTinChiTiet = coll["txtThongTinChiTiet"];
            string txtGia = coll["txtGia"];
            string chkKhuyenMai = coll["chkKhuyenMai"];
            string nameFile = "";
            DateTime dt = DateTime.Now;
            bool insert, upload = true;
            string messesnger = "";
            ViewBag.DanhMuc = this.LoadDahMuc();

            if (file != null && file.ContentLength > 0) { 
                try
                {
                    string path = Path.Combine(Server.MapPath("~/uploads"));
                    nameFile = dt.Year + "-" + dt.Month + "-" + dt.Day + "-" + dt.Hour + "-" + dt.Minute + "-" + dt.Second + "-" + dt.Millisecond + Path.GetExtension(file.FileName);
                    //file.SaveAs(path);
                    file.SaveAs(Path.Combine(path, nameFile));
                    ViewBag.file = "File uploaded successfully!";
                    upload = true;
                }
                catch (Exception ex)
                {
                    upload = false;
                    ViewBag.file = "ERROR:" + ex.Message.ToString();
                }
            }
            

            // insert:
            if (upload == true)
            {
                try
                {
                    san_pham sp = new san_pham();
                    sp.gia = Decimal.Parse(txtGia);
                    sp.hinhanh = nameFile;
                    sp.id_danhmuc = int.Parse(cmbDanhMuc);
                    sp.khuyenmai = Boolean.Parse(chkKhuyenMai);
                    sp.ngaydang = DateTime.Now;
                    sp.soluong = int.Parse(txtSoLuong);
                    sp.ten_sanpham = txtTen;
                    sp.tt_chitiet = txtThongTinChiTiet;
                    db.san_phams.InsertOnSubmit(sp);
                    db.SubmitChanges();
                    insert = true;
                }
                catch (Exception ex)
                {
                    insert = false;
                    messesnger += Lib.messenger(2, "ERROR: " + ex);
                }

                if (insert == true && upload == true)
                {
                    messesnger = Lib.messenger(0, "Thêm sản phẩm thành công");
                }
            }


            ViewBag.error = messesnger;
            return View();
        }

        // product detailt , edit Product:
        [HttpGet]
        public ActionResult EditProduct(string title, int id)
        {
            ViewBag.DanhMuc = this.LoadDahMuc();
            var sanpham = (from sp in db.san_phams where sp.id_sanpham == id select sp).Single();
            ViewBag.Title = Conf.TITLE + "Thông tin sản phẩm - " + sanpham.ten_sanpham;
            return View(sanpham);
        }

        //POST: edit  Product:  thong-tin-san-pham-san-pham-moi-241.html
        [HttpPost, ValidateInput(false)]
        public ActionResult EditProduct(FormCollection coll, HttpPostedFileBase file)
        {
            int id = Convert.ToInt32(coll["idHd"].ToString());
            string title = Lib.VietNamToEnglish(coll["txtTen"].ToString());

            string txtTen = coll["txtTen"];
            string txtSoLuong = coll["txtSoLuong"];
            string cmbDanhMuc = coll["cmbDanhMuc"];
            string txtThongTinChiTiet = coll["txtThongTinChiTiet"];
            string txtGia = coll["txtGia"];
            string chkKhuyenMai = coll["chkKhuyenMai"];
            DateTime dt = DateTime.Now;
            string nameFile = "";
            bool tf = false;
            ViewBag.DanhMuc = this.LoadDahMuc();
            var sanpham = (from sp in db.san_phams where sp.id_sanpham == id select sp).Single();
            ViewBag.Title = Conf.TITLE + "Thông tin sản phẩm - " + sanpham.ten_sanpham;
            if (file != null && file.ContentLength > 0)
            {
                try
                {
                    string path = Path.Combine(Server.MapPath("~/uploads"));
                    nameFile = dt.Year + "-" + dt.Month + "-" + dt.Day + "-" + dt.Hour + "-" + dt.Minute + "-" + dt.Second + "-" + dt.Millisecond + Path.GetExtension(file.FileName);
                    file.SaveAs(Path.Combine(path, nameFile));
                    ViewBag.file = "File uploaded successfully!";
                    tf = true;
                }
                catch (Exception ex)
                {
                    tf = false;
                    ViewBag.file = "ERROR:" + ex.Message.ToString();
                }
            }

            try
            {
                san_pham sp = db.san_phams.Where(x => x.id_sanpham == id).Single();
                sp.gia = Decimal.Parse(txtGia);
                if (tf == true)
                    sp.hinhanh = nameFile;
                sp.id_danhmuc = int.Parse(cmbDanhMuc);
                sp.khuyenmai = Boolean.Parse(chkKhuyenMai);
                sp.ngaydang = DateTime.Now;
                sp.soluong = int.Parse(txtSoLuong);
                sp.ten_sanpham = txtTen;
                sp.tt_chitiet = txtThongTinChiTiet;
                db.SubmitChanges();
                ///return Redirect("/thong-tin-san-pham-" + title + "-" + coll["idHd"] + ".html");
                ViewBag.error = Lib.messenger(0, "Cập nhật thành công!");
                return View(sanpham);
            }
            catch (Exception ex)
            {
                ViewBag.error = Lib.messenger(2, "Cập nhật thất bại!");
                return View(sanpham);
            } 
        }

        // delete file:
        public PartialViewResult DeleteFile(FormCollection coll) {
            var sp = db.san_phams.Where(x => x.id_sanpham == Convert.ToInt32(coll["id"])).Single();
            if (sp.hinhanh != null)
            {
                string path = Path.Combine(Server.MapPath("~/uploads/") + sp.hinhanh);
                if (System.IO.File.Exists(path))
                    System.IO.File.Delete(path);
            }
            sp.hinhanh = "";
            db.SubmitChanges();
            return PartialView();
        }


        // ajax LoadSearch
        [HttpPost]
        public PartialViewResult AjaxLoadSearch(FormCollection coll)
        {
            string key = coll["key"];
            int id = Convert.ToInt32(coll["id"]);
			List<object> list = new List<object>();
			list.Add(key);
            list.Add(id);
            if (id > 0)
            {
                var sp = db.san_phams.Where(z => z.id_danhmuc == id).Where(x => x.ten_sanpham.Contains(key)).OrderByDescending(x => x.id_sanpham).Take(Conf.RESULT_SEARCH).ToList();
                list.Add(sp);
				return PartialView(list);
            }
            else
            {
                var sp = db.san_phams.Where(x => x.ten_sanpham.Contains(key)).OrderByDescending(x => x.id_sanpham).Take(Conf.RESULT_SEARCH).ToList();
                list.Add(sp);
				return PartialView(list);
            }
        }
    }
}
