using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Sistema_Web_trivias_2.Models
{
    public class Pregunta
    {
        public int Id_Pregunta { get; set; }
        public string titulo { get; set; }
        public string Question { get; set; }
        public string Descripcion { get; set; }
        public int contador { get; set; }

        public int Id_Trivia { get; set; }
        public void AgregarPregunta(int Id_Trivia)
        {
            contador = numeroDePreguntas(Id_Trivia);
            try
            {

                
                var u = 0;
                if(contador>=0 && contador <20)
                {
                    var comando = new MySqlCommand() { CommandText = "Crear_PreguntaOUT", CommandType = System.Data.CommandType.StoredProcedure };
                    comando.Parameters.Add(new MySqlParameter() { ParameterName = "outID", Direction = ParameterDirection.Output, Value = this.Id_Pregunta });


                    comando.Parameters.AddWithValue("inTitulo", this.titulo);
                    comando.Parameters.AddWithValue("inQuestion", this.Question);
                    comando.Parameters.AddWithValue("inDescripcion", this.Descripcion);
                    comando.Parameters.AddWithValue("inId_Trivia", Id_Trivia);
                    this.Id_Pregunta = Convert.ToInt32(comando.Parameters["outID"].Value);
                    Data.Ejecutar(comando);
                }

            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
        }

        public int numeroDePreguntas(int Id_Trivia)
        {
            var listas = new List<Pregunta>();

            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "numeroDePreguntas" };
            //conectar
            command.Parameters.AddWithValue("inId_Trivia", Id_Trivia);
            DataSet ds = Data.Obtener(command);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                var l = new Pregunta();
                l.contador = Convert.ToInt32(dr["contador"]);
                listas.Add(l);
            }
            return listas[0].contador;
        }
        public List<Pregunta> ListaPreguntas()
        {
            var listas = new List<Pregunta>();

            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Pregunta_Get" };
            //conectar
            DataSet ds = Data.Obtener(command);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                var l = new Pregunta();
                l.Id_Pregunta = Convert.ToInt32(dr["Id_Pregunta"]);
                l.titulo = dr["titulo"].ToString();
                l.Question = dr["Question"].ToString();
                l.Descripcion = dr["Descripcion"].ToString();
                listas.Add(l);
            }
            return listas;

        }
        public bool Seleccionar(int Id_Pregunta)
        {
            var lista = this.ListaPreguntas().FirstOrDefault(m => m.Id_Pregunta == Id_Pregunta);
            if (lista != null)
            {
                this.Id_Pregunta = lista.Id_Pregunta;
                this.titulo = lista.titulo;
                this.Question = lista.Question;
                this.Descripcion = lista.Descripcion;
                return true;
            }
            else
            {
                return false;
            }
        }
        public void Editar(int Id_Pregunta)
        {
            try
            {
                var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Pregunta_Editar" };
                command.Parameters.AddWithValue("inId_Pregunta", Id_Pregunta);
                command.Parameters.AddWithValue("intitulo", this.titulo);
                command.Parameters.AddWithValue("inQuestion", this.Question);           
                command.Parameters.AddWithValue("inDescripcion", this.Descripcion);
                Data.Ejecutar(command);
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }

        }
        public List<Alternativa> LLenarAlternativas(int Id_Pregunta)
        {
            var listas = new List<Alternativa>();

            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "AlternativaDeUnaPregunta" };
            command.Parameters.AddWithValue("inId_Pregunta", Id_Pregunta);
            //conectar
            DataSet ds = Data.Obtener(command);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                var l = new Alternativa();
                l.Id_alternativa = Convert.ToInt32(dr["Id_Alternativa"]);
                l.Nombre = dr["Nombre"].ToString();
                l.status = Convert.ToInt32(dr["status"]);             
                listas.Add(l);
            }
            return listas;

        }
        public void Eliminar(int Id_Pregunta)
        {
            try
            {
                var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Pregunta_Eliminar" };
                command.Parameters.AddWithValue("inId_Pregunta", Id_Pregunta);
                Data.Ejecutar(command);
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }

        }
    }
}