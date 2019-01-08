using System.Web.Mvc;

namespace FMStyle.Areas.Admin
{
    public class AdminAreaRegistration : AreaRegistration
    {
        public override string AreaName
        {
            get
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context)
        {
            // product:
            context.MapRoute(
               "Product View By category paging",
              "admin/san-pham-danh-muc-{title}-{id}-page-{page}.html",
               new { controller = "SanPham", action = "ViewBy", title = UrlParameter.Optional, id = UrlParameter.Optional, page = UrlParameter.Optional }
           );
            context.MapRoute(
                "Product View By category",
               "admin/san-pham-danh-muc-{title}-{id}.html",
                new { controller = "SanPham", action = "ViewBy", title = UrlParameter.Optional, id = UrlParameter.Optional }
            );
            context.MapRoute(
               "Product Paging",
              "admin/san-pham-page-{page}.html",
               new { controller = "SanPham", action = "Index", page = UrlParameter.Optional }
           );
            context.MapRoute(
               "Product",
              "admin/san-pham.html",
               new { controller = "SanPham", action = "Index" }
           );
            context.MapRoute(
                "Add Product",
               "admin/them-san-pham.html",
                new { controller = "SanPham", action = "AddProduct" }
            );
            context.MapRoute(
                "Edit Product",
               "admin/thong-tin-san-pham-{title}-{id}.html",
                new { controller = "SanPham", action = "EditProduct", title = UrlParameter.Optional, id = UrlParameter.Optional }
            );
            context.MapRoute(
                "Search Product Paging",
               "admin/san-pham-tim-kiem-{key}-{categoty}-page-{page}.html",
                new { controller = "SanPham", action = "TimKiem", key = UrlParameter.Optional, categoty = UrlParameter.Optional, page = UrlParameter.Optional }
            );
            context.MapRoute(
                "Search Product",
               "admin/san-pham-tim-kiem-{key}-{categoty}.html",
                new { controller = "SanPham", action = "TimKiem", key = UrlParameter.Optional, categoty = UrlParameter.Optional }
            );



            // category:
            context.MapRoute(
                "Cap nhat danh muc parent",
               "admin/thong-tin-danh-muc-par-{title}-{id}.html",
                new { controller = "DanhMuc", action = "EditParentDanhMuc", title = UrlParameter.Optional, id = UrlParameter.Optional }
            );
            context.MapRoute(
                "Danh muc childrent",
               "admin/danh-muc-thong-tin-chil-{title}-{id}.html",
                new { controller = "DanhMuc", action = "EditChildrentDanhMuc", title = UrlParameter.Optional, id = UrlParameter.Optional }
            );
            context.MapRoute(
                "Danh muc parent",
               "admin/danh-muc-thong-tin-{title}-{id}.html",
                new { controller = "DanhMuc", action = "Index", title = UrlParameter.Optional, id = UrlParameter.Optional }
            );
            context.MapRoute(
                "Danh muc",
               "admin/danh-muc.html",
                new { controller = "DanhMuc", action = "Index" }
            );

            context.MapRoute(
                "Them danh muc parent",
               "admin/them-danh-muc-par.html",
                new { controller = "DanhMuc", action = "AddParent" }
            );
            context.MapRoute(
               "Them danh muc childrent",
              "admin/them-danh-muc-chi.html",
               new { controller = "DanhMuc", action = "AddChildrent" }
           );

            // pay type:
            context.MapRoute(
                "Phuong thuc thanh toan",
               "admin/phuong-thuc-thanh-toan.html",
                new { controller = "PhuongThuc", action = "Index" }
            );
            context.MapRoute(
                "Them phuong thuc thanh toan",
               "admin/them-phuong-thuc-thanh-toan.html",
                new { controller = "PhuongThuc", action = "Add" }
            );
            context.MapRoute(
               "Update Phuong thuc thanh toan",
              "admin/thong-tin-phuong-thuc-{title}-{id}.html",
               new { controller = "PhuongThuc", action = "Update" }
           );


            // order :
            context.MapRoute(
               "Dat hang Status Paging",
              "admin/dat-hang-status-{status}-page-{page}.html",
               new { controller = "DatHang", action = "DatHangStatus", status = UrlParameter.Optional, page = UrlParameter.Optional }
           );
            context.MapRoute(
               "Dat hang Paging",
              "admin/dat-hang-page-{page}.html",
               new { controller = "DatHang", action = "Index", page = UrlParameter.Optional }
           );
            context.MapRoute(
               "Dat hang Status",
              "admin/dat-hang-status-{status}.html",
               new { controller = "DatHang", action = "DatHangStatus", status = UrlParameter.Optional }
           );
            context.MapRoute(
               "Thanh toan Dat hang",
              "admin/thanh-toan-san-pham-{id}.html",
               new { controller = "DatHang", action = "PayOrder", id = UrlParameter.Optional }
           );
            context.MapRoute(
              "Dat hang",
             "admin/dat-hang.html",
              new { controller = "DatHang", action = "Index" }
          );

            // user:
            context.MapRoute(
                "Nguoi dung tim kiem theo role paging",
               "admin/nguoi-dung-tim-kiem-{key}-role-{role}-page-{page}.html",
                new { controller = "User", action = "SearchByRole", key = UrlParameter.Optional, page = UrlParameter.Optional }
            );
            context.MapRoute(
              "Nguoi dung tim kiem theo role",
             "admin/nguoi-dung-tim-kiem-{key}-role-{role}.html",
              new { controller = "User", action = "SearchByRole", key = UrlParameter.Optional }
          );
            context.MapRoute(
                "Nguoi dung tim kiem paging",
               "admin/nguoi-dung-tim-kiem-{key}-page-{page}.html",
                new { controller = "User", action = "Search", key = UrlParameter.Optional, page = UrlParameter.Optional }
            );
            context.MapRoute(
              "Nguoi dung tim kiem",
             "admin/nguoi-dung-tim-kiem-{key}.html",
              new { controller = "User", action = "Search", key = UrlParameter.Optional }
          );

            context.MapRoute(
            "Nguoi dung view by role paging",
           "admin/nguoi-dung-role-{title}-{role}-page-{page}.html",
            new { controller = "User", action = "Role", title = UrlParameter.Optional, role = UrlParameter.Optional }
        );
            context.MapRoute(
             "Nguoi dung view by role",
            "admin/nguoi-dung-role-{title}-{role}.html",
             new { controller = "User", action = "Role", title = UrlParameter.Optional, role = UrlParameter.Optional }
         );

            context.MapRoute(
              "Nguoi dung",
             "admin/nguoi-dung.html",
              new { controller = "User", action = "Index" }
          );
            context.MapRoute(
              "Nguoi dung paging",
             "admin/nguoi-dung-page-{page}.html",
              new { controller = "User", action = "Index", page = UrlParameter.Optional }
          );
            context.MapRoute(
             "Nguoi dung them",
            "admin/nguoi-dung-them.html",
             new { controller = "User", action = "Add" }
         );
            context.MapRoute(
             "Nguoi dung thong tin",
            "admin/nguoi-dung-thong-tin-{title}-{id}.html",
             new { controller = "User", action = "Edit", title = UrlParameter.Optional, id = UrlParameter.Optional }
         );
            context.MapRoute(
             "Nguoi dung doi mat khau",
            "admin/nguoi-dung-doi-mat-khau-{title}-{id}.html",
             new { controller = "User", action = "ChangePassword", title = UrlParameter.Optional, id = UrlParameter.Optional }
         );
            //Login
            context.MapRoute(
             "Nguoi dung dang nhap",
            "admin/dang-nhap-he-thong.html",
             new { controller = "Login", action = "Login" }
         );
            context.MapRoute(
             "Nguoi dung dang xuat",
            "admin/dang-xuat-he-thong.html",
             new { controller = "Login", action = "Logout" }
         );

            // about:
            context.MapRoute(
             "About",
            "admin/fmstyle-phan-mem.html",
             new { controller = "Home", action = "About" }
         );

            // about:
            context.MapRoute(
             "PROMOTION",
            "admin/khuyen-mai.html",
             new { controller = "KhuyenMai", action = "Index" }
         );

            // count:
            context.MapRoute(
             "count",
            "admin/thong-ke.html",
             new { controller = "ThongKe", action = "Index" }
         );

            // role:
            context.MapRoute(
            "role",
           "admin/quyen-nguoi-dung.html",
            new { controller = "Role", action = "Index" }
        );
            context.MapRoute(
            "role add",
           "admin/them-quyen-nguoi-dung.html",
            new { controller = "Role", action = "Add" }
        );
            context.MapRoute(
            "role edit",
           "admin/thong-tin-role-{title}-{id}.html",
            new { controller = "Role", action = "Edit", title = UrlParameter.Optional, id = UrlParameter.Optional }
        );

            // lien he:
            context.MapRoute(
            "lien he",
           "admin/lien-he.html",
            new { controller = "LienHe", action = "Index" }
        );

            context.MapRoute(
            "lien he paging",
           "admin/lien-he-page-{page}.html",
            new { controller = "LienHe", action = "Index", page = UrlParameter.Optional }
        );
            context.MapRoute(
            "lien he view",
           "admin/lien-he-view-{id}.html",
            new { controller = "LienHe", action = "ViewLienHe", id = UrlParameter.Optional }
        );
            // quang cao:
            context.MapRoute(
          "quang cao thong tin",
         "admin/quang-cao-chi-tiet-{title}-{id}.html",
          new { controller = "QuangCao", action = "Edit" }
        );
            context.MapRoute(
          "quang cao them",
         "admin/them-quang-cao.html",
          new { controller = "QuangCao", action = "Add" }
        );
            context.MapRoute(
            "quang cao",
           "admin/quang-cao.html",
            new { controller = "QuangCao", action = "Index" }
        );
            // slide:
            context.MapRoute(
            "slide",
           "admin/slide.html",
            new { controller = "Slide", action = "Index" }
        );
            context.MapRoute(
            "slide add",
           "admin/them-slide.html",
            new { controller = "Slide", action = "Add" }
        );
            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                new { action = "Index", controller ="Home", id = UrlParameter.Optional }
            );
        }
    }
}
