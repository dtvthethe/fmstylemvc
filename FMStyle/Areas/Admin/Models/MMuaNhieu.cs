using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FMStyle.Areas.Admin.Models
{
    public class MMuaNhieu
    {
        public int id { get; set; }
        public string ten { get; set; }
        public string hinhanh{ get; set; }
        public int luotMua { get; set; }
        public decimal gia { get; set; }
    }
}