using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Areas.Admin.Models;
using FMStyle.Libraries;
using FMStyle.Config;

namespace FMStyle.Areas.Admin.Controllers
{
    public class KhuyenMaiController : Controller
    {
        public KhuyenMaiController() {
            Login l = new Login();
            l.RedirectPacge();
        }
        // data context:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        // get value promotion:
        private int GetKhuyenMai() {
            return db.khuyenmais.Where(x => x.id_khuyenmai == Conf.ID_PROMOTION).ToArray()[0].giatri;
        }

        // GET: /KhuyenMai/
        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE + "Khuyến mãi";
            int km = this.GetKhuyenMai();

            return View(km);
        }

        // update promotion:
        [HttpPost]
        public ActionResult Index(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE + "Khuyến mãi";
            int txtKhuyenMai = Convert.ToInt32(coll["txtKhuyenMai"].ToString());
            string messenger = "";
            try
            {
                var pr = db.khuyenmais.Where(x => x.id_khuyenmai == Conf.ID_PROMOTION).Single();
                pr.giatri = txtKhuyenMai;
                db.SubmitChanges();
                messenger = Lib.messenger(0,"Cập nhật thành công!");
            }
            catch (Exception ex) {
                messenger = Lib.messenger(2, "Cập nhật thất bại!");
            }
            ViewBag.error = messenger;
            int km = this.GetKhuyenMai();
            return View(km);
        }

    }
}
