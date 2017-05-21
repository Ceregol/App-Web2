using Sistema_Web_trivias_2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sistema_Web_trivias_2.Controllers
{
    public class UsuarioController : Controller
    {
        // GET: Usuario
        public ActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public ActionResult Registrar()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Registrar(Models.Usuario listaACrear)
        {
            listaACrear.Registrar();
            return RedirectToAction("IniciarSesion");
        }
        [HttpPost]
        public ActionResult IniciarSesion(Models.Usuario listaACrear)
        {
            var lista = new Models.Usuario();
            if (lista.Seleccionar(listaACrear.Password, listaACrear.Email))
            {
                if(lista.RolDeUsuario ==1 || lista.RolDeUsuario ==2)
                {
                    return RedirectToAction("ListaTrivia", "trivia");
                }
                else
                {
                    return View();
                }
                //paso               
                
            }
            else
            {
                return View();
            }
        }
        [HttpGet]
        public ActionResult IniciarSesion()
        {
            return View();
        }
        public ActionResult ListaUsuarios()
        {
            var usuario = new Usuario();
            return View(usuario.ListaUsuarios());
        }
        public ActionResult Editar(int id)
        {
            var lista = new Models.Usuario();
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
        public ActionResult Editar(int id, Models.Usuario listaAEditar)
        {
            listaAEditar.Editar(id);
            return RedirectToAction("ListaTrivia");
        }
        public ActionResult Eliminar(int id)
        {
            var lista = new Models.Usuario();
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
        public ActionResult Eliminar(int id, Models.Usuario listaAEditar)
        {
            listaAEditar.Eliminar(id);
            return RedirectToAction("ListaUsuarios");
        }

    }
}