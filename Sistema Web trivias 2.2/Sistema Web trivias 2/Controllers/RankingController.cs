using Sistema_Web_trivias_2.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sistema_Web_trivias_2.Controllers
{
    public class RankingController : Controller
    {
        // GET: Ranking
        public ActionResult Index(int Id)
        {
            var r = new Ranking();
            String Email = System.Web.HttpContext.Current.Session["sessionEmail"] as String;
            String IdTriviaString = System.Web.HttpContext.Current.Session["Id_Trivia_Alumnos"] as String;
            System.Web.HttpContext.Current.Session["Id_Login"] = Id.ToString();
            int idTrivia = Int32.Parse(IdTriviaString);
            int Id_usuario = r.EmailaIdUsuario(Email);

            return View(r.PuntajeDeUnaTrivia(Id, idTrivia));
        }
        public ActionResult PuntajeDePreguntas()
        {
            var r = new Ranking();

            return View(r.PuntajeDePreguntas(4));
        }
        public JsonResult PuntajeDeUnaTriviaJson()
        {   
            var r = new Ranking();
            String IdTriviaString = System.Web.HttpContext.Current.Session["Id_Trivia_Alumnos"] as String;
            String Id_LoginString = System.Web.HttpContext.Current.Session["Id_Login"] as String;
            int idTrivia = Int32.Parse(IdTriviaString);
            int Id_Login = Int32.Parse(Id_LoginString);
            var output = r.PuntajeDeUnaTrivia(Id_Login, idTrivia);
            return Json(output, JsonRequestBehavior.AllowGet);
        }
        public JsonResult PuntajeDePreguntasJson()
        {
            var r = new Ranking();
            String IdTriviaString = System.Web.HttpContext.Current.Session["Id_Trivia_Alumnos"] as String;
            int idTrivia = Int32.Parse(IdTriviaString);
            var output = r.PuntajeDePreguntas(idTrivia);
            return Json(output, JsonRequestBehavior.AllowGet);
        }

        public ActionResult ListaDeAlumnos(int Id )
        {
            //variable de session para despuesrecuperarla
            System.Web.HttpContext.Current.Session["Id_Trivia_Alumnos"] = Id.ToString();
            var r = new Ranking();
            List<Usuario> lista = r.ListaAlumnos(Id);
            


            return View(lista);
        }
    }
}