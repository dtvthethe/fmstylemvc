using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Areas.Admin.Models;
using FMStyle.Libraries;
using FMStyle.Config;
using System.IO;

namespace FMStyle.Areas.Admin.Controllers
{
    public class SlideController : Controller
    {
        public SlideController() {
            Login l = new Login();
            l.RedirectPacge();
        }

        // datatabse context:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        // get slide:
        private List<slide> GetSlide() {
            return db.slides.OrderBy(x => x.vitri).ToList();
        }

        // GET: /Slide/
        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE + "Slide";
            return View(this.GetSlide());
        }

        // update slide:
        [HttpPost]
        public ActionResult Index(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE + "Slide";
            string messenger = "";
            try
            {
                for (int i = 0; i < this.GetSlide().Count(); i++)
                {
                    if (coll[i.ToString() + ".del"] != null)
                    {// xoa:
                        slide s = db.slides.Where(x => x.id_slide == Convert.ToInt32(coll[i.ToString() + ".del"])).Single();
                        Lib.deleteFile(s.hinhanh, "~/slide/");
                        db.slides.DeleteOnSubmit(s);
                    }
                    else
                    {// update:
                        slide s = db.slides.Where(x => x.id_slide == Convert.ToInt32(coll[i.ToString() + ".hdId"])).Single();
                        // link:
                        s.link = coll[i.ToString() + ".txtLink"].ToString();
                        // vi tri:
                        s.vitri = Convert.ToInt32(coll[i.ToString() + ".txtViTri"].ToString());
                    }
                }
                db.SubmitChanges();
                messenger = Lib.messenger(0,"Lưu lại thành công!");
            }
            catch (Exception ex) {
                messenger = Lib.messenger(0, ex.ToString());
            }
            ViewBag.error = messenger;
            return View(this.GetSlide());
        }

        // add new slide:
        public ActionResult Add(){
            ViewBag.Title = Conf.TITLE+ "Thêm slide";
            return View();
        }

        // add new slide:
        [HttpPost]
        public ActionResult Add(FormCollection coll, HttpPostedFileBase file)
        {
            ViewBag.Title = Conf.TITLE + "Thêm slide";
            string txtLink = coll["txtLink"].ToString();
            int txtViTri = Convert.ToInt32(coll["txtViTri"].ToString());
            string nameFile = null;
            string messenger = "";
            DateTime dt = DateTime.Now;

            // upload file
            if (file != null && file.ContentLength > 0)
            {
                try
                {
                    string path = Path.Combine(Server.MapPath("~/slide/"));
                    nameFile = dt.Year + "-" + dt.Month + "-" + dt.Day + "-" + dt.Hour + "-" + dt.Minute + "-" + dt.Second + "-" + dt.Millisecond + Path.GetExtension(file.FileName);
                    file.SaveAs(Path.Combine(path, nameFile));
                    ViewBag.file = "File uploaded successfully!";
                }
                catch (Exception ex)
                {
                    ViewBag.file = ex.ToString();
                }
            }
            try
            {
                slide s = new slide();
                s.hinhanh = nameFile;
                s.link = txtLink;
                s.vitri = txtViTri;
                db.slides.InsertOnSubmit(s);
                db.SubmitChanges();
                messenger = Lib.messenger(0, "Thêm thành công!");
            }
            catch (Exception ex) {
                messenger = Lib.messenger(2, ex.ToString());
            }
            ViewBag.error = messenger;
            return View();
        }

    }
}
