using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alchemie
{
    public class Voorwerp
    {
        public string Naam { get; set; }
        public int Prijs { get; set; }

        public Voorwerp(string naam, int prijs)
        {
            Naam = naam;
            Prijs = prijs;
        }
    }
}
