using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using _2001200647_QLNUOCGIAIKHAT.Context;

namespace _2001200647_QLNUOCGIAIKHAT.Areas.Admin.Controllers
{
    public class Product_AdminController : Controller
    {
        private WEBNUOCGIAIKHATEntities4 db = new WEBNUOCGIAIKHATEntities4();

        // GET: Admin/Product_Admin
        // hiện ra danh sách
        public ActionResult Index()
        {
            return View(db.Products.ToList());
        }

        // GET: Admin/Product_Admin/Details/5
        // hiện chi tiết 
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: Admin/Product_Admin/Create
        // hiện thêm
        public ActionResult Create()
        {

            return View();
        }

        // POST: Admin/Product_Admin/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        // xử lý chức năng thêm
        public ActionResult Create([Bind(Include = "Id,Name,CategoryID,FullDescription,Image,Price")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(product);
        }

        // GET: Admin/Product_Admin/Edit/5
        // hiệm ra cập nhật
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Admin/Product_Admin/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        // xử lý chức năng cập nhật
        public ActionResult Edit([Bind(Include = "Id,Name,CategoryID,FullDescription,Image,Price")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(product);
        }


        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: Admin/Product_Admin/ Destroy/5
        //// xóa
        //[HttpPost, ActionName(" Destroy")]
        //[ValidateAntiForgeryToken]
        //public ActionResult DestroyConfirmed(int id)
        //{
        //    Product product = db.Products.Find(id);
        //    db.Products.Remove(product);
        //    db.SaveChanges();
        //    return RedirectToAction("Index");
        }
        // GET: Admin/Product_Admin/Delete/5
        // xóa vào thùng rác Status=0

        // GET: Admin/Product_Admin/Status/5
    }

