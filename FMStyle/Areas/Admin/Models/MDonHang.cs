using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FMStyle.Areas.Admin.Models
{
    public class MDonHang
    {
        public int id { get; set; }
        public string ten { get; set; }
        public int? idUser{ get; set; }
        public DateTime ngayDat { get; set; }
        public decimal gia { get; set; }
    }
}