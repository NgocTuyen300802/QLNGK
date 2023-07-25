using _2001200647_QLNUOCGIAIKHAT.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Helpers;
using Microsoft.AspNet.Identity;
using System.Web.Security;
using Microsoft.Owin.Security;
using System.Security.Claims;
using System.Data.Entity.SqlServer;
namespace _2001200647_QLNUOCGIAIKHAT.Controllers
{
    public class ContactController : Controller
    {
        // GET: Contact
        public ActionResult Index()
        {
            return View();
        }
    }
}