using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Areas.Admin.Models;
using FMStyle.Libraries;
using FMStyle.Config;

namespace FMStyle.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        //database context:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        // GET: /Login/
        public ActionResult Index()
        {
            return View();
        }

        // login:
        public ActionResult Login()
        {
            if (Session["user"] != null)
                return Redirect("/admin/");
            else
                return View();
        }
        // login:
        [HttpPost]
        public ActionResult Login(FormCollection coll)
        {
            string txtUsername = coll["txtTK"].ToString();
            string txtPassword = coll["txtMK"].ToString();
            MLogin us = db.nguoidungs.Where(x => x.username == txtUsername).Where(x => x.password == txtPassword)
                .Select(x => new MLogin { id = x.id_user, name = x.hoten, role= x.role, accessCMS = x.role1.truycap_cms, special = x.role1.special }).FirstOrDefault();
            if (us != null)
            {
                if (us.accessCMS == false)
                {
                    ViewBag.error = Lib.messenger(1, "Truy cập bị giới hạn!");
                    return View();
                }
                else
                {
                    Session["user"] = us;
                    return Redirect("/admin/");
                }
            }
            else
            {
                ViewBag.error = Lib.messenger(2, "Sai tài khoản hoặc mật khẩu!");
                return View();
            }
        }

        // logout:
        public ActionResult Logout()
        {
            Session.Remove("user");
            return Redirect("/admin/dang-nhap-he-thong.html");
        }

        // get name user:
        public PartialViewResult GetName()
        {
            MLogin l = (MLogin)Session["user"];
            return PartialView(l);
        }
    }
}
