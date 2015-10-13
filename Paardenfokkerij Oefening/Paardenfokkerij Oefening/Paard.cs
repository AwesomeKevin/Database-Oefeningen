using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Paardenfokkerij_Oefening
{
    class Paard
    {
        private DatabaseConnectie databaseconnectie = new DatabaseConnectie();

        public int Id
        {
            get;
            set;
        }

        public string Naam
        {
            get;
            set;
        }

        public Paard Moeder
        {
            get;
            set;
        }

        public Paard Vader
        {
            get;
            set;
        }

        public Paard(int id, string naam, Paard moeder, Paard vader)
        {
            Id = id;
            Naam = naam;
            Moeder = moeder;
            Vader = vader;
        }
    }
}
