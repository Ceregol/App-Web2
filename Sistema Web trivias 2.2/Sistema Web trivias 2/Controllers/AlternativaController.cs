using Sistema_Web_trivias_2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sistema_Web_trivias_2.Controllers
{
    public class AlternativaController : Controller
    {
        // GET: Alternativa

        public ActionResult CrearAlternativa(int id)
        {
            Alternativa model = new Alternativa();
            model.Id_Pregunta = id;
            return View(model);
        }
        [HttpPost]
        public ActionResult CrearAlternativa(int id,Models.Alternativa listaACrear)
        {
            listaACrear.CrearAlternativa(id);
            return RedirectToAction("ListaTrivia", "trivia");
        }
        public ActionResult EditarAlternativa(int id) 
        {
            var lista = new Models.Alternativa();
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
        public ActionResult EditarAlternativa(int id,Models.Alternativa listaAEditar)
        {
            listaAEditar.Editar(id);
            return RedirectToAction("ListaAlternativa");
        
        }

        public ActionResult EliminarAlternativa(int id)
        {
            var lista = new Models.Alternativa();
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
        public ActionResult EliminarAlternativa(int id, Models.Alternativa listaAEditar)
        {
            listaAEditar.Eliminar(id);
            return RedirectToAction("ListaAlternativa");
        }
        public ActionResult ListaAlternativa()
        {
            var Alternativa = new Alternativa();
            return View(Alternativa.ListaAlternativas());            
        }
    }
}