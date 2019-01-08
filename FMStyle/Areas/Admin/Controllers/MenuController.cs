using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Areas.Admin.Models;
using FMStyle.Config;
using FMStyle.Libraries;

namespace FMStyle.Areas.Admin.Controllers
{
    public class MenuController : Controller
    {
        //
        // GET: /Menu/

        public ActionResult Index()
        {
            if (Session["user"] != null)
            {
                this.ControllerName();
                MLogin l = (MLogin)Session["user"];
                if (l.special == false)// menu employye
                {
                    return View("~/Areas/Admin/Views/Menu/MenuEmployee.cshtml");
                }
                else {// menu admin
                    return View("~/Areas/Admin/Views/Menu/MenuAdmin.cshtml");
                }
            }
            else {
                return Redirect("/admin/dang-nhap-he-thong.html");
            }
        }

        // menuAdmin  menuEmployee
        private void ControllerName() {
            MenuCurrent.danhMuc = "";
            MenuCurrent.datHang = "";
            MenuCurrent.khuyenMai = "";
            MenuCurrent.lienHe = "";
            MenuCurrent.nguoiDung = "";
            MenuCurrent.phuongThuc = "";
            MenuCurrent.quangCao = "";
            MenuCurrent.quyenNguoiDung = "";
            MenuCurrent.sanPham = "";
            MenuCurrent.slide = "";
            MenuCurrent.thongKe = "";
            string controller = System.Web.HttpContext.Current.Request.RequestContext.RouteData.GetRequiredString("controller");
            if (controller == "SanPham")
            {
                MenuCurrent.sanPham = "selected";
            }
            if (controller == "LienHe")
            {
                MenuCurrent.lienHe = "selected";
            }
            if (controller == "DanhMuc")
            {
                MenuCurrent.danhMuc = "selected";
            }
            if (controller == "DatHang")
            {
                MenuCurrent.datHang = "selected";
            }
            if (controller == "KhuyenMai")
            {
                MenuCurrent.khuyenMai = "selected";
            }
            if (controller == "PhuongThuc")
            {
                MenuCurrent.phuongThuc = "selected";
            }
            if (controller == "QuangCao")
            {
                MenuCurrent.quangCao = "selected";
            }
            if (controller == "Role")
            {
                MenuCurrent.quyenNguoiDung = "selected";
            }
            if (controller == "Slide")
            {
                MenuCurrent.slide = "selected";
            }
            if (controller == "ThongKe")
            {
                MenuCurrent.thongKe = "selected";
            }
            if (controller == "User") {
                MenuCurrent.nguoiDung = "selected";
            }
        }
    }
}
