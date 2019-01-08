using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;

namespace FMStyle.Controllers
{
    public class ChinhSachBaoMatController : Controller
    {
        //
        // GET: /ChinhSachBaoMat/

        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Chính sách bảo mật";
            return View();
        }

    }
}
