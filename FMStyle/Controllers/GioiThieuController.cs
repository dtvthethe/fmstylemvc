using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;

namespace FMStyle.Controllers
{
    public class GioiThieuController : Controller
    {
        //
        // GET: /GioiThieu/

        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Giới thiệu";
            return View();
        }

    }
}
