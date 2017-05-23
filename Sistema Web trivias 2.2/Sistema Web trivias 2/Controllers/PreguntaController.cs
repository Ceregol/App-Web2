using Sistema_Web_trivias_2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sistema_Web_trivias_2.Controllers
{
    public class PreguntaController : Controller
    {
        // GET: Pregunta
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult CrearPregunta(int id)
        {
            if (Session["sessionEmail"] != null)
            {
                Pregunta model = new Pregunta();
                model.Id_Trivia = id;
                return View(model);
            }
            else
            {
                return Redirect("/");
            }
        }

        [HttpPost]
        public ActionResult CrearPregunta(int id,Models.Pregunta listaACrear)
        {
            listaACrear.AgregarPregunta(id);
            return RedirectToAction("ListaTrivia", "trivia");
        }


        public ActionResult EditarPregunta(int id)
        {
            if (Session["sessionEmail"] != null)
            {
                var lista = new Models.Pregunta();
                if (lista.Seleccionar(id))
                {
                    return View(lista);
                }
                else
                {
                    return View(string.Empty);
                }
            }
            else
            {
                return Redirect("/");
            }
        }
        [HttpPost]
        public ActionResult EditarPregunta(int id, Models.Pregunta listaAEditar)
        {
            listaAEditar.Editar(id);
            return RedirectToAction("ListaPregunta");
        }
        public ActionResult EliminarPregunta(int id)
        {
            if (Session["sessionEmail"] != null)
            {
                var lista = new Models.Pregunta();
                if (lista.Seleccionar(id))
                {
                    return View(lista);
                }
                else
                {
                    return View(string.Empty);
                }
            }
            else
            {
                return Redirect("/");
            }
        }
        

        public ActionResult ListaAlternativas(int id)
        {
            if (Session["sessionEmail"] != null)
            {
                var Pregunta = new Pregunta();
                return View(Pregunta.LLenarAlternativas(id));
            }
            else
            {
                return Redirect("/");
            }
        }
        [HttpPost]
        public ActionResult EliminarPregunta(int id, Models.Pregunta listaAEditar)
        {
            listaAEditar.Eliminar(id);
            return RedirectToAction("ListaPregunta");
        }
        public ActionResult ListaPregunta()
        {
            if (Session["sessionEmail"] != null)
            {
                var Pregunta = new Pregunta();
                return View(Pregunta.ListaPreguntas());
            }
            else
            {
                return Redirect("/");
            }
        }

        public ActionResult DetallesPregunta(int id)
        {
            if (Session["sessionEmail"] != null)
            {
                var lista = new Models.Pregunta();
                if (lista.Seleccionar(id))
                {
                    return View(lista);
                }
                else
                {
                    return View(string.Empty);
                }
            }
            else
            {
                return Redirect("/");
            }
        }

    }
}