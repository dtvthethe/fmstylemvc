using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;

namespace FMStyle.Controllers
{
    public class DieuKhoanController : Controller
    {
        //
        // GET: /DieuKhoan/

        public ActionResult Index()
        {
            ViewBag.Title =Conf.TITLE_PUBLIC + " - Điều khoản sử dụng";
            return View();
        }

    }
}
