using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Alchemie
{
    public class Speler
    {
        public string Naam { get; set; }
        public string Email { get; set; }
        public int Geld { get; set; }
        public List<Recept> recepten;
        public List<Ingredient> ingredienten;
        public List<Voorwerp> voorwerpen;

        public Speler(string naam, string email, int geld)
        {
            Naam = naam;
            Email = email;
            Geld = geld;
            recepten = new List<Recept>();
            ingredienten = new List<Ingredient>();
            voorwerpen = new List<Voorwerp>();
        }
    }
}
