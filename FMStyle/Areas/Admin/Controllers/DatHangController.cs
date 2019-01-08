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
    public class DatHangController : Controller
    {
        public DatHangController() {
            Login l = new Login();
        }

        //connect to database :
        private DBFMStyleDataContext db = new DBFMStyleDataContext();

        // get promotion:
        private int GetPromotion() {
            return db.khuyenmais.Where(x => x.id_khuyenmai == Conf.ID_PROMOTION).Select(x => x.giatri).Single();
        }

        // get data from table dat_hang:
        private List<dat_hang> GetData(int skip=0) {
            return db.dat_hangs.OrderByDescending(x => x.id_dathang).Skip(skip).Take(Conf.TAKE_ROWS).ToList();
        }

        //count status order false;
        public PartialViewResult CountOrderStatusFalse() {
            int count = db.dat_hangs.Where(x => x.trang_thai == false).Count();
            ViewBag.count = count;
            return PartialView();
        }

        // GET: /DatHang/
        public ActionResult Index(int page = 0)
        {
            ViewBag.Title = Conf.TITLE + "Danh sách đặt hàng";
            int khuyenMai = db.khuyenmais.Where(x => x.id_khuyenmai == Conf.ID_PROMOTION).Select(x => x.giatri).Single();
            List<decimal> listSumPrice = new List<decimal>();
            List<dat_hang> listOrder = this.GetData(page * Conf.TAKE_ROWS);
            foreach (var item in listOrder) {
                decimal price = 0;
                for (int i = 0; i < item.dat_hang_details.ToList().Count; i++) {
                    if (item.dat_hang_details[i].san_pham.khuyenmai == true)
                    {
                        int percent = 100 - khuyenMai;
                        price += (percent * (item.dat_hang_details.ToList()[i].san_pham.gia * item.dat_hang_details[i].soluong))/100;
                    }
                    else {
                        price += item.dat_hang_details.ToList()[i].san_pham.gia * item.dat_hang_details[i].soluong;
                    }
                }
                listSumPrice.Add(price);
            }
            ViewBag.status = -1;
            List<object> listDatHang = new List<object>();
            listDatHang.Add(listSumPrice);
            listDatHang.Add(listOrder);
            ViewBag.Paging = Lib.pagingPage("/admin/dat-hang", db.dat_hangs.Count(), page);
            return View(listDatHang);
        }

        // delete order
        [HttpPost]
        public ActionResult Index(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE + "Danh sách đặt hàng";

            for (int i = 0; i < Conf.TAKE_ROWS; i++) {
                if (coll[i.ToString() + ".del"] != null) {
                    int id = Convert.ToInt32(coll[i.ToString() + ".del"].ToString());
                    // delete order detailt:
                    List<dat_hang_detail> orderDetailt = db.dat_hang_details.Where(x => x.id_dathang == id).ToList();
                    db.dat_hang_details.DeleteAllOnSubmit(orderDetailt);
                    //delete order:
                    dat_hang datHang = db.dat_hangs.Where(x => x.id_dathang == id).Single();
                    db.dat_hangs.DeleteOnSubmit(datHang);
                }
            }
            db.SubmitChanges();
            return Redirect(Request.Url.ToString());
        }

        // GET: /DatHang by ststus/
        public ActionResult DatHangStatus(int status = -1, int page = 0)
        {
            ViewBag.Title = Conf.TITLE + "Danh sách đặt hàng";
            List<decimal> listSumPrice = new List<decimal>();
            List<dat_hang> listOrder = null;
            int countRecort = 0;
            if (status == 0) {
                listOrder = db.dat_hangs.Where(x=>x.trang_thai == false).OrderByDescending(x => x.id_dathang).Skip(page*Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();
                countRecort = this.db.dat_hangs.Where(x => x.trang_thai == false).Count();
            }
            else if (status == 1) {
                listOrder = db.dat_hangs.Where(x => x.trang_thai == true).OrderByDescending(x => x.id_dathang).Skip(page * Conf.TAKE_ROWS).Take(Conf.TAKE_ROWS).ToList();
                countRecort = this.db.dat_hangs.Where(x => x.trang_thai == true).Count();
            }
            else
            {
                listOrder = this.GetData(page * Conf.TAKE_ROWS);
                countRecort = this.db.dat_hangs.Count();
            }
            foreach (var item in listOrder)
            {
                decimal price = 0;
                for (int i = 0; i < item.dat_hang_details.ToList().Count; i++)
                {
                    price += item.dat_hang_details.ToList()[0].san_pham.gia;
                }
                listSumPrice.Add(price);
            }
            
            ViewBag.status = status;
            List<object> listDatHang = new List<object>();
            listDatHang.Add(listSumPrice);
            listDatHang.Add(listOrder);
            ViewBag.Paging = Lib.pagingPage("/admin/dat-hang-status-"+status, countRecort, page);
            return View("~/Areas/Admin/Views/DatHang/Index.cshtml", listDatHang);


        }

        // pay:
        public ActionResult PayOrder(int id = -1,bool capt= false) {
            if (capt == true)
                ViewBag.error = Lib.messenger(1, "Mã CAPTCHA không đúng!");
            ViewBag.Title = Conf.TITLE + "Thanh toán đơn hàng";
            int promotion = this.GetPromotion();
            decimal tongTiem = 0;
            int indexCaptchar = new Random().Next(0, Conf.CAPCHAR.Length - 1);
            dat_hang dh = db.dat_hangs.Where(x => x.id_dathang == id).Single();
            List<san_pham> listSp = new List<san_pham>();
            List<int> soLuong = dh.dat_hang_details.Select(x => x.soluong).ToList();
            List<string> size = dh.dat_hang_details.Select(x => x.size).ToList();
            List<object> listCS = new List<object>();
            listCS.Add(soLuong);
            listCS.Add(size);
            foreach (dat_hang_detail item in dh.dat_hang_details) {
                san_pham p = db.san_phams.Where(x => x.id_sanpham == item.id_sanpham).Single();
                if(p.khuyenmai == true)
                {
                    int percent = 100 - promotion;
                    tongTiem += ((p.gia * percent) / 100)*item.soluong;
                }
                else
                    tongTiem += p.gia * item.soluong;
                listSp.Add(p);

            }
            List<object> list = new List<object>();
            list.Add(dh);
            list.Add(indexCaptchar);
            list.Add(listSp);
            list.Add(tongTiem);
            list.Add(listCS);
            if (id != -1)
            {
                return View(list);
            }
            else {
                return Redirect("/admin/dat-hang.html");
            }
        }
        // pay:
        [HttpPost]
        public ActionResult PayOrder(FormCollection coll)
        {
            ViewBag.Title = Conf.TITLE + "Thanh toán đơn hàng";
            
            if (coll["btnDel"] != null)
            {
                for (int i = 0; i < Convert.ToInt32(coll["hdCount"]); i++) {
                    if (coll[i.ToString() + ".del"] != null) {
                        db.dat_hang_details.DeleteOnSubmit(db.dat_hang_details.Where(x=>x.id_dathang == Convert.ToInt32(coll["hdIdDOrder"].ToString())).Where(x=>x.id_sanpham == Convert.ToInt32(coll[i.ToString() + ".del"])).Single());
                    }
                }
                db.SubmitChanges();
                return Redirect(Request.Url.ToString());
            }
            else {
                int indexCaptchar = Convert.ToInt32(coll["indexCapChar"].ToString());
                int id = Convert.ToInt32(coll["idHd"].ToString());
                string txtCaptChar = coll["txtXacNhan"].ToString();
                bool radTrangThai = false;
                if (Convert.ToBoolean(coll["rbStatus"].ToString()) == true)
                    radTrangThai = true;
                if (Conf.CAPCHAR[indexCaptchar] == txtCaptChar)
                {
                    dat_hang dh = db.dat_hangs.Where(x => x.id_dathang == id).Single();
                    dh.trang_thai = radTrangThai;
                    db.SubmitChanges();
                    return Redirect("/admin/dat-hang.html");
                }
                else
                    return RedirectToAction("PayOrder", new { @capt = true });
            }

        }
        // ajax product:
        [HttpPost]
        public PartialViewResult AjaxLoadProduct(FormCollection coll) {
            int id = Convert.ToInt32(coll["id"]);
            var pro = db.dat_hang_details.Where(x => x.id_dathang == id).ToList();
            return PartialView(pro);
        }

        //ajax load other image:
        [HttpPost]
        public PartialViewResult AjaxLoadOtherImage(FormCollection coll) {
            int current = Convert.ToInt32(coll["current"].ToString());
            List<int> listCaptchar = new List<int>();

            for (int i = 0; i < Conf.CAPCHAR.Length; i++)
                if (i != current)
                    listCaptchar.Add(i);
            
            int rad = new Random().Next(0, listCaptchar.Count - 1);
            int index = listCaptchar[rad];
            string []arr = new string[2];
            arr[0] = listCaptchar[index].ToString();
            arr[1] = Conf.IMG_CAPCHAR[index].ToString();
            ViewBag.capcha = arr;
            return PartialView();
        }
    }
}
