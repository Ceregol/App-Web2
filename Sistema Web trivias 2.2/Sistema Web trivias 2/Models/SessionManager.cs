
using Sistema_Web_trivias_2.Models;
using System;
using System.Web;

namespace Sistema_Web_trivias_2.Models
{
    public class SessionManager
    {
        /// <summary>
        /// Metodo para guardar en la cookie el email del perfil activo
        /// </summary>
        /// Implementado por Sergio Flores
        /// <param name="Email"></param>
        public static void Login( String Email )
        {
            HttpCookie _sessionCookie = new HttpCookie( "_sessionCookie" );
            _sessionCookie.Values[ "Email" ] = Email;
            _sessionCookie.Expires = DateTime.Now.AddDays( 1 );
            HttpContext.Current.Response.Cookies.Add( _sessionCookie );
        }

        /// <summary>
        /// Metodo para eliminar el email de la Coockie
        /// </summary>
        /// Implementado por Sergio Flores
        public static void Salir( )
        {
            HttpCookie _sessionCookie = HttpContext.Current.Request.Cookies[ "_sessionCookie" ];
            _sessionCookie.Expires = DateTime.Now.AddDays( -1 );
            _sessionCookie.Values[ "Email" ] = String.Empty;
            HttpContext.Current.Response.Cookies.Add( _sessionCookie );
        }

        /// <summary>
        /// Metodo para obtener el Participante Autenticado en el sistema
        /// </summary>
        /// Implementado por Sergio Flores
        /// <returns>Retorna el Participante</returns>
        public static Usuario UsuarioAutenticado( )
        {
            Usuario p = null;
            HttpCookie _session = HttpContext.Current.Request.Cookies[ "_sessionCookie" ];

            if ( _session != null &&
                !string.IsNullOrEmpty( _session.Values[ "Email" ] ) )
            {
                p = new Usuario() { Email = _session.Values["Email"] };
                return p;
            }

            return p;
        }
    }
}