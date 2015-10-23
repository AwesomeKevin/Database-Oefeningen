using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alchemie
{
    public class Winkel
    {
        public string Naam { get; set; }
        public string Adres { get; set; }
        public List<Ingredient> ingredienten;

        public Winkel(string naam, string adres)
        {
            Naam = naam;
            Adres = adres;
            ingredienten = new List<Ingredient>();
        }
    }
}
