using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FMStyle.Areas.Admin.Models
{
    public class MLienHe
    {
        public int id_lienhe { get; set; }
        public string hoten { get; set; }
        public DateTime ngaygui { get; set; }
        public string email { get; set; }
        public string sdt { get; set; }
        public int? id_user { get; set; }

        public MLienHe() {
            this.email = null;
            this.hoten = null;
            this.id_lienhe = -1;
            this.id_user = -1;
            this.ngaygui = new DateTime(2016, 1, 1);
            this.sdt = null;
        }

        public MLienHe(int id_lienhe, string hoten, DateTime ngaygui, string email, string sdt, int? id_user)
        {
            this.email = email;
            this.hoten = hoten;
            this.id_lienhe = id_lienhe;
            this.id_user = id_user;
            this.ngaygui = ngaygui;
            this.sdt = sdt;
        }
    }
}