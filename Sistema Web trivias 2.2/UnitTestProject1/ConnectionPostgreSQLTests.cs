using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Npgsql;
using Sistema_Web_trivias_2.Models;
namespace UnitTestProject1
{
    [TestClass]
    public class ConnectionPostgreSQLTests
    {
        [TestMethod]
        public void AbreConexionTest()
        {
            var accion = new ConnectionPostgreSQLTests();
            Sistema_Web_trivias_2.Models.ConexionPostgress.
            var conexion = accion.AbreConexion();
            var estado = conexion.State.ToString();
            conexion.close();
            Assert.AreEqual("open", estado);

        }
    }
}
