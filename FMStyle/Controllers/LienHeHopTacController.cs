using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;

namespace FMStyle.Controllers
{
    public class LienHeHopTacController : Controller
    {
        //
        // GET: /LienHeHopTac/

        public ActionResult Index()
        {

            ViewBag.Title  = Conf.TITLE_PUBLIC + " - Liên hệ hợp tác";
            return View();
        }

    }
}
