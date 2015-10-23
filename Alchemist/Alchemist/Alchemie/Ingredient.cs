using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alchemie
{
    public class Ingredient
    {
        public string Naam { get; set; }
        public int Prijs { get; set; }

        public Ingredient(string naam, int prijs)
        {
            Naam = naam;
            Prijs = prijs;
        }
    }
}
