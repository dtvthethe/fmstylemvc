using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;

namespace FMStyle.Controllers
{
    public class HopTacController : Controller
    {
        //
        // GET: /HopTac/

        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Hợp tác";
            return View();
        }

    }
}
