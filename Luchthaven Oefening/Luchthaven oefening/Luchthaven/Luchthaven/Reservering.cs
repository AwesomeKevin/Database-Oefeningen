using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Luchthaven
{
    public enum ReserveringType
    {
        Vertrek,
        Landing
    }

    class Reservering
    {
        public Vliegtuig Vliegtuig {get;set;}
        public Baan Baan {get;set;}
        
        public DateTime DatumTijdVan{get;set;}
        public DateTime DatumTijdTot{get;set;}
        public ReserveringType Type {get;set;}

        public Reservering(Vliegtuig vliegtuig, Baan baan, DateTime datumTijdVan, DateTime datumTijdTot, ReserveringType type)
        {
            this.Vliegtuig = vliegtuig;
            this.Baan = baan;

            this.DatumTijdVan = datumTijdVan;
            this.DatumTijdTot = DatumTijdTot;
            this.Type = type;
        }
    }
}
