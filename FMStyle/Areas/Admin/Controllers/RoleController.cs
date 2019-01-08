using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using FMStyle.Areas.Admin.Models;
using FMStyle.Config;
using FMStyle.Libraries;

namespace FMStyle.Areas.Admin.Controllers
{
    public class RoleController : Controller
    {
        public RoleController() {
            Login l = new Login();
            l.RedirectPacge();
        }

        // database context:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        // get list role:
        private List<role> GetRole() {
            List <role> List = db.roles.ToList();
            return List;
        }

        // GET: /Role/
        public ActionResult Index()
        {
            ViewBag.Title = Conf.TITLE+"Quyền người dùng";
            return View(this.GetRole());
        }

        // Edit /Role/ 
        [HttpPost]
        public ActionResult Index(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE + "Quyền người dùng";
            bool cms = false;
            bool sp = false;
            for (int i = 0; i < this.GetRole().Count; i++) {
                if (coll[i.ToString() + ".del"] != null)
                {
                    db.roles.DeleteOnSubmit(db.roles.Where(x => x.id_role == Convert.ToInt32(coll[i.ToString() + ".del"])).Single());
                }
                else {
                    if (coll[i.ToString() + ".cms"] != null)
                        cms = true;
                    if (coll[i.ToString() + ".sp"] != null)
                        sp = true;
                    var up = db.roles.Where(x => x.id_role == Convert.ToInt32(coll[i.ToString() + ".idHd"])).Single();
                    up.special = sp;
                    up.truycap_cms = cms;
                    cms = false;
                    sp = false;
                }
            }
            try
            {
                db.SubmitChanges();
                ViewBag.error = Lib.messenger(0, "Lưu lại thành công!");
            }
            catch (Exception ex) {
                ViewBag.error = Lib.messenger(2, ex.ToString());
            }
            return View(this.GetRole());
        }

        // add role:
        [HttpGet]
        public ActionResult Add()
        {
            ViewBag.Title = Conf.TITLE + "Thêm quyền người dùng";
            return View();
        }

        // add role:
        [HttpPost]
        public ActionResult Add(FormCollection coll)
        {
            string ten = coll["txtTen"].ToString();
            bool trCap = Convert.ToBoolean(coll["chkTruyCap"].ToString());
            bool sp = Convert.ToBoolean(coll["cmbSp"].ToString());
            string messenger = "";
            try
            {
                role r = new role();
                r.role1 = ten;
                r.truycap_cms = trCap;
                r.special = sp;
                db.roles.InsertOnSubmit(r);
                db.SubmitChanges();
                messenger = Lib.messenger(0, "Thêm thành công!");
            }
            catch (Exception ex) {
                messenger = Lib.messenger(2, ex.ToString());
            }
            ViewBag.Title = Conf.TITLE + "Thêm quyền người dùng";
            ViewBag.error = messenger;
            return View();
        }

        //edit role:
        [HttpGet]
        public ActionResult Edit(string title, int id) {
            role ro = this.db.roles.Where(x => x.id_role == id).Single();
            ViewBag.Title = Conf.TITLE + "Thông tin quyền người dùng - "+ro.role1;
            return View(ro);
        }

        // edit role:
        [HttpPost]
        public ActionResult Edit(FormCollection coll) {
            int id = Convert.ToInt32(coll["idHd"].ToString());
            string ten = coll["txtTen"].ToString();
            bool trCap = Convert.ToBoolean(coll["chkTruyCap"].ToString());
            bool sp = Convert.ToBoolean(coll["cmbSp"].ToString());
            string messenger = "";
            role ro = this.db.roles.Where(x => x.id_role == id).Single();
            try
            {
                ro.role1 = ten;
                ro.truycap_cms = trCap;
                ro.special = sp;
                db.SubmitChanges();
                messenger = Lib.messenger(0, "Lưu thành công!");
            }
            catch (Exception ex)
            {
                messenger = Lib.messenger(2, ex.ToString());
            }
            
            ViewBag.Title = Conf.TITLE + "Thông tin quyền người dùng - " + ro.role1;
            ViewBag.error = messenger;
            return View(ro);
        }
    }
}
