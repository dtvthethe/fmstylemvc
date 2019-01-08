﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Config;

namespace FMStyle.Controllers
{
    public class HuongDanMuaController : Controller
    {
        //
        // GET: /HuongDanMua/

        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC+ " - Hướng dẫn mua hàng";
            return View();
        }

    }
}
