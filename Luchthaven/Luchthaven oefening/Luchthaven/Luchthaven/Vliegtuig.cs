﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Luchthaven
{
    public enum VliegtuigType
    {
        Airbus_A300,
        Airbus_A310,
        Airbus_A318,
        Airbus_A319,
        Boeing_727,
        Boeing_737,
        Boeing_747,
        Comac_C919,
        Douglas_DC_2,
        Saab_2000
    }

    class Vliegtuig
    {
        public VliegtuigType Type { get; set; }

        public Vliegtuig(VliegtuigType type)
        {
            this.Type = type;
        }

        /// <summary>
        /// Voegt een reservering toe aan een baan. 
        /// </summary>
        /// <param name="baan"></param>
        /// <returns>Een boolean die: indien ... true geeft. Indien ..., false geeft.</returns>
        public bool MaakReservering(Reservering reservering)
        {

        }
    }
}
