using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace oefening1
{
    class Game
    {     
        public List<Player> Players { get; private set; }

        public Game()
        {
            Players = new List<Player>();
        }
    }
}
