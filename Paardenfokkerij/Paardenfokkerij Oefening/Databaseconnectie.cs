using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Oracle.DataAccess.Client;
using Oracle.DataAccess.Types;

namespace Paardenfokkerij_Oefening
{
    public class DatabaseConnectie
    {
        string info;
        private OracleConnection conn;
        private OracleCommand command;
        string user = "Kees";
        string pw = "Fontys18Oracle";

        public DatabaseConnectie()
        {
            conn = new OracleConnection();
            command = conn.CreateCommand();
            this.conn = new OracleConnection("DATA SOURCE=192.168.15.50:1521/fhictora;PERSIST SECURITY INFO=True;USER ID=DBI324928; PASSWORD=oBVmntOXe6");
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
