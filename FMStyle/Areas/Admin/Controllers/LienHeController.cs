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
    public class LienHeController : Controller
    {
        public LienHeController() {
            Login l = new Login();
            l.RedirectPacge();
        }

        // database context:
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        //
        // GET: /LienHe/
        public ActionResult Index(int page = 0)
        {
            ViewBag.Title = Conf.TITLE + "Liên hệ";
            List<MLienHe> lienHes = (from lh in db.lien_hes
                          join vi in db.view_lienhes on lh.id_lienhe equals vi.id_lienhe into cv
                          from lhh in cv.Where(x => x.id_user == ((MLogin)Session["user"]).id).DefaultIfEmpty() orderby lh.id_lienhe descending
                          select new MLienHe ( lh.id_lienhe, lh.hoten, Convert.ToDateTime(lh.ngaygui), lh.email, lh.sdt, lhh.id_user)).Skip(page*Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();

            ViewBag.paging = Lib.pagingPage("/admin/lien-he",db.lien_hes.Count(),page);
            return View(lienHes);
        }

        // delete:
        [HttpPost]
        public ActionResult Index(FormCollection coll) {
            ViewBag.Title = Conf.TITLE + "Liên hệ";
            string messenger = "";
            try
            {
                for (int i = 0; i < Conf.TAKE_ROWS; i++)
                {
                    if (coll[i.ToString() + ".del"] != null)
                    {
                        var view = db.view_lienhes.Where(x => x.id_lienhe == Convert.ToInt32(coll[i.ToString() + ".del"].ToString())).ToList();
                        db.view_lienhes.DeleteAllOnSubmit(view);
                        db.lien_hes.DeleteOnSubmit(db.lien_hes.Where(x => x.id_lienhe == Convert.ToInt32(coll[i.ToString() + ".del"].ToString())).Single());
                    }
                }
                db.SubmitChanges();
                messenger = Lib.messenger(0, "Xóa thành công!");
            }
            catch (Exception ex) {
                messenger = Lib.messenger(2, ex.ToString());
            }
            ViewBag.error = messenger;
            return Redirect(Request.Url.ToString());
        }

        // view lien he:
        public ActionResult ViewLienHe(int id) {
            ViewBag.Title = Conf.TITLE+"Nội dung liên hệ";
            var v = db.lien_hes.Where(x => x.id_lienhe == id).Single();
            if (db.view_lienhes.Where(x=>x.id_lienhe == id).Where(x=>x.id_user == ((MLogin)Session["user"]).id).Count()==0) {
                // thuc hien them vao bang view_lienhe:
                view_lienhe vi = new view_lienhe();
                vi.id_lienhe = id;
                vi.id_user = ((MLogin)Session["user"]).id;
                db.view_lienhes.InsertOnSubmit(vi);
                db.SubmitChanges();
            }
            return View(v);
        }

        // count lien_he:
        public PartialViewResult CountLienHe() {
            int count = db.lien_hes.Count() - db.view_lienhes.Where(x => x.id_user == ((MLogin)Session["user"]).id).Count();
            ViewBag.count = count;
            return PartialView();
        }
    }
}
