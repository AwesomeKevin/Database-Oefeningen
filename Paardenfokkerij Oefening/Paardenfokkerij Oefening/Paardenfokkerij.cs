using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Paardenfokkerij_Oefening
{
    class Paardenfokkerij
    {
        DatabaseConnectie dbc = new DatabaseConnectie();

        public List<Paard> Paarden { get; set; }

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
            return null;
        }
    }
}
