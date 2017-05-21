using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sistema_Web_trivias_2.Controllers
{
    public class EstadisticasController : Controller
    {
        // GET: Estadisticas
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Trivia()
        {
            return View();
        }
        public ActionResult Alumno()
        {
            return View();
        }
    }
}