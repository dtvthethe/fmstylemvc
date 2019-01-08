using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FMStyle.Areas.Admin.Models
{
    public class MLogin
    {
        public int id { get; set; }
        public string name { get; set; }
        public int? role { get; set; }
        public bool? special { get; set; }
        public bool? accessCMS { get; set; }
    }
}