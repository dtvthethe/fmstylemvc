using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FMStyle.Controllers
{
    public class UserPublic
    {
        public UserPublic() {
            if (HttpContext.Current.Session["userPublic"] == null)
            {
                HttpContext.Current.Response.Redirect("/dang-nhap.html");
            }
        }
    }
}