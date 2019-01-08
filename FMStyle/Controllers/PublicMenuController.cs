using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Models;
using FMStyle.Config;
using FMStyle.Libraries;

namespace FMStyle.Controllers
{
    public class PublicMenuController : Controller
    {
        // database context:
        private DBPublicFMStyleDataContext db = new DBPublicFMStyleDataContext();

        // get menu:
        private List<danhmuc> GetMenu() {
            var jfa = db.danhmucs.ToList();
            return db.danhmucs.OrderBy(x => x.groupdanhmuc).ToList();
        }

        // GET: /Menu/
        public PartialViewResult Index()
        {
            List<List<danhmuc>> lst = new List<List<danhmuc>>();
            List<danhmuc> lsdm = new List<danhmuc>();
            foreach (danhmuc d in this.GetMenu()) {
                if (d.groupdanhmuc.ToString().Split(Conf.CHAR_PLIT)[1] == "1")
                {
                    if (lsdm.Count()>0)
                    {
                        lst.Add(lsdm);
                        lsdm = new List<danhmuc>();
                    }
                    
                    lsdm.Add(d);
                }
                else {
                    lsdm.Add(d);
                }
            }
            lst.Add(lsdm);
            return PartialView(lst);
        }

        // Menu seach
        public PartialViewResult MenuSearch(int current = 0) {
            ViewBag.current = current;
            List<danhmuc> lst = this.GetMenu().Where(x=>x.groupdanhmuc.ToString().Split(Conf.CHAR_PLIT)[1] != "1").ToList();
            return PartialView(lst);
        }
    }
}