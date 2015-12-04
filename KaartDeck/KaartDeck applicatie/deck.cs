using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oefening1
{
    class Deck
    {
        List<Card> cardlist;

        public int DatabaseID { get; set; }
        public string Omschrijving { get; set; }

        public Deck(int databaseID, string omschrijving)
        {
            this.DatabaseID = databaseID;
            this.Omschrijving = omschrijving;

            cardlist = new List<Card>();
        }

        public bool AddCard(Card card)
        {
            if (this.cardlist.Contains(card))
            {
                return false;
            }

            this.cardlist.Add(card);
            return true;
        }

        public override string ToString()
        {
            return string.Format("{0} bevat de volgende kaarten: {1}", this.Omschrijving, string.Join(",", cardlist));
        }
    }
}
