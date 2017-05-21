using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sistema_Web_trivias_2.Controllers
{
    public class VistasController : Controller
    {
        // GET: Vistas
        public ActionResult Index()
        {
            return View();
        
        
        }
        public ActionResult Blank()
        {
            return View();


        }
        public ActionResult listaTrivias()
        {
            return View();


        }
    }
}