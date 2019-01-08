using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;

namespace FMStyle.Controllers
{
    public class ChinhSachMuaController : Controller
    {
        //
        // GET: /ChinhSachMua/

        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Chính sách mua hàng";
            return View();
        }

    }
}
