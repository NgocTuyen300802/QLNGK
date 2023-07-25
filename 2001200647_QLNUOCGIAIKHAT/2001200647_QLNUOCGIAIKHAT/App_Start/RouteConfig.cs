using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace _2001200647_QLNUOCGIAIKHAT
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "Register",
                url: "dang-ky",
                defaults: new { Controller = "User", action = "Register", id = UrlParameter.Optional },
                namespaces: new[] { "2001200647_QLNUOCGIAIKHAT.Controllers" }
                );
            routes.MapRoute(
             name: "Contact",
             url: "lie-he",
             defaults: new { Controller = "Contact", action = "Index", id = UrlParameter.Optional },
             namespaces: new[] { "2001200647_QLNUOCGIAIKHAT.Controllers" }
             );
            routes.MapRoute(
             name: "Cart",
             url: "gio-hang",
             defaults: new { Controller = "Cart", action = "Index", id = UrlParameter.Optional },
             namespaces: new[] { "2001200647_QLNUOCGIAIKHAT.Controllers" }
             );
        }
    }
}
