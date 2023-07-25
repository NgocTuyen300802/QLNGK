using _2001200647_QLNUOCGIAIKHAT.Context;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace _2001200647_QLNUOCGIAIKHAT.Controllers
{
    public class ProductController : Controller
    {

        // GET: Product
        public ActionResult Index()
        {
            WEBNUOCGIAIKHATEntities4 db = new WEBNUOCGIAIKHATEntities4();
            List<Product> pro = db.Products.ToList();
            return View(pro);
        }

        public ActionResult Main1() {
            WEBNUOCGIAIKHATEntities4 db = new WEBNUOCGIAIKHATEntities4();
            List<Product> pro = db.Products.Where(row => row.CategoryID == 1).ToList();
            return View(pro);
        }
        public ActionResult Main2()
        {
            WEBNUOCGIAIKHATEntities4 db = new WEBNUOCGIAIKHATEntities4();
            List<Product> pro = db.Products.Where(row => row.CategoryID == 2).ToList();
            return View(pro);
        }
        public ActionResult Main5()
        {
            WEBNUOCGIAIKHATEntities4 db = new WEBNUOCGIAIKHATEntities4();
            List<Product> pro = db.Products.Where(row => row.CategoryID == 5).ToList();
            return View(pro);
        }
        public ActionResult Main10()
        {
            WEBNUOCGIAIKHATEntities4 db = new WEBNUOCGIAIKHATEntities4();
            List<Product> pro = db.Products.Where(row => row.CategoryID == 10).ToList();
            return View(pro);



        }
        public ActionResult detail(int id)
        {
            WEBNUOCGIAIKHATEntities4 db = new WEBNUOCGIAIKHATEntities4();
            Product pro = db.Products.Where(row => row.Id == id).FirstOrDefault();

            return View(pro);

        }
        [HttpPost]
        public ActionResult Search(string search = "")
        {
            WEBNUOCGIAIKHATEntities4 db = new WEBNUOCGIAIKHATEntities4();
            List<Product> pro = db.Products.Where(row => row.Name.Contains(search)).ToList();
            ViewBag.Search = search;
            return View(pro);
        }
       

    }
}
   

