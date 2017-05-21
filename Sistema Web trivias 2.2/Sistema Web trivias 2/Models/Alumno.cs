using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Sistema_Web_trivias_2.Models
{
    public class Alumno
    {
        public int Id_alumno     { get; set; }
        public string Nombre { get; set; }
        public string apellido { get; set; }
        public string correo { get; set; }      
    }
}