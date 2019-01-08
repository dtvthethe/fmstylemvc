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
    public class DanhMucController : Controller
    {
        public DanhMucController() {
            Login l = new Login();
        }
        // connect to database:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        // get parent category:
        public List<danhmuc> GetParent() {
            List<danhmuc> danhMuc = db.danhmucs.ToList();
            List<danhmuc> parent = new List<danhmuc>();
            foreach (var item in danhMuc)
            {
                if (item.groupdanhmuc.ToString().Split(Conf.CHAR_PLIT)[1].Equals("1"))
                    parent.Add(item);
            }
            return parent;
        }

        // get data table: danhmuc:
        public List<object> GetDanhMuc() {
            var danhMuc = db.danhmucs.ToList();
            List<danhmuc> parent = this.GetParent();
            List<danhmuc> chidr = new List<danhmuc>();
            double group = Double.Parse(parent[0].groupdanhmuc.ToString()) + 0.1;
            chidr = danhMuc.Where(x => x.groupdanhmuc == group).ToList();
            List<object> list = new List<object>();
            list.Add(parent);
            list.Add(chidr);
            return list;
        }
        
        // GET: /DanhMuc/
        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE+"Danh mục";
            List<object> list = this.GetDanhMuc();
            return View(list);
        }
        // POST: delete danh muc:
        [HttpPost]
        public ActionResult Index(FormCollection coll)
        {
            string mess="";
            
            if (coll["btnDelPar"] != null)
            {
                for (int i = 0; i < db.danhmucs.Count(); i++)
                {
                    if (coll[i.ToString() + ".par"] != null)
                    {
                        var del = db.danhmucs.Where(x => x.id_danhmuc == Convert.ToInt32(coll[i.ToString() + ".par"])).Single();
                        var delChild = db.danhmucs.Where(x => x.groupdanhmuc ==( Convert.ToDouble(del.groupdanhmuc)+0.1)).ToList();
                        foreach (var item in delChild) {
                            var delProd = db.san_phams.Where(x => x.id_danhmuc == item.id_danhmuc).ToList();
                            foreach (var va in delProd)
                            {
                                if (va.hinhanh.ToString() != "") {
                                    string path = Path.Combine(Server.MapPath("~/uploads/") + va.hinhanh);
                                    if (System.IO.File.Exists(path))
                                        System.IO.File.Delete(path);
                                }
                                db.san_phams.DeleteOnSubmit(va);
                            }
                            db.danhmucs.DeleteOnSubmit(item);
                        }
                        db.danhmucs.DeleteOnSubmit(del);
                       // db.SubmitChanges();
                    }
                }
                db.SubmitChanges();
                mess = Lib.messenger(0, "Cập nhật thành công!");
            }
            if (coll["btnDelChil"] != null)
            {
                for (int i = 0; i < db.danhmucs.Count(); i++)
                {
                    if (coll[i.ToString() + ".chil"] != null)
                    {
               
                        var del = db.danhmucs.Where(x => x.id_danhmuc == Convert.ToInt32(coll[i.ToString() + ".chil"])).Single();
                        var delProd = db.san_phams.Where(x => x.id_danhmuc == del.id_danhmuc).ToList();
                        //foreach (var item in delProd) {
                        //    db.san_phams.DeleteOnSubmit(item);
                        //}
                        db.san_phams.DeleteAllOnSubmit(delProd);
                        db.danhmucs.DeleteOnSubmit(del);
                        //db.SubmitChanges();
                    }
                }
                db.SubmitChanges();
                mess = Lib.messenger(0, "Cập nhật thành công!");
            }
            ViewBag.error = mess;
            ViewBag.Title = Conf.TITLE + "Danh mục";
            List<object> list = this.GetDanhMuc();
            return View(list);
        }

        // add new parent:
        public ActionResult AddParent() {
            ViewBag.Title = Conf.TITLE+"Thêm danh mục Level 1";
            return View();
        }

        // add new parent:
        [HttpPost]
        public ActionResult AddParent(FormCollection coll)
        {
            string result = "";
            ViewBag.Title = Conf.TITLE + "Thêm danh mục cha";
            var queryDanhMuc = db.danhmucs.OrderByDescending(x => x.groupdanhmuc).First();
            double group = Convert.ToInt32(queryDanhMuc.groupdanhmuc.ToString().Split(Conf.CHAR_PLIT)[0]) + 1.1;
            try
            {
                danhmuc d = new danhmuc();
                d.ten_danhmuc = coll["txtTen"];
                d.groupdanhmuc = group;
                db.danhmucs.InsertOnSubmit(d);
                db.SubmitChanges();
                result = Lib.messenger(0, "Thêm danh mục thành công!");
            }
            catch (Exception ex) {
                result = Lib.messenger(2, "Thêm danh mục thất bại!");
            }
            ViewBag.error = result;
            return View();
        }

        // add new Childrent
        public ActionResult AddChildrent()
        {
            var danhMucPar = this.GetParent();
            ViewBag.Title = Conf.TITLE + "Thêm danh mục Level 2";
            return View(danhMucPar);
        }

        // add new Childrent:
        [HttpPost]
        public ActionResult AddChildrent(FormCollection coll)
        {
            string result = "";
            var danhMucPar = this.GetParent();
            ViewBag.Title = Conf.TITLE + "Thêm danh mục con";
            string group = coll["cmbDanhMuc"];
            try
            {
                danhmuc d = new danhmuc();
                d.ten_danhmuc = coll["txtTen"];
                d.groupdanhmuc = Convert.ToDouble(group);
                db.danhmucs.InsertOnSubmit(d);
                db.SubmitChanges();
                result = Lib.messenger(0, "Thêm danh mục thành công! ");
            }
            catch (Exception ex)
            {
                result = Lib.messenger(2, "Thêm danh mục thất bại!");
            }
            ViewBag.error = result;
            return View(danhMucPar);
        }

        //edit parent category:
        public ActionResult EditParentDanhMuc(string title, int id) {
            var danhMuc = db.danhmucs.Where(x => x.id_danhmuc == id).Single();
            ViewBag.Title = Conf.TITLE + "Danh mục " +danhMuc.ten_danhmuc;
            return View(danhMuc);
        }

        //edit parent category:
        [HttpPost]
        public ActionResult EditParentDanhMuc(FormCollection coll)
        {
            string mess = "";
            int id = Convert.ToInt32(coll["hdId"]);
            string txtTen = coll["txtTen"].ToString();
            var danhMuc = db.danhmucs.Where(x => x.id_danhmuc == id).Single();
            ViewBag.Title = Conf.TITLE + "Danh mục " + danhMuc.ten_danhmuc;
            try
            {
                danhMuc.ten_danhmuc = txtTen;
                db.SubmitChanges();
                mess = Lib.messenger(0, "Cập nhật thành công");
            }
            catch (Exception ex)
            {
                mess = Lib.messenger(2, "Cập nhật thất bại : " + ex.ToString());
            }
            
            ViewBag.error = mess;
            return View(danhMuc);
        }

        //edit chidrent category:
        public ActionResult EditChildrentDanhMuc(string title, int id)
        {
            danhmuc danhMuc = db.danhmucs.Where(x => x.id_danhmuc == id).Single();
            ViewBag.Title = Conf.TITLE + "Danh mục " + danhMuc.ten_danhmuc;
            List<danhmuc> listDanhMuc = this.GetParent();
            List<object> list = new List<object>();
            list.Add(danhMuc);
            list.Add(listDanhMuc);
            return View(list);
        }

        //edit chidrent category:
        [HttpPost]
        public ActionResult EditChildrentDanhMuc(FormCollection coll)
        {
            string mess = "";
            int id = Convert.ToInt32(coll["hdId"].ToString());
            string txtTen = coll["txtTen"].ToString();
            string group = (Convert.ToDouble(coll["cmbDanhMuc"].ToString())+0.1).ToString();
            danhmuc danhMuc = db.danhmucs.Where(x => x.id_danhmuc == id).Single();

            try
            {
                danhMuc.ten_danhmuc = txtTen;
                danhMuc.groupdanhmuc = Convert.ToDouble(group);
                db.SubmitChanges();
                mess = Lib.messenger(0, "Cập nhật thành công!");
            }
            catch (Exception ex) {
                mess = Lib.messenger(2, "Cập nhật thất bại!");
            }
            ViewBag.Title = Conf.TITLE + "Danh mục " + danhMuc.ten_danhmuc;
            List<danhmuc> listDanhMuc = this.GetParent();
            List<object> list = new List<object>();
            list.Add(danhMuc);
            list.Add(listDanhMuc);
            ViewBag.error = mess;
            return View(list); ;
        }
        // ajax load childrent:
        public PartialViewResult AjaxLoadChildrent(FormCollection coll) {
            double group = Math.Round((Double.Parse(coll["id"].ToString()) + 0.1), 2);
            var result = db.danhmucs.Where(x => x.groupdanhmuc == group).ToList();
            return PartialView(result);
        }
    }
}
