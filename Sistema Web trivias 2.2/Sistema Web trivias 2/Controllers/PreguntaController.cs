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
            Pregunta model = new Pregunta();
            model.Id_Trivia = id; 
            return View(model);
        }

        [HttpPost]
        public ActionResult CrearPregunta(int id,Models.Pregunta listaACrear)
        {
            listaACrear.AgregarPregunta(id);
            return RedirectToAction("ListaTrivia", "trivia");
        }


        public ActionResult EditarPregunta(int id)
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
        [HttpPost]
        public ActionResult EditarPregunta(int id, Models.Pregunta listaAEditar)
        {
            listaAEditar.Editar(id);
            return RedirectToAction("ListaPregunta");
        }
        public ActionResult EliminarPregunta(int id)
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
        

        public ActionResult ListaAlternativas(int id)
        {
            var Pregunta = new Pregunta();
            return View(Pregunta.LLenarAlternativas(id));
        }
        [HttpPost]
        public ActionResult EliminarPregunta(int id, Models.Pregunta listaAEditar)
        {
            listaAEditar.Eliminar(id);
            return RedirectToAction("ListaPregunta");
        }
        public ActionResult ListaPregunta()
        {
            var Pregunta = new Pregunta();
            return View(Pregunta.ListaPreguntas());   
        }

        public ActionResult DetallesPregunta(int id)
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

    }
}