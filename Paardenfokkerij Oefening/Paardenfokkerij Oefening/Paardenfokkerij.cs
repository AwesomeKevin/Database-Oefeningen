using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Paardenfokkerij_Oefening
{
    class Paardenfokkerij
    {
        Databaseconnectie dbc = new Databaseconnectie();

        public string Naam
        {
            get;
            set;
        }

        public Paardenfokkerij(string naam)
        {
            Naam = naam;
        }

        public Paard GeefPaard(int paardId)
        {

        }
    }
}
