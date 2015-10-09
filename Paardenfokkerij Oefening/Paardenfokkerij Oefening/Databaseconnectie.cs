using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

namespace Paardenfokkerij_Oefening
{
    public class Databaseconnectie
    {
        string info;
        private OracleConnection conn;
        private OracleCommand command;
        string user = "Kees";
        string pw = "Fontys18Oracle";

        public Databaseconnectie()
        {
            conn = new OracleConnection();
            command = conn.CreateCommand();
            conn.ConnectionString = "User Id=" + user + ";Password=" + pw + ";Data Source=" + "//localhost:1521/xe" + ";";
        }

        public string HaalInfoOp()
        {
            try
            {
                conn.Open();
                string query = "SELECT * FROM PAARD";
                command = new OracleCommand(query, conn);
                OracleDataReader datareader = command.ExecuteReader();
                while (datareader.Read())
                {
                    string id = Convert.ToString(datareader["ID"]);
                    string naam = Convert.ToString(datareader["Naam"]);
                    string idPaardenfokkerij = Convert.ToString(datareader["IDPaardenFOkkerij"]);
                    string idFather = Convert.ToString(datareader["IDFather"]);
                    string idMother = Convert.ToString(datareader["IDMother"]);
                    info = id + ", " + naam + ", " + idPaardenfokkerij + ", " + idFather + ", " + idMother;
                }
                return info;
            }
            catch (Exception)
            {
                return null;
            }
            finally
            {
                conn.Close();
            }
        }
    }
}
