using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;
using FMStyle.Areas.Admin.Models;
using FMStyle.Libraries;

namespace FMStyle.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        public UserController() {
            Login l = new Login();
           // l.redirectPacge();
        }

        //connect database:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        // get role:
        private List<role> ListRole()
        {
            return db.roles.ToList();
        }

        // load data:
        private List<object> LoadData(int page)
        {
            List<object> list = new List<object>();
            var nguoiDung = db.nguoidungs.OrderByDescending(x => x.id_user).Skip(page * Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();
            list.Add(nguoiDung);
            list.Add(this.ListRole());
            return list;
        }

        // GET: /User/
        public ActionResult Index(int page = 0)
        {
            ViewBag.Title = Conf.TITLE + "Người dùng";
            int count = db.nguoidungs.Count();
            string paging = Lib.pagingPage("/admin/nguoi-dung", count, page);
            ViewBag.paging = paging;
            return View(this.LoadData(page));
        }

        // Search: /User/
        [HttpPost]
        public ActionResult Index(FormCollection coll)
        {
            string aa = "";
            if (coll["btnTimKiem"] != null)
            {
                if (coll["txtTimKiem"].ToString() != "")
                {
                    if (Convert.ToInt32(coll["ddlTimKiem"]) > 0)
                    {
                        return Redirect("/admin/nguoi-dung-tim-kiem-" + coll["txtTimKiem"] + "-role-" + coll["ddlTimKiem"] + ".html");
                    }
                    else
                    {
                        return Redirect("/admin/nguoi-dung-tim-kiem-" + coll["txtTimKiem"] + ".html");
                    }
                }
                else
                {
                    return Redirect("/admin/nguoi-dung.html");
                }
            }
            else {
                for (int i = 0; i < Conf.TAKE_ROWS; i++) {
                    if (coll[i.ToString() + ".del"] != null) {
                        // xoa user:
                        nguoidung us = db.nguoidungs.Where(x=>x.id_user == Convert.ToInt32(coll[i.ToString() + ".del"])).Single();

                        // xoa dat hang:
                        List<dat_hang> listDangHang = db.dat_hangs.Where(x=>x.id_user == us.id_user).ToList();
                        foreach (dat_hang dh in listDangHang) {
                            // xoa dat hang detailt:
                            List<dat_hang_detail> dsDatHang_detailt = db.dat_hang_details.Where(x => x.id_dathang == dh.id_dathang).ToList();
                            db.dat_hang_details.DeleteAllOnSubmit(dsDatHang_detailt);
                        }
                        db.dat_hangs.DeleteAllOnSubmit(listDangHang);
                        // xoa view lien he:
                        List<view_lienhe> listViewLienHe = db.view_lienhes.Where(x => x.id_user == us.id_user).ToList();
                        db.view_lienhes.DeleteAllOnSubmit(listViewLienHe);
                        // xoa nguoi dung
                        db.nguoidungs.DeleteOnSubmit(us);

                        // neu xoa nguoi dung dang dang nhap thi thoat:
                        if (us.id_user == ((MLogin)Session["user"]).id) {
                            Session.Remove("user");
                            Redirect("/admin/dang-nhap-he-thong.html");
                        }
                    }
                }
                ViewBag.error = Lib.messenger(2, "Thao tác đã được cập nhật");
                db.SubmitChanges();
                return Redirect("/admin/nguoi-dung.html");
            }
        }

        // Search: /User/
        [HttpGet]
        public ActionResult Search(string key, int page = 0)
        {
            ViewBag.Title = Conf.TITLE + "Người dùng tìm kiếm " + key;
            List<nguoidung> us = db.nguoidungs.Where(x => x.hoten.Contains(key)).OrderByDescending(x => x.id_user).Skip(page * Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();
            int count = db.nguoidungs.Where(x => x.hoten.Contains(key)).Count();
            string paging = Lib.pagingPage("/admin/nguoi-dung-tim-kiem-" + key, count, page);
            ViewBag.paging = paging;
            List<object> list = new List<object>();
            list.Add(us);
            list.Add(this.ListRole());
            ViewBag.key = key;
            return View("~/Areas/Admin/Views/User/Index.cshtml", list);
        }

        // Search: /User/
        [HttpGet]
        public ActionResult SearchByRole(string key, int role, int page = 0)
        {
            ViewBag.Title = Conf.TITLE + "Người dùng tìm kiếm " + key;
            List<nguoidung> us = db.nguoidungs.Where(x => x.role == role).Where(x => x.hoten.Contains(key)).OrderByDescending(x => x.id_user).Skip(page * Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();
            int count = db.nguoidungs.Where(x => x.role == role).Where(x => x.hoten.Contains(key)).Count();
            string paging = Lib.pagingPage("/admin/nguoi-dung-tim-kiem-" + key + "-role-" + role, count, page);
            ViewBag.paging = paging;
            List<object> list = new List<object>();
            list.Add(us);
            list.Add(this.ListRole());
            ViewBag.key = key;
            return View("~/Areas/Admin/Views/User/Index.cshtml", list);
        }

        // GET: /User by role/
        public ActionResult Role(string title, int role = 0, int page = 0)
        {
            if (role > 0)
            {
                List<object> list = new List<object>();
                var nguoiDung = db.nguoidungs.Where(x => x.role == role).OrderByDescending(x => x.id_user).Skip(page * Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();
                list.Add(nguoiDung);
                list.Add(this.ListRole());
                ViewBag.role = role;
                ViewBag.Title = Conf.TITLE + "Người dùng " + this.ListRole().Where(x => x.id_role == role).Single().role1;
                int count = db.nguoidungs.Where(x => x.role == role).Count();
                string paging = Lib.pagingPage("/admin/nguoi-dung-role-" + title + "-" + role, count, page);
                ViewBag.paging = paging;
                return View("~/Areas/Admin/Views/User/Index.cshtml", list);
            }
            else
                return Redirect("/admin/nguoi-dung.html");
        }

        // ajax LoadSearch
        [HttpPost]
        public PartialViewResult AjaxLoadSearch(FormCollection coll)
        {

            List<object> list = new List<object>();
            list.Add(coll["key"].ToString());
            list.Add(Convert.ToInt32(coll["idRole"]));
            if (Convert.ToInt32(coll["idRole"]) > 0)
            {
                var us = db.nguoidungs.Where(a => a.role == Convert.ToInt32(coll["idRole"])).Where(x => x.hoten.Contains(coll["key"])).OrderByDescending(x => x.id_user).Take(Conf.TAKE_ROWS).ToList();
                list.Add(us);
                return PartialView(list);
            }
            else
            {
                var us = db.nguoidungs.Where(x => x.hoten.Contains(coll["key"])).Take(Conf.TAKE_ROWS).OrderByDescending(x => x.id_user).ToList();
                list.Add(us);
                return PartialView(list);
            }
        }

        // add new User:
        public ActionResult Add() {
            ViewBag.Title = Conf.TITLE+"Thêm người dùng";
            return View(this.ListRole());
        }

        // add new User:
        [HttpPost]
        public ActionResult Add(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE + "Thêm người dùng";
			string txtTK = coll["txtTK"].ToString();
			string txtMK = coll["txtMK1"].ToString();
			string txtMK2 = coll["txtMK2"].ToString();
            string txtHoTen = coll["txtHoTen"].ToString();
			string txtSDT = coll["txtSDT"].ToString();
			string txtDiaChi = coll["txtDiaChi"].ToString();
			string txtEmail = coll["txtEmail"].ToString();
			int cmbRole = Convert.ToInt32(coll["cmbRole"].ToString());
            string messenger = "";
            if (txtMK == txtMK2)
            {
                nguoidung us = new nguoidung();
                us.username = txtTK;
                us.password = txtMK;
                us.hoten = txtHoTen;
                us.sdt = txtSDT;
                us.diachi = txtDiaChi;
                us.email = txtEmail;
                us.role = cmbRole;
                
                try
                {
                    db.nguoidungs.InsertOnSubmit(us);
                    db.SubmitChanges();
                    messenger += Lib.messenger(0, "Thêm thành công!");
                }
                catch (Exception ex)
                {
                    messenger += Lib.messenger(2, ex.ToString());
                }
            }
            else {
                messenger += Lib.messenger(1, "Mật khẩu không khớp!");
            }
            		
			ViewBag.error = messenger;
            return View(this.ListRole());
        }

        // edit user:
        public ActionResult Edit(string title, int id)
        {
            
            nguoidung us = db.nguoidungs.Where(x => x.id_user == id).Single();
            ViewBag.Title = Conf.TITLE + "Thông tin người dùng - "+us.hoten;
            List<object> list = new List<object>();
            list.Add(this.ListRole());
            list.Add(us);
            return View(list);
        }
        // edit user:
        [HttpPost]
        public ActionResult Edit(FormCollection coll) {
            int id = Convert.ToInt32(coll["idHd"].ToString());
            string txtHoTen = coll["txtHoTen"].ToString();
            string txtSDT = coll["txtSDT"].ToString();
            string txtDiaChi = coll["txtDiaChi"].ToString();
            string txtEmail = coll["txtEmail"].ToString();
            int cmbRole = Convert.ToInt32(coll["cmbRole"].ToString());
            string messenger = "";
            try
            {
                nguoidung user = db.nguoidungs.Where(x => x.id_user == id).Single();
                user.hoten = txtHoTen;
                user.sdt = txtSDT;
                user.diachi = txtDiaChi;
                user.email = txtEmail;
                user.role = cmbRole;
                db.SubmitChanges();
                if (user.id_user == ((MLogin)Session["user"]).id) {
                    ((MLogin)Session["user"]).name = txtHoTen;
                }
                messenger += Lib.messenger(0, "Cập nhật thành công!");
            }
            catch (Exception ex)
            {
                messenger += Lib.messenger(2, ex.ToString());
            }

            ViewBag.error = messenger;

            nguoidung us = db.nguoidungs.Where(x => x.id_user == id).Single();
            ViewBag.Title = Conf.TITLE + "Thông tin người dùng - " + us.hoten;
            List<object> list = new List<object>();
            list.Add(this.ListRole());
            list.Add(us);
            return View(list);
        }
		
		// change password:
        [HttpGet]
		public ActionResult ChangePassword(string title, int id) {
            ViewBag.Title = Conf.TITLE+"Thay đổi mật khẩu người dùng";
            List<object> list = new List<object>();
            list.Add(title);
            list.Add(id);
            return View(list);
        }

        // change password:
        [HttpPost]
        public ActionResult ChangePassword(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE + "Thay đổi mật khẩu người dùng";
            string title = coll["title"].ToString();
            int id = Convert.ToInt32(coll["idHd"].ToString());
            string messenger = "";

            if (coll["txtMK1"].ToString() == coll["txtMK2"].ToString())
            {
                try
                {
                    nguoidung us = db.nguoidungs.Where(x => x.id_user == id).Single();
                    us.password = coll["txtMK1"].ToString();
                    db.SubmitChanges();
                    messenger = Lib.messenger(0, "Thay đổi mật khẩu thành công");
                }
                catch (Exception ex)
                {
                    messenger = Lib.messenger(2, ex.ToString());
                }
            }
            else
            {
                messenger = Lib.messenger(1, "Mật khẩu không khớp!");
            }
            ViewBag.error = messenger;
            List<object> list = new List<object>();
            list.Add(title);
            list.Add(id);
            return View(list);
        }
    }
}
