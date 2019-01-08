using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FMStyle.Config;
using System.IO;

namespace FMStyle.Libraries
{
    public class Lib
    {
        // convert fecimal to Format VietNam dong:
        public static string convertToVietNamDong(decimal price) {
            return String.Format("{0:0,0 VNĐ}", price);
        }

        // size quan ao:
        public static readonly string[] SIZE_CL = new string[] { "S", "M", "L", "XL", "XXL" };

        // cat chuoi:
        public static string catChuoi(string str, int doDai)
        {
            if (str.Length > doDai)
            {
                if (str.Substring(doDai + 1) != " ")
                {
                    string strCut = str.Substring(0, doDai);
                    string sf = strCut.Substring(0, strCut.LastIndexOf(' '));
                    return sf + "...";
                }
                else
                    return str + "...";
            }
            else
                return str;
        }


        // loai bo dau tieng viet:
        public static string VietNamToEnglish(string vnString)
        {

            string[] arr1 = new string[] { "á", "à", "ả", "ã", "ạ", "â", "ấ", "ầ", "ẩ", "ẫ", "ậ", "ă", "ắ", "ằ", "ẳ", "ẵ", "ặ",
                "đ",
                "é","è","ẻ","ẽ","ẹ","ê","ế","ề","ể","ễ","ệ",
                "í","ì","ỉ","ĩ","ị",
                "ó","ò","ỏ","õ","ọ","ô","ố","ồ","ổ","ỗ","ộ","ơ","ớ","ờ","ở","ỡ","ợ",
                "ú","ù","ủ","ũ","ụ","ư","ứ","ừ","ử","ữ","ự",
                "ý","ỳ","ỷ","ỹ","ỵ"," "};
            string[] arr2 = new string[] { "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a", "a",
                "d",
                "e","e","e","e","e","e","e","e","e","e","e",
                "i","i","i","i","i",
                "o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o","o",
                "u","u","u","u","u","u","u","u","u","u","u",
                "y","y","y","y","y","-"};
            for (int i = 0; i < arr1.Length; i++)
            {
                vnString = vnString.Replace(arr1[i], arr2[i]);
                vnString = vnString.Replace(arr1[i].ToUpper(), arr2[i].ToUpper());
            }
            return vnString;
        }

        // lay ten nguoi dung:
        public static string getNameUser(string name)
        {
            return name.Substring(name.LastIndexOf(' '), name.Length - name.LastIndexOf(' '));
        }

        // paging:
        public static string pagingPage(string url, int sum, int current) {
            if (sum <= Conf.TAKE_ROWS)
                return "";
            string str = "<div style=\"text-align: center\"><span id = \"\" ><div style = \"clear: both\" ></ div><ul> ";
            double page = Math.Ceiling((double)sum / Conf.TAKE_ROWS);
            for (int i = 0; i < page; i++) {
                if (current == i)
                    str += "<li class=\"lipt\"> <a href = \"" + url + "-page-" + i + ".html\" class=\"aptSe\">" + (i + 1) + "</a></li>";
                else
                    str += "<li class=\"lipt\"> <a href = \"" + url + "-page-" + i + ".html\" class=\"apt\">" + (i + 1) + "</a></li>";
            }
            return str + "</ul></ span></ div> ";
        }

        // paging public;
        public static string pagingPagePublic(string url, int sum, int current, bool take = false) {
            if (take == false)
            {
                if (sum <= Conf.TAKE_ROWS_PUBLIC)
                    return "";
            }
            else {
                if (sum < Conf.TAKE_ROWS_PRO_PUBLIC)
                    return "";
            }
            string str = "<div class=\"phantrang\"><ul class=\"page\">";
            double sumPage = 0;
            if (take == false)
            {
                sumPage = Math.Ceiling((double)sum / Conf.TAKE_ROWS_PUBLIC);
            }
            else {
                sumPage = Math.Ceiling((double)sum / Conf.TAKE_ROWS_PRO_PUBLIC);
            }

            for (int i = 0; i < sumPage; i++) {
                if (current == i)
                {
                    str += "<li class=\"\"> <a href=\"" + url + "-page-" + i + ".html\" class=\"currentpage\">" + (i + 1) + "</a></li>";
                }
                else {
                    str += "<li class=\"\"> <a href=\"" + url + "-page-" + i + ".html\" class=\"pagea\">" + (i + 1) + "</a></li>";
                }
            }
            return str + "</ul></div>";
        }

        // convert to double :
        public static double convertToDouble(double group) {
            return Convert.ToDouble(string.Format("{0:N1}", group));
        }

        // messenger:
        public static string messenger(int type = 0, string mess = "") {
            string str = "";
            switch (type)
            {
                case 0:
                    str = "<div class=\"success\"> <div class=\"tl\"></div><div class=\"tr\"></div> <div class=\"desc\"> <p>" + mess + "</p></div> <div class=\"bl\"></div><div class=\"br\"></div> </div>";
                    break;
                case 1:
                    str = "<div class=\"notice\"><div class=\"tl\"></div><div class=\"tr\"></div><div class=\"desc\"><p>" + mess + "</p></div><div class=\"bl\"></div><div class=\"br\"></div></div>";
                    break;
                case 2:
                    str = "<div class=\"error\"><div class=\"tl\"></div><div class=\"tr\"></div><div class=\"desc\"><p>" + mess + "</p></div><div class=\"bl\"></div><div class=\"br\"></div></div>";
                    break;
            }
            return str;
        }

        // delete file:
        public static bool deleteFile(string name, string directory = "~/uploads/")
        {
            string path = Path.Combine(System.Web.HttpContext.Current.Server.MapPath(directory) + name);
            try
            {
                if (System.IO.File.Exists(path))
                    System.IO.File.Delete(path);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        // mesenger public :
        public static string messengerPublic(string content) {
            return "<p style = \"font-weight:bold; color:red\">"+ content + "</p>";
        }
    }
}