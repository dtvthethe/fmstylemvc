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
    public class PublicUserRLController : Controller
    {
        //database context:

        private DBPublicFMStyleDataContext db = new DBPublicFMStyleDataContext();

        // GET: /PublicDangKy/

        public ActionResult Index()
        {
            return View();
        }

        // register user:
        public ActionResult DangKyTaiKhoan()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Đăng ký tài khoản";
            return View();
        }

        // register user:
        [HttpPost]
        public ActionResult DangKyTaiKhoan(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Đăng ký tài khoản";
            string txtUser = coll["txtUser"];
            string txtPassword = coll["txtPassword"];
            string txtHoTen = coll["txtHoTen"];
            string txtSDT = coll["txtSDT"];
            string txtEmail = coll["txtEmail"];
            string txtDiaChi = coll["txtDiaChi"];
            try
            {
                nguoidung us = new nguoidung();
                us.diachi = txtDiaChi;
                us.email = txtEmail;
                us.hoten = txtHoTen;
                us.password = txtPassword;
                us.role = Conf.ID_CUSTOMMER;
                us.sdt = txtSDT;
                us.username = txtUser;
                this.db.nguoidungs.InsertOnSubmit(us);
                db.SubmitChanges();
                ViewBag.error = Lib.messengerPublic("Đăng ký tài khoản thành công!");
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("UNIQUE KEY constraint"))
                {
                    ViewBag.error = Lib.messengerPublic("Tài khoản này đã tồn tại!");
                }
                else
                {
                    ViewBag.error = Lib.messengerPublic(ex.Message);
                }
            }
            return View();
        }

        // login:
        public ActionResult Login() {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Đăng nhập";
            return View();
        }

        // login:
        [HttpPost]
        public ActionResult Login(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Đăng ký";
            string txtTK = coll["txtUserName"].ToString();
            string txtMK = coll["txtPassword"].ToString();
            MLogin us = db.nguoidungs.Where(x => x.username == txtTK).Where(x => x.password == txtMK).Select(x => new MLogin { id = x.id_user, hoTen = x.hoten }).SingleOrDefault();
            if (us != null)
            {
                Session["userPublic"] = us;
                return Redirect("/");
            }
            else {
                ViewBag.error = Lib.messengerPublic("Sai tài khoản hoặc mật khẩu");
                return View();
            }
        }

        // forget pasword:
        public ActionResult ForgetPasword() {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Quên mật khẩu";
            return View();
        }
        // forget pasword:
        [HttpPost]
        public ActionResult ForgetPasword(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Quên mật khẩu";
            string txtUser = coll["txtTK"].ToString();
            string txtEmail = coll["txtEmail"].ToString();
            string txtPass = coll["txtPassword1"].ToString();
            nguoidung us = db.nguoidungs.Where(x => x.username == txtUser).Where(x => x.email == txtEmail).SingleOrDefault();
         
            if (us != null)
            {
                try
                {
                    us.password = txtPass;
                    db.SubmitChanges();
                    ViewBag.error = Lib.messengerPublic("Đổi mật khẩu thành công") + "<a href=\"/dang-nhap.html\" title=\"Đăng nhập\">&larr; Quay lại đăng nhập</a>";
                }
                catch (Exception ex) {
                    ViewBag.error = Lib.messengerPublic(ex.Message);
                }
                
                return View();
            }
            else {
                ViewBag.error = Lib.messengerPublic("Sai tài khoản hoặc email");
                return View();
            }
            
        }

        // get name user login:
        public PartialViewResult MenuUserLogin() {
            string hoTen = "";
            int countOrder = 0;
            if (Session["userPublic"] != null)
            {
                MLogin us = (MLogin)Session["userPublic"];
                int countOrd = db.dat_hangs.Where(x => x.id_user == us.id).Where(x => x.trang_thai == false).Count();
                hoTen = us.hoTen;
                if (countOrd > 0)
                {
                    countOrder = countOrd;
                }
            }
            ViewBag.countOrder = countOrder;
            ViewBag.hoTen = hoTen;
            return PartialView();
        }
    }
}
