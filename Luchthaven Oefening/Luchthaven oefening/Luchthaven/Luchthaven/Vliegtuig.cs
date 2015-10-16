using System;
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
        public string MaatschappijNaam { get; set; }
        public VliegtuigType Type { get; set; }

        public Vliegtuig(string maatschappijNaam, VliegtuigType type)
        {
            this.MaatschappijNaam = maatschappijNaam;
            this.Type = type;
        }

        /// <summary>
        /// Plaatst een reservering
        /// </summary>
        /// <param name="reservering"></param>
        /// <returns></returns>
        public bool PlaatsReservering(Reservering reservering)
        {

        }
    }
}
