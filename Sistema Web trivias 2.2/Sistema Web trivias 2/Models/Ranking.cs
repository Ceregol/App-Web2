using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Sistema_Web_trivias_2.Models
{
    public class Ranking
    {
        public int NumeroVecesPT { get; set; }
        public int PuntajeObtenidoPT { get; set; }
        public int PuntajeObtenidoPP { get; set; }
        public int Id_Trivia { get; set; }
        public int Id_Usuario { get; set; }
        public int Id_Pregunta { get; set; }

        public List<Ranking> PuntajeDeUnaTrivia(int Id_Usuario, int Id_Trivia)
        {         
                
                var comando = new MySqlCommand() { CommandText = "PuntajeDeUnaTrivia", CommandType = System.Data.CommandType.StoredProcedure };
                var listas = new List<Ranking>();
                comando.Parameters.AddWithValue("inId_Usuario", Id_Usuario);
                comando.Parameters.AddWithValue("inId_Trivia", Id_Trivia);
                DataSet ds = Data.Obtener(comando);
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    var l = new Ranking();
                    l.NumeroVecesPT = Convert.ToInt32(dr["Id_Unico"].ToString());
                    l.PuntajeObtenidoPT = Convert.ToInt32(dr["puntaje"].ToString());
                    listas.Add(l);
                }
                return listas;
            


        }

        public List<Ranking> PuntajeDePreguntas(int Id_Trivia)
        {

            var comando = new MySqlCommand() { CommandText = "PuntajeDePreguntas", CommandType = System.Data.CommandType.StoredProcedure };
            var listas = new List<Ranking>();           
            comando.Parameters.AddWithValue("inId_Trivia", Id_Trivia);
            DataSet ds = Data.Obtener(comando);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                var l = new Ranking();
                
                l.PuntajeObtenidoPP = Convert.ToInt32(dr["puntaje"].ToString());
                l.Id_Pregunta = Convert.ToInt32(dr["Id_Pregunta"].ToString());
                listas.Add(l);
            }
            return listas;



        }




        internal int EmailaIdUsuario(string Email)
        {
            
            int Id_Usuario2 = -1;
            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "ObtenerIdUsuario" };
            command.Parameters.AddWithValue("inEmail", Email);
            DataSet ds = Data.Obtener(command);
            DataTable dt = ds.Tables[0];
            
            foreach (DataRow dr in dt.Rows)
            {
                Id_Usuario2 = Convert.ToInt32(dr["Id_Usuario"]);
                return Id_Usuario2;
            }
            return Id_Usuario2;

        }



        internal List<Usuario> ListaAlumnos(int Id_Trivia2)
        {
            var listas = new List<Usuario>();
            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "ListaAlumnos" };
            command.Parameters.AddWithValue("inId_trivia", Id_Trivia2);
            //conectar
            DataSet ds = Data.Obtener(command);
            DataTable dt = ds.Tables[0];
           
            foreach (DataRow dr in dt.Rows)
            {

                var l = new Usuario();
                l.Id_Login = Convert.ToInt32(dr["Id_Usuario"]);
                l.Email = dr["Email"].ToString();
                listas.Add(l);
                

            }
            return listas;
        }
    }
}