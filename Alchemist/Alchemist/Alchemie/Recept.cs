using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alchemie
{
    public class Recept
    {
        public string Naam { get; set; }
        public List<Ingredient> ingredienten;

        public Recept(string naam)
        {
            Naam = naam;
            ingredienten = new List<Ingredient>();
        }
    }
}
