using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;

namespace FMStyle.Controllers
{
    public class HoiDapController : Controller
    {
        //
        // GET: /HoiDap/

        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Hỏi đáp";
            return View();
        }

    }
}
