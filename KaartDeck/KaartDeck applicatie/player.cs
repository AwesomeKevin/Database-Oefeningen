using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oefening1
{
    class Player
    {
        public List<Deck> decklist;
        public string Naam { get; set; }
        public string Email { get; set; }
        public string Pass { get; set; }

        public Player(string n, string e, string p)
        {
            this.Naam = n;
            this.Email = e;
            this.Pass = p;
            decklist = new List<Deck>();
        }
    }
}
