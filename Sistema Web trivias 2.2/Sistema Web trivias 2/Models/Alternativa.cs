using MySql.Data.MySqlClient;
using MySql.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;

namespace Sistema_Web_trivias_2.Models
{
    public class Alternativa
    {
        public int Id_alternativa { get; set; }
        public string Nombre { get; set; }
        public int status { get; set; }
        public int Id_Pregunta { get; set; }

        public void CrearAlternativa(int Id_Pregunta)
        {
            try
            {

                var comando = new MySqlCommand() { CommandText = "crear_AlternativaOUT", CommandType = System.Data.CommandType.StoredProcedure };
                comando.Parameters.Add(new MySqlParameter() { ParameterName = "outID", Direction = ParameterDirection.Output, Value = this.Id_alternativa });
                
                comando.Parameters.AddWithValue("inId_Alternativa", this.Id_alternativa);
                comando.Parameters.AddWithValue("inNombre", this.Nombre);
                comando.Parameters.AddWithValue("inStatus", this.status);
                comando.Parameters.AddWithValue("inId_Pregunta", Id_Pregunta);
                if(this.status ==1)
                {
                    ALternativaCorrecta(Id_Pregunta, this.Nombre);
                }

                this.Id_alternativa = Convert.ToInt32(comando.Parameters["outID"].Value);
                Data.Ejecutar(comando);
            }
            catch (Exception ex)
            {
                
            }
            finally
            {
                
            }
        }

        private void ALternativaCorrecta(int Id_Pregunta, string alternativa)
        {
            try
            {

                var comando = new MySqlCommand() { CommandText = "Agregar_AlternativaCorrecta", CommandType = System.Data.CommandType.StoredProcedure };
                //comando.Parameters.Add(new MySqlParameter() { ParameterName = "outID", Direction = ParameterDirection.Output, Value = this.Id_alternativa });
                List<int> List_Id_trivia = ObtenerTrivia(Id_Pregunta);
                var Id_Trivia = List_Id_trivia[0];
                comando.Parameters.AddWithValue("inId_Trivia", Id_Trivia);
                comando.Parameters.AddWithValue("inId_Pregunta", Id_Pregunta);
                comando.Parameters.AddWithValue("inAlternativa", alternativa);
                //this.Id_alternativa = Convert.ToInt32(comando.Parameters["outID"].Value);
                Data.Ejecutar(comando);
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
        }

        private List<int> ObtenerTrivia(int Id_Pregunta)
        {
            
                var listas = new List<int>();
                var comando = new MySqlCommand() { CommandText = "ObtenerTrivia", CommandType = System.Data.CommandType.StoredProcedure };
                //comando.Parameters.Add(new MySqlParameter() { ParameterName = "outID", Direction = ParameterDirection.Output, Value = this.Id_alternativa });                              
                comando.Parameters.AddWithValue("inId_Pregunta", Id_Pregunta);
                DataSet ds = Data.Obtener(comando);
                DataTable dt = ds.Tables[0];
                foreach (DataRow dr in dt.Rows)
                {
                    var l = new Pregunta();
                    l.Id_Pregunta = Convert.ToInt32(dr["Id_Trivia"]);
                    
                    listas.Add(l.Id_Pregunta);
                }
                return listas; 
        }
        public List<Alternativa> ListaAlternativas()
        {
            var listas = new List<Alternativa>();
            
            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Alternativa_Get" };
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
        public bool Seleccionar(int Id_alternativa)
        {
            var lista = this.ListaAlternativas().FirstOrDefault(m => m.Id_alternativa == Id_alternativa);
            if (lista != null)
            {
                this.Id_alternativa = lista.Id_alternativa;
                this.Nombre = lista.Nombre;
                this.status = lista.status;          
                return true;
            }
            else
            {
                return false;
            }
        }
        public void Editar(int Id_alternativa)
        {
            try
            {
                var comando = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Alternativa_Editar" };
                comando.Parameters.AddWithValue("inId_Alternativa", Id_alternativa);
                comando.Parameters.AddWithValue("inNombre", this.Nombre);
                comando.Parameters.AddWithValue("inStatus", this.status);

                Data.Ejecutar(comando);
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }

        }

        public void Eliminar(int Id_Alternativa)
        {
            try
            {
                var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Alternativa_Eliminar" };
                command.Parameters.AddWithValue("inId_Alternativa", Id_Alternativa);
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