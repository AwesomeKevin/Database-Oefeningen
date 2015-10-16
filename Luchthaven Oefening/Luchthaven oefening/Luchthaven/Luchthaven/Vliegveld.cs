using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Luchthaven
{
    class Vliegveld
    {
        public string Naam { get; set; }

        public List<Baan> Banen { get; private set; }

        public Vliegveld(string naam)
        {
            this.Naam = naam;

            this.Banen = new List<Baan>();
        }

        /// <summary>
        /// Voegt een baan toe aan het vliegveld. 
        /// </summary>
        /// <param name="baan"></param>
        /// <returns>Een boolean die: indien de baan is toegevoegd true geeft. Indien de baan al bij het vliegveld hoorde, false geeft.</returns>
        public bool AddBaan(Baan baan)
        {
            if (this.Banen.Contains(baan))
            {
                return false;
            }

            this.Banen.Add(baan);
            return true;
        }
    }
}
