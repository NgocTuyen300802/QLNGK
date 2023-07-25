using _2001200647_QLNUOCGIAIKHAT.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace _2001200647_QLNUOCGIAIKHAT.Models
{
    public class CartModel
    {
        WEBNUOCGIAIKHATEntities4 db = new WEBNUOCGIAIKHATEntities4();


        public int iCategoryID { get;  set; }
        public string sName { get; private set; }
        public string iImage { get; set; }
        public int iSoLuong { get; set; }
        public double dPrice { get; set; }
        public double iThanhTien { get { return iSoLuong * dPrice; } }
        public CartModel(int ma)
        {
            iCategoryID = ma;
            Product pro = db.Products.Single(sp => sp.CategoryID == iCategoryID);
            sName = pro.Name;
            iImage = pro.Image;
            iSoLuong = 1;
            dPrice = double.Parse(pro.Price.ToString());
        }
    }
}