using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Sistema_Web_trivias_2.Models
{
    public class Rol
    {
        public virtual string Email { get; set; }
        public virtual int Id_Roles { get; set; }


        public bool SeleccionarRol(string Email)
        {
            var lista = this.ListaRoles().FirstOrDefault(m => m.Email == Email);
           

            if (lista != null )
            {
               
                this.Email = lista.Email;
                this.Id_Roles = lista.Id_Roles;
                return true;
            }
            else
            {
                return false;
            }
        }

        public List<Rol> ListaRoles()
        {
            var listas = new List<Rol>();

            var command = new MySqlCommand() { CommandType = CommandType.StoredProcedure, CommandText = "RolesUsuario_Get" };
            //conectar
            DataSet ds = Data.Obtener(command);
            DataTable dt = ds.Tables[0];
            foreach (DataRow dr in dt.Rows)
            {
                var l = new Rol();
                l.Email = dr["Email"].ToString(); 
                l.Id_Roles = Convert.ToInt32(dr["id_roles"]); ;                
                listas.Add(l);
            }
            return listas;

        }
    }
}