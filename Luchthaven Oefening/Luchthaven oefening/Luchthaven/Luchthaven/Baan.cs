using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Luchthaven
{
    class Baan
    {
        public List<Reservering> Reserveringen { get; private set; }

        public Baan()
        {
            this.Reserveringen = new List<Reservering>();
        }

        /// <summary>
        /// Voegt een reservering toe aan een baan. 
        /// </summary>
        /// <param name="baan"></param>
        /// <returns>Een boolean die: indien ... true geeft. Indien ..., false geeft.</returns>
        public bool AddReservering(Reservering reservering)
        {

        }

     }
}
