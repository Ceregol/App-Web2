using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Sistema_Web_trivias_2.Models
{
    public class Trivia
    {
        public int Id_trivia { get; set; }
        public string Email { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public string FechaDeCreacion { get; set; }

        public string Nombre_Categoria { get; set; }
        public virtual ICollection<Pregunta> listaPreguntas { get; set; }
        public void AgregarTrivia(string Email2)
        {
            try
            {

                var comando = new MySqlCommand() { CommandText = "Crear_TriviaOUT", CommandType = System.Data.CommandType.StoredProcedure };
                comando.Parameters.Add(new MySqlParameter() { ParameterName = "outID", Direction = ParameterDirection.Output, Value = this.Id_trivia });

                comando.Parameters.AddWithValue("inNombre", this.Nombre);
                comando.Parameters.AddWithValue("inDescripcion", this.Descripcion);
                comando.Parameters.AddWithValue("inFechaDeCreacion", this.FechaDeCreacion);
                comando.Parameters.AddWithValue("inNombre_Categoria", this.Nombre_Categoria);
                comando.Parameters.AddWithValue("inEmail", Email2);
                this.Id_trivia = Convert.ToInt32(comando.Parameters["outID"].Value);
                Data.Ejecutar(comando);
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
        }
        public List<Trivia> ListaTrivias()
        {
            var listas = new List<Trivia>();

            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Trivia_Get" };
            //conectar
            DataSet ds = Data.Obtener(command);
            DataTable dt = ds.Tables[0];
            Email = System.Web.HttpContext.Current.Session["sessionEmail"] as String;
            foreach (DataRow dr in dt.Rows)
            {
                              
                var l = new Trivia();
                l.Email = dr["Email"].ToString();
                if (l.Email == Email)
                {
                    l.Id_trivia = Convert.ToInt32(dr["Id_trivia"]);
                    l.Nombre = dr["Nombre"].ToString();
                    l.Descripcion = dr["Descripcion"].ToString();
                    l.FechaDeCreacion = dr["FechaDeCreacion"].ToString();
                    l.Nombre_Categoria = dr["Nombre_Categoria"].ToString();
                    l.Email = dr["Email"].ToString();
                    listas.Add(l);
                }

            }
            return listas;

        }

        public bool Seleccionar(int Id_Trivia)
        {
            var lista = this.ListaTrivias().FirstOrDefault(m => m.Id_trivia == Id_Trivia);
            if (lista != null)
            {
                this.Id_trivia = lista.Id_trivia;
                this.Nombre = lista.Nombre;
                this.Descripcion = lista.Descripcion;
                this.FechaDeCreacion = lista.FechaDeCreacion;
                this.Nombre_Categoria = lista.Nombre_Categoria;
                return true;
            }
            else
            {
                return false;
            }
        }

        public List<Pregunta> LLenarPreguntas(int Id_Trivia)
        {
            var listas = new List<Pregunta>();

            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "PreguntaDeUnaTrivia" };
            command.Parameters.AddWithValue("inId_Trivia", Id_Trivia);
            //conectar
            DataSet ds = Data.Obtener(command);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                var l = new Pregunta();
                l.Id_Pregunta = Convert.ToInt32(dr["Id_Pregunta"]);
                l.Question = dr["Question"].ToString();
                l.Descripcion = "";
                l.titulo = "";
                listas.Add(l);
            }
            return listas;

        }

        public void Modificar(int Id_trivia)
        {
            try
            {
                var comando = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Trivia_Editar" };


                comando.Parameters.AddWithValue("inId_trivia",Id_trivia);
                comando.Parameters.AddWithValue("inNombre", this.Nombre);
                comando.Parameters.AddWithValue("inDescripcion", this.Descripcion);
                comando.Parameters.AddWithValue("inFechaDeCreacion", this.FechaDeCreacion);
                comando.Parameters.AddWithValue("inNombre_Categoria", this.Nombre_Categoria);
                Data.Ejecutar(comando);
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }

        }

        public void Eliminar(int Id_trivia)
        {
            try
            {
                var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Trivia_Eliminar" };
                command.Parameters.AddWithValue("inId_Trivia", Id_trivia);
                Data.Ejecutar(command);
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }

        }

        public static List<SelectListItem> GetCategoriaValues()
        {
            return new List<SelectListItem> 
             {
             new SelectListItem { Text = "Matematica", Value = "Matematicas" },
             new SelectListItem { Text = "Lenguaje", Value = "Lenguaje" },
             new SelectListItem { Text = "Biologia", Value = "Biologia" },
             new SelectListItem { Text = "Fisica", Value = "Fisica" },
              new SelectListItem { Text = "Ingles", Value = "Ingles" },
               new SelectListItem { Text = "Quimica", Value = "Quimica" },
            };
        }


    }
}