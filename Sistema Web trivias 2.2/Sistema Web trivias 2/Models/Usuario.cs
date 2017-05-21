using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Web;


namespace Sistema_Web_trivias_2.Models
{
    public class Usuario
    {
        public virtual int Id_Login { get; set; }

        [Required(AllowEmptyStrings = false, ErrorMessage = "Se requiere un correo electrónico")]
        [DataType(DataType.EmailAddress)]
        [RegularExpression(@"^(([\w-]+\.)+[\w-]+|([a-zA-Z]{1}|[\w-]{2,}))@((([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])\.([0-1]?[0-9]{1,2}|25[0-5]|2[0-4][0-9])){1}|([a-zA-Z]+[\w-]+\.)+[a-zA-Z]{2,4})$", ErrorMessage = "No es un email válido.")]       
        public virtual string Email { get; set; }

        [Required(ErrorMessage = "El campo contraseña es obligatorio")]
        [DataType(DataType.Password)]
        [Display(Name = "Password ")] //Mensaje indicar obligatorio
        public virtual string Password { get; set; }
        public virtual int RolDeUsuario { get; set; }

        


        public void Registrar()
        {
            try
            {

                var comando = new MySqlCommand() { CommandText = "Registrar", CommandType = System.Data.CommandType.StoredProcedure };
                comando.Parameters.Add(new MySqlParameter() { ParameterName = "outID", Direction = ParameterDirection.Output, Value = this.Id_Login });

                comando.Parameters.AddWithValue("inEmail", this.Email);
                comando.Parameters.AddWithValue("inPassword", this.Password);
                comando.Parameters.AddWithValue("inRolDeUsuario", this.RolDeUsuario);
                this.Id_Login = Convert.ToInt32(comando.Parameters["outID"].Value);
                Data.Ejecutar(comando);
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }
        }

        public Boolean IniciarSesion(string Email, string Password)
        {
            var listas = new List<Usuario>();
            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "IniciarSesion" };
            //conectar

            DataSet ds = Data.Obtener(command);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                var l = new Usuario();
                l.Email = dr["inEmail"].ToString();
                l.Password = dr["inPassword"].ToString();
                l.RolDeUsuario = Convert.ToInt32(dr["RolUsuario"]);
                listas.Add(l);
            }
            if (listas.Count == 0)
            {
                return false;
            }
            else
            {
                return true;
            }

        }

        public bool Seleccionar(string Password, string Email)
        {
            var lista = this.ListaUsuarios().FirstOrDefault(m => m.Password == Password);
            var lista2 = this.ListaUsuarios().FirstOrDefault(m => m.Email == Email);

            if (lista != null && lista2 != null && lista.Email == lista2.Email)
            {
                
                if (lista.RolDeUsuario == 1)
                {
                    System.Web.HttpContext.Current.Session["Administrador"] = Email;
                }
                System.Web.HttpContext.Current.Session["sessionEmail"] = Email;
                //Email = System.Web.HttpContext.Current.Session["sessionEmail"] as String;
                this.Id_Login = lista.Id_Login;
                this.Email = lista.Email;
                this.Password = lista.Password;
                this.RolDeUsuario = lista.RolDeUsuario;
                return true;
            }
            else
            {
                return false;
            }
        }

        public List<Usuario> ListaUsuarios()
        {
            var listas = new List<Usuario>();

            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Usuario_Get" };
            //conectar
            DataSet ds = Data.Obtener(command);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                var l = new Usuario();
                l.Id_Login = Convert.ToInt32(dr["Id_Usuario"]);
                l.Email = dr["Email"].ToString();
                l.Password = dr["Password"].ToString();
                l.RolDeUsuario = Convert.ToInt32(dr["RolUsuario"]);
                listas.Add(l);
            }
            return listas;

        }

        public void Editar(int Id_Usuario)
        {

            try
            {
                var comando = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Usuario_Editar" };


                comando.Parameters.AddWithValue("inId_Usuario", Id_Usuario);
                comando.Parameters.AddWithValue("inEmail", this.Email);
                comando.Parameters.AddWithValue("inPassword", this.Password);


                Data.Ejecutar(comando);
            }
            catch (Exception ex)
            {

            }
            finally
            {

            }

        }

        public bool Seleccionar(int Id_Usuario)
        {
            var lista = this.ListaUsuarios().FirstOrDefault(m => m.Id_Login == Id_Usuario);
            if (lista != null)
            {
                this.Email = lista.Email;
                this.Password = lista.Password;
                return true;
            }
            else
            {
                return false;
            }
        }

        public void Eliminar(int Id_Usuario)
        {
            try
            {
                var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "Usuario_Eliminar" };
                command.Parameters.AddWithValue("inId_Usuario", Id_Usuario);
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