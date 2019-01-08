using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Models;
using FMStyle.Config;
using FMStyle.Libraries;

namespace FMStyle.Controllers
{
    public class PublicUserController : Controller
    {
        public PublicUserController() {
            UserPublic us = new UserPublic();
        }

        //database context:
        private DBPublicFMStyleDataContext db = new DBPublicFMStyleDataContext();

        // GET: /PublicUser/

        public ActionResult Index()
        {
            return View();
        }

        // register user:
        public ActionResult DangKyTaiKhoan() {
            ViewBag.Title = Conf.TITLE_PUBLIC+" - Đăng ký tài khoản";
            return View();
        }

        // register user:
        [HttpPost]
        public ActionResult DangKyTaiKhoan(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Đăng ký tài khoản";
            string txtUser = coll["txtUser"];
            string txtPassword = coll["txtPassword"];
            return View();
        }
        // logout:
        public RedirectResult Logout() {
            Session.Remove("userPublic");
            return Redirect("/");
        }

        //profile:
        public ActionResult Profile() {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Thông tin cá nhân";
            MLogin us = (MLogin)Session["userPublic"];
            var user = db.nguoidungs.Where(x => x.id_user == us.id).Single();
            return View(user);
        }

        //profile:
        [HttpPost]
        public ActionResult Profile(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Thông tin cá nhân";
            string txtHoTen = coll["txtHoTen"];
            string txtSDT = coll["txtSDT"];
            string txtEmail = coll["txtEmail"];
            string txtDiaChi = coll["txtDiaChi"];
            string txtUser = coll["txtUser"];
            MLogin us = (MLogin)Session["userPublic"];
            try
            {
                nguoidung usEdit = db.nguoidungs.Where(x => x.id_user == us.id).Single();
                usEdit.hoten = txtHoTen;
                usEdit.sdt = txtSDT;
                usEdit.email = txtEmail;
                usEdit.diachi = txtDiaChi;
                db.SubmitChanges();
                us.hoTen = txtHoTen;
                ViewBag.error = Lib.messengerPublic("Cập nhật thành công");
            }
            catch (Exception ex) {
                ViewBag.error = Lib.messengerPublic(ex.Message);
            }
            var user = db.nguoidungs.Where(x => x.id_user == us.id).Single();
            return View(user);
        }

        // change password:
        public ActionResult ChangePassword() {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Đổi mật khẩu";
            return View();
        }

        // change password:
        [HttpPost]
        public ActionResult ChangePassword(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Đổi mật khẩu";
            string txtPasswordOld = coll["txtPasswordOld"];
            string txtPasswordNew = coll["txtPasswordNew1"];
            
            try
            {
                MLogin u = (MLogin)Session["userPublic"];
                nguoidung us = db.nguoidungs.Where(x => x.id_user == u.id).Where(x => x.password == txtPasswordOld).SingleOrDefault();
                if (us != null)
                {
                    us.password = txtPasswordNew;
                    db.SubmitChanges();
                    ViewBag.error = Lib.messengerPublic("Đổi mật khẩu thành công");
                }
                else {
                    ViewBag.error = Lib.messengerPublic("Mật khẩu cũ không chính xác");
                }  
            }
            catch (Exception ex) {
                ViewBag.error = Lib.messengerPublic("Đổi mật khẩu thất bại");
            }
            return View();
        }

    }
}
