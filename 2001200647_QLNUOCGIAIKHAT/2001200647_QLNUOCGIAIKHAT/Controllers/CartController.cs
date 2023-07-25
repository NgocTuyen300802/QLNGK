using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using _2001200647_QLNUOCGIAIKHAT.Context;
using _2001200647_QLNUOCGIAIKHAT.Models;

namespace _2001200647_QLNUOCGIAIKHAT.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        WEBNUOCGIAIKHATEntities4 db = new WEBNUOCGIAIKHATEntities4();
        public ActionResult Index()
        {
            return View();
        }
        public List<Cart1> LayGioHang()
        {
            List<Cart1> lstGioHang = Session["GioHang"] as List<Cart1>;
            if (lstGioHang == null)
            {
                lstGioHang = new List<Cart1>();
                Session["GioHang"] = lstGioHang;
            }
            return lstGioHang;
        }

         public ActionResult ThemGioHang(int ms, string strURL)
         {
             // Lấy ra giỏ hàng
             List<Cart1> lstGioHang = LayGioHang();
             //Kiểm tra sách này có tồn tại trong Session["GioHang"] chưa ?
             Cart1 SanPham = lstGioHang.Find(sp => sp.iCategoryID == ms);
             if (SanPham == null) // chưa có trong giỏ
             {
                SanPham = new Cart1(ms);
                lstGioHang.Add(SanPham);
                return Redirect(strURL);
            }
            else // đã có sản phẩm này trong giỏ
            {
                SanPham.iSoLuong++;
                return Redirect(strURL);
            }
        }
        // Tổng số lượng
        private int TongSoLuong()
        {
            int tsl = 0;
            List<Cart1> lstGioHang = Session["GioHang"] as List<Cart1>;
            if (lstGioHang != null)
            {
                tsl += lstGioHang.Sum(sp => sp.iSoLuong);
            }
            return tsl;
        }
        // Tổng Thành tiền
        private double TongThanhTien()
        {
            double ttt = 0;
            List<Cart1> lstGioHang = Session["GioHang"] as List<Cart1>;
            if (lstGioHang != null)
            {
                ttt += lstGioHang.Sum(sp => sp.iThanhTien);
            }
            return ttt;
        }
        // Xây dựng trang giỏ hàng
        public ActionResult GioHang()
        {
            if (Session["GioHang"] == null)
            {
                return RedirectToAction("Index", "GioHang");
            }
            List<Cart1> lstGioHang = LayGioHang();

            ViewBag.TongSoLuong = TongSoLuong();
            ViewBag.TongThanhTien = TongThanhTien();

            return View(lstGioHang);
        }

        public ActionResult GioHangPartial()
        {
            ViewBag.TongSoLuong = TongSoLuong();
            ViewBag.TongThanhTien = TongThanhTien();
            return PartialView();
        }


        public ActionResult CapNhatGioHang(int CategoryID, FormCollection f)
        {
            List<Cart1> listGioHang = LayGioHang();
            Cart1 sp = listGioHang.Single(s => s.iCategoryID == CategoryID);
            if (sp != null)
            {
                sp.iSoLuong = int.Parse(f["txtSoLuong"].ToString());
            }
            return RedirectToAction("GioHang", "Cart");
        }
    }
}