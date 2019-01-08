using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;

namespace FMStyle.Controllers
{
    public class ChinhSachBaoHanhController : Controller
    {
        //
        // GET: /ChinhSachBaoHanh/

        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Chính sách bảo hành";
            return View();
        }

    }
}
