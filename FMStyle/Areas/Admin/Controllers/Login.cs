using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FMStyle.Areas.Admin.Models;
using FMStyle.Config;

namespace FMStyle.Areas.Admin.Controllers
{
    public class Login
    {
        //check login
        public Login() {
            if (HttpContext.Current.Session["user"] == null)
            {
                HttpContext.Current.Response.Redirect("/admin/dang-nhap-he-thong.html");
            }
        }


        // redirect page if employee can not access:
        public void RedirectPacge() {
            MLogin l = (MLogin)HttpContext.Current.Session["user"];
            if (l.special == false) {
                HttpContext.Current.Response.Redirect("/admin/");
            }
        }
    }
}