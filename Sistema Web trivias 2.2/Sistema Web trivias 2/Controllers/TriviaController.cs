using Sistema_Web_trivias_2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sistema_Web_trivias_2.Controllers
{
    public class TriviaController : Controller
    {
        // GET: Trivia

        public ActionResult Index()
        {
            return RedirectToAction("ListaTrivia");
        }
        public ActionResult CrearTrivia()
        {

 
            return View();
        }
        [HttpPost]
        public ActionResult CrearTrivia(Models.Trivia listaACrear)
        {
            listaACrear.Email = System.Web.HttpContext.Current.Session["sessionEmail"] as String;
            listaACrear.AgregarTrivia(listaACrear.Email);
            return RedirectToAction("ListaTrivia");
        }
        public ActionResult EditarTrivia(int id)
        {
            var lista = new Models.Trivia();
            if (lista.Seleccionar(id))
            {
                return View(lista);
            }
            else
            {
                return View(string.Empty);
            }
        }
        [HttpPost]
        public ActionResult EditarTrivia(int id,Models.Trivia listaAEditar)
        {
            listaAEditar.Modificar(id);
            return RedirectToAction("ListaTrivia");
        }
        public ActionResult EliminarTrivia(int id)
        {
            var lista = new Models.Trivia();
            if (lista.Seleccionar(id))
            {
                return View(lista);
            }
            else
            {
                return View(string.Empty);
            }
        }
        [HttpPost]
        public ActionResult EliminarTrivia(int id,Models.Trivia listaAEditar)
        {
             listaAEditar.Eliminar(id);
            return RedirectToAction("ListaTrivia");
        }
        public ActionResult ListaTrivia()
        {
            var Trivia = new Trivia();
            return View(Trivia.ListaTrivias());
        }
        public ActionResult ListaPreguntas(int id)
        {
            var Trivia = new Trivia();
            return View(Trivia.LLenarPreguntas(id));
        }

        public ActionResult DetallesTrivia(int id)
        {
            var lista = new Models.Trivia();
            if (lista.Seleccionar(id))
            {
                return View(lista);
            }
            else
            {
                return View(string.Empty);
            }

        }

        public ActionResult _CrearTrivia()
        {
            return PartialView();
        }
        [HttpPost]
        public ActionResult _CrearTrivia(Models.Trivia listaACrear)
        {
            listaACrear.Email = System.Web.HttpContext.Current.Session["sessionEmail"] as String;
            listaACrear.AgregarTrivia(listaACrear.Email);
            return RedirectToAction("ListaTrivia");
        }

        public ActionResult _EditarTrivia(int id)
        {
            var lista = new Models.Trivia();
            if (lista.Seleccionar(id))
            {
                return PartialView(lista);
               
            }
            else
            {
                return PartialView(string.Empty);
            }
        }
        [HttpPost]
        public ActionResult _EditarTrivia(int id, Models.Trivia listaAEditar)
        {
            listaAEditar.Modificar(id);
            return RedirectToAction("ListaTrivia");
        }

        [ChildActionOnly]
        public ActionResult VerTrivia(int id)
        {
            var lista = new Models.Trivia();
            if (lista.Seleccionar(id))
            {
                return PartialView(lista);

            }
            else
            {
                return PartialView(string.Empty);
            }
        }
        public ActionResult _EliminarTrivia(int id)
        {
            var lista = new Models.Trivia();
            if (lista.Seleccionar(id))
            {
                return PartialView(lista);
            }
            else
            {
                return PartialView(string.Empty);
            }
        }
        [HttpPost]
        public ActionResult _EliminarTrivia(int id, Models.Trivia listaAEditar)
        {
            listaAEditar.Eliminar(id);
            return RedirectToAction("ListaTrivia");
        }

        public ActionResult _DetallesTrivia(int id)
        {
            var lista = new Models.Trivia();
            if (lista.Seleccionar(id))
            {
                return PartialView(lista);
            }
            else
            {
                return PartialView(string.Empty);
            }

        }
    }
}