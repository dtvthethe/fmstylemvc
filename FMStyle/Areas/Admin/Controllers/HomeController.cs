using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;

namespace FMStyle.Areas.Admin.Controllers
{
    public class HomeController : Controller
    {
        public HomeController()
        {
            Login l = new Login();
        }

        // GET: /Home/
        public ActionResult Index()
        {
            return View();
        }

        // about:
        public ActionResult About() {
            ViewBag.Title = Conf.TITLE + "Thông tin";
            return View();
        }

    }
}
