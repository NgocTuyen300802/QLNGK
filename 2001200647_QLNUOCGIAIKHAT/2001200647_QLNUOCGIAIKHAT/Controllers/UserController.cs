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

namespace _2001200647_QLNUOCGIAIKHAT.Controllers
{
    public class UserController : Controller
    {


        //GET: User
            [HttpGet]
            public ActionResult Register()
            {
                return View();

            }




            public ActionResult Login()
            {
                return View();
            }
        }
       

}