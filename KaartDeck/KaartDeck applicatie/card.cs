using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oefening1
{
    class Card
    {
        List<Deck> decks;

        public string Naam { get; set; }
        public string AfbeeldingPath { get; set; }

        public Card(string naam,string afbeeldingPath)
        {
            this.Naam = naam;
            this.AfbeeldingPath = afbeeldingPath;
            decks = new List<Deck>();
        }

        public bool AddDeck(Deck deck)
        {
            if (this.decks.Contains(deck))
            {
                return false;
            }

            this.decks.Add(deck);
            return true;
        }

        public override string ToString()
        {
            return this.Naam;
        }
    }
}
