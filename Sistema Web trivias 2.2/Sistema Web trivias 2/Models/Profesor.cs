using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using  Sistema_Web_trivias_2.Utils;

namespace Sistema_Web_trivias_2.Models
{
    public class Profesor:Usuario
    {
        public String Institucion { get; set; }
        public int Id_Profesor { get; set; }


    }

}