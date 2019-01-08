using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FMStyle.Models
{
    public class MSanPham
    {
        public int id_sanpham { get; set; }
        public string ten_sanpham { get; set; }
        public string hinhanh { get; set; }
        public decimal gia { get; set; }
        public bool? khuyenmai { get; set; }
    }
}
