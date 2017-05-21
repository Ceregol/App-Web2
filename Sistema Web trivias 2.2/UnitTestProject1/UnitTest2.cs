using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Sistema_Web_trivias_2.Models;
namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest2
    {
        [TestMethod]
        public void AbreConexionTest()
        {
            var accion = new ConnectionPostgreSQLTests();

            var conexion = Sistema_Web_trivias_2.Models.ConexionPostgress.AbreConexion();
            var estado = conexion.State.ToString();
            conexion.close();
            Assert.AreEqual("open", estado);

        }
    }
}
