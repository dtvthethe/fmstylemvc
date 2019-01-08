using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Areas.Admin.Models;
using FMStyle.Config;
using FMStyle.Libraries;
using System.IO;

namespace FMStyle.Areas.Admin.Controllers
{
    public class QuangCaoController : Controller
    {
        public QuangCaoController() {
            Login l = new Login();
            l.RedirectPacge();
        }
             

        // database context:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        // get quang cao:
        private List<quangcao> GetQuangCao() {
            return  db.quangcaos.OrderByDescending(x => x.id_adv).ToList();
        }

        // GET: /QuangCao/
        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE+"Quảng cáo";
            return View(this.GetQuangCao());
        }

        // udate
        [HttpPost]
        public ActionResult Index(FormCollection coll)
        {
            string messenger = "";
            ViewBag.Title = Conf.TITLE + "Quảng cáo";
            try {
                quangcao qc1 = db.quangcaos.Where(x=>x.trangthai == true).Single();
                qc1.trangthai = false;
                int idAd = Convert.ToInt32(coll["radTT"].ToString());
                quangcao qc2 = db.quangcaos.Where(x => x.id_adv == idAd).Single();
                qc2.trangthai = true;

                for (int i = 0; i < this.GetQuangCao().Count(); i++)
                {
                    if (coll[i.ToString() + ".del"] != null)
                    {// xoa
                        quangcao qc = db.quangcaos.Where(x => x.id_adv == Convert.ToInt32(coll[i.ToString() + ".del"])).Single();
                        Lib.deleteFile(qc.hinhanh, "~/adv/");
                        db.quangcaos.DeleteOnSubmit(qc);

                    }
                }
                
                db.SubmitChanges();
                messenger = Lib.messenger(0, "Lưu lại thành công");
            }
            catch (Exception ex) {
                messenger = Lib.messenger(2, ex.ToString());
            }
            ViewBag.error = messenger;
            return View(this.GetQuangCao());
        }

        // add new adv:
        public ActionResult Add() {
            ViewBag.Title = Conf.TITLE+"Thêm quảng cáo";
            return View();
        }

        // add new adv:
        [HttpPost]
        public ActionResult Add(FormCollection coll, HttpPostedFileBase file)
        {
            ViewBag.Title = Conf.TITLE + "Thêm quảng cáo";
            string fileName = null;
            DateTime dt = DateTime.Now;
            string messenger = "";

            // upload file:
            if (file != null && file.ContentLength > 0)
            {
                try
                {
                    string path = Path.Combine(Server.MapPath("~/adv"));
                    fileName = dt.Year + "-" + dt.Month + "-" + dt.Day + "-" + dt.Hour + "-" + dt.Minute + "-" + dt.Second + "-" + dt.Millisecond + Path.GetExtension(file.FileName);
                    file.SaveAs(Path.Combine(path, fileName));
                    ViewBag.file = "File uploaded successfully!";
                }
                catch (Exception ex)
                {
                    ViewBag.file = ex.ToString();
                }
            }

            //add new record database:
            try
            {
                quangcao qc = new quangcao();

                if (Convert.ToBoolean(coll["radTT"].ToString()) == true)
                {
                    quangcao qc1 = db.quangcaos.Where(x => x.trangthai == true).Single();
                    qc1.trangthai = false;
                }

                qc.hinhanh = fileName;
                qc.link = coll["txtLink"].ToString();
                qc.ten = coll["txtTen"].ToString();
                qc.trangthai = Convert.ToBoolean(coll["radTT"].ToString());
                db.quangcaos.InsertOnSubmit(qc);
                db.SubmitChanges();
                messenger = Lib.messenger(0, "Thêm quảng cáo thành công!");
            }
            catch (Exception ex) {
                messenger = Lib.messenger(2, "Thêm quảng cáo thất bại!");
            }
            ViewBag.error = messenger;
            return View();
        }

        // edit quang cao
        [HttpGet]
        public ActionResult Edit(string title, int id)
        {
            var qc = db.quangcaos.Where(x => x.id_adv == id).Single();
            ViewBag.Title = Conf.TITLE + "Thông tin quảng cáo - " + qc.ten;
            return View(qc);
        }

        // edit quang cao
        [HttpPost]
        public ActionResult Edit(FormCollection coll, HttpPostedFileBase file)
        {
            string txtTen = coll["txtTen"].ToString();
            string txtLink = coll["txtLink"].ToString();
            bool rad = Convert.ToBoolean(coll["radTT"].ToString());
            int id = Convert.ToInt32(coll["hdId"].ToString());
            var qc = db.quangcaos.Where(x => x.id_adv == id).Single();
            string nameFile = null;
            string messenger = "";
            DateTime dt = DateTime.Now;

            // upload file
            if (file != null && file.ContentLength > 0)
            {
                try
                {
                    // xoa file:
                    ///Lib.deleteFile(qc.hinhanh, "~/adv/");==> hinh da duoc xoa bang ajax

                    string path = Path.Combine(Server.MapPath("~/adv"));
                    nameFile = dt.Year + "-" + dt.Month + "-" + dt.Day + "-" + dt.Hour + "-" + dt.Minute + "-" + dt.Second + "-" + dt.Millisecond + Path.GetExtension(file.FileName);
                    file.SaveAs(Path.Combine(path, nameFile));
                    ViewBag.file = "File uploaded successfully!";
                }
                catch (Exception ex)
                {
                    ViewBag.file = ex.ToString();
                }
            }
            // update database:
            try
            {
                if (rad == true)
                {
                    quangcao qc1 = db.quangcaos.Where(x => x.trangthai == true).Single();
                    qc1.trangthai = false;
                }
                if (nameFile != null)
                {
                    qc.hinhanh = nameFile;
                }
                qc.link = txtLink;
                qc.ten = txtTen;
                qc.trangthai = rad;
                db.SubmitChanges();
                messenger = Lib.messenger(0, "Cập nhật thành công!");
            }
            catch (Exception ex)
            {
                messenger = Lib.messenger(2, "ERROR : "+ex.ToString());
            }

            ViewBag.Title = Conf.TITLE + "Thông tin quảng cáo - "+qc.ten;
            ViewBag.error = messenger;
            return View(qc);
        }

        // ajax delete file:
        public PartialViewResult DeleteFile(FormCollection coll) {
            int id = Convert.ToInt32(coll["id"].ToString());
            string name = coll["name"].ToString();
            var qc = db.quangcaos.Where(x => x.id_adv == id).Single();
            qc.hinhanh = null;
            Lib.deleteFile(name,"~/adv/");
            return PartialView();
        }
    }
}
