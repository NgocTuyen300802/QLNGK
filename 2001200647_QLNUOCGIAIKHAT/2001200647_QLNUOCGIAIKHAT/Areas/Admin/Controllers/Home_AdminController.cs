using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Microsoft.Owin;
using Microsoft.Owin.Host;

namespace _2001200647_QLNUOCGIAIKHAT.Areas.Admin.Controllers
{
    public class Home_AdminController : Controller
    {
        // GET: Admin/AdminProduct
        public ActionResult Index()
        {
            return View();
        }
    }
}