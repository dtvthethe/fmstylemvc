using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace FMStyle
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            //Trang chu:
            routes.MapRoute(
                name: "Trang chu",
                url: "trang-chu.html",
                defaults: new { controller = "TrangChu", action = "Index" }
            );
            routes.MapRoute(
                name: "Trang chu 2",
                url: "",
                defaults: new { controller = "TrangChu", action = "Index" }
            );

            // tim kiem san pham
            routes.MapRoute(
                name: "Tim kiem paging",
                url: "tim-kiem-san-pham-keys-{key}-{id}-page-{page}.html",
                defaults: new { controller = "PublicSanPham", action = "Search", key = UrlParameter.Optional, id = UrlParameter.Optional, page = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "Tim kiem",
                url: "tim-kiem-san-pham-keys-{key}-{id}.html",
                defaults: new { controller = "PublicSanPham", action = "Search", key = UrlParameter.Optional, id = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "San pham theo danh muc phan trang",
                url: "san-pham-{title}-{idCat}-page-{page}.html",
                defaults: new { controller = "PublicSanPham", action = "Category", title = UrlParameter.Optional, idCat = UrlParameter.Optional, page = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "San pham theo danh muc",
                url: "san-pham-{title}-{idCat}.html",
                defaults: new { controller = "PublicSanPham", action = "Category", title = UrlParameter.Optional, idCat = UrlParameter.Optional }
            );
            routes.MapRoute(
               name: "Thong tin san pham",
               url: "thong-tin-san-pham-{title}-{id}.html",
               defaults: new { controller = "PublicSanPham", action = "ChiTietSanPham", title = UrlParameter.Optional, id = UrlParameter.Optional }
           );
            routes.MapRoute(
              name: "San Pham moi pagging",
              url: "danh-sach-san-pham-moi-page-{page}.html",
              defaults: new { controller = "PublicSanPham", action = "SanPhamMoi", page = UrlParameter.Optional }
          );
            routes.MapRoute(
               name: "San Pham moi",
               url: "danh-sach-san-pham-moi.html",
               defaults: new { controller = "PublicSanPham", action = "SanPhamMoi" }
           );
            routes.MapRoute(
              name: "San Pham ban chay pagging",
              url: "danh-sach-san-pham-ban-chay-page-{page}.html",
              defaults: new { controller = "PublicSanPham", action = "SanPhamBanChay", page = UrlParameter.Optional }
          );
            routes.MapRoute(
               name: "San Pham ban chay",
               url: "danh-sach-san-pham-ban-chay.html",
               defaults: new { controller = "PublicSanPham", action = "SanPhamBanChay" }
           );
            routes.MapRoute(
             name: "San Pham khuyen mai pagging",
             url: "danh-sach-san-pham-khuyen-mai-page-{page}.html",
             defaults: new { controller = "PublicSanPham", action = "SanPhamKhuyenMai", page = UrlParameter.Optional }
         );
            routes.MapRoute(
               name: "San Pham khuyen mai",
               url: "danh-sach-san-pham-khuyen-mai.html",
               defaults: new { controller = "PublicSanPham", action = "SanPhamKhuyenMai" }
           );
            // cart:
            routes.MapRoute(
               name: "gio hang",
               url: "gio-hang.html",
               defaults: new { controller = "Cart", action = "Index" }
           );
            // user:
            routes.MapRoute(
               name: "Dang ky tai khoan",
               url: "dang-ky-tai-khoan.html",
               defaults: new { controller = "PublicUserRL", action = "DangKyTaiKhoan" }
           );
            routes.MapRoute(
               name: "Dang nhap",
               url: "dang-nhap.html",
               defaults: new { controller = "PublicUserRL", action = "Login" }
           );
            routes.MapRoute(
               name: "Dang xuat",
               url: "dang-xuat.html",
               defaults: new { controller = "PublicUser", action = "Logout" }
           );
            routes.MapRoute(
               name: "Thong tin ca nhan",
               url: "thong-tin-ca-nhan.html",
               defaults: new { controller = "PublicUser", action = "Profile" }
           );
            routes.MapRoute(
               name: "Doi mat khau",
               url: "doi-mat-khau.html",
               defaults: new { controller = "PublicUser", action = "ChangePassword" }
           );
            routes.MapRoute(
               name: "Quen mat khau",
               url: "quen-mat-khau.html",
               defaults: new { controller = "PublicUserRL", action = "ForgetPasword" }
           );
            //order:
            routes.MapRoute(
               name: "Lich su mua hang",
               url: "lich-su-mua-hang.html",
               defaults: new { controller = "PublicOrder", action = "Index" }
           );
            // buy:
            routes.MapRoute(
               name: "Thanh toan",
               url: "thanh-toan.html",
               defaults: new { controller = "PublicOrder", action = "Buy" }
           );
            routes.MapRoute(
               name: "Mua thanh cong",
               url: "mua-thanh-cong.html",
               defaults: new { controller = "PublicOrder", action = "BuySuccess" }
           );
            // Contact
            routes.MapRoute(
               name: "Lien he public",
               url: "lien-he.html",
               defaults: new { controller = "Contact", action = "Index" }
           );

            // Chinhh sach bao hanh:
            routes.MapRoute(
               name: "Chinhh sach bao hanh",
               url: "chinh-sach-bao-hanh.html",
               defaults: new { controller = "ChinhSachBaoHanh", action = "Index" }
           );

            // Huong dan mua hang:
            routes.MapRoute(
               name: "Huong dan mua hang",
               url: "huong-dan-mua-hang.html",
               defaults: new { controller = "HuongDanMua", action = "Index" }
           );
            // chinh sach mua hang:
            routes.MapRoute(
               name: "Chinh sach mua hang",
               url: "chinh-sach-mua-hang.html",
               defaults: new { controller = "ChinhSachMua", action = "Index" }
           );
            // gioi thieu:
            routes.MapRoute(
               name: "Gioi thieu",
               url: "gioi-thieu.html",
               defaults: new { controller = "GioiThieu", action = "Index" }
           );

            // chinh sach bao mat:
            routes.MapRoute(
               name: "Chinh sach bao mat",
               url: "chinh-sach-bao-mat.html",
               defaults: new { controller = "ChinhSachBaoMat", action = "Index" }
           );
            // dieu khoan su dung:
            routes.MapRoute(
               name: "Dieu khoan",
               url: "dieu-khoan-su-dung.html",
               defaults: new { controller = "DieuKhoan", action = "Index" }
           );
            // hoi dap:
            routes.MapRoute(
               name: "Hoi dap",
               url: "hoi-dap.html",
               defaults: new { controller = "HoiDap", action = "Index" }
           );
            // hop tac:
            routes.MapRoute(
               name: "Hop tac",
               url: "hop-tac.html",
               defaults: new { controller = "HopTac", action = "Index" }
           );
            // lien he hop tac:
            routes.MapRoute(
               name: "Lien he hop tac",
               url: "lien-he-hop-tac.html",
               defaults: new { controller = "LienHeHopTac", action = "Index" }
           );
            // tuyen dung:
            routes.MapRoute(
               name: "Tuyen dung",
               url: "tuyen-dung.html",
               defaults: new { controller = "TuyenDung", action = "Index" }
           );
            // error:
            routes.MapRoute(
               name: "ERROR",
               url: "error.html",
               defaults: new { controller = "TrangChu", action = "Error" }
           );
            //
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
