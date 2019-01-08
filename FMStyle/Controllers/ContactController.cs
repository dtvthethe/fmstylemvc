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
    public class ContactController : Controller
    {
        //database conte3xt:
        private DBPublicFMStyleDataContext db = new DBPublicFMStyleDataContext();

        // GET: /Contact/
        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Liên hệ";
            if (Session["userPublic"] != null)
            {
                ViewBag.name = " value=\"" + ((MLogin)Session["userPublic"]).hoTen + "\" readonly= \"readonly\" ";
            }
            else {
                ViewBag.name = "value =\"\"";
            }
            return View();
        }

        // add new Contact
        [HttpPost, ValidateInput(false)]
        public ActionResult Index(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE_PUBLIC + " - Liên hệ";
            if (Session["userPublic"] != null) {
                ViewBag.name = " value=\""+ ((MLogin)Session["userPublic"]).hoTen+ "\" readonly= \"readonly\" ";
            }
            else
            {
                ViewBag.name = "value =\"\"";
            }
            //ViewBag.name = "<input type=\"text\" class=\"cinput\" name=\"txtHoTen\" maxlength=\"100\" height=\"29\" width=\"250\" value=\"\" required=\"\">";

            string txtHoTen = coll["txtHoTen"].ToString();
            string txtDiaChi = coll["txtDiaChi"].ToString();
            string txtSDT = coll["txtSDT"].ToString();
            string txtEmail = coll["txtEmail"].ToString();
            string txtNoiDung = coll["txtNoiDung"].ToString();
            try
            {
                lien_he lh = new lien_he();
                lh.hoten = txtHoTen;
                lh.ngaygui = DateTime.Now;
                lh.noidung = txtNoiDung;
                lh.sdt = txtSDT;
                lh.email = txtEmail;
                db.lien_hes.InsertOnSubmit(lh);
                db.SubmitChanges();
                ViewBag.error = Lib.messengerPublic("Ý kiến của bạn đã được gửi đi. Cảm ơn ý kiến của bạn!");
            }
            catch (Exception ex) {
                ViewBag.error = Lib.messengerPublic(ex.Message);
            }
            return View();
        }

    }
}
