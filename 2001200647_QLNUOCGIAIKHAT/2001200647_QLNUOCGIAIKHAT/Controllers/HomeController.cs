using _2001200647_QLNUOCGIAIKHAT.Context;
using _2001200647_QLNUOCGIAIKHAT.Models;
using Microsoft.Owin.Host;
using Microsoft.Owin;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Entity;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Mvc;

namespace _2001200647_QLNUOCGIAIKHAT.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        WEBNUOCGIAIKHATEntities4 objModel = new WEBNUOCGIAIKHATEntities4();
        public ActionResult Index()
        {
            var lstCategory = objModel.Categories.ToList();
            var lstProduct = objModel.Products.ToList();
            Product_Category objProduct_Category = new Product_Category();
            objProduct_Category.ListCategory = lstCategory;
            objProduct_Category.ListProduct = lstProduct;


            return View(objProduct_Category);
        }
    }
}