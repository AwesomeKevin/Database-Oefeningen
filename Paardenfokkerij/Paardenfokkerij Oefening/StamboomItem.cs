using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Paardenfokkerij_Oefening
{
    class StamboomItem : System.Windows.Forms.TextBox
    {
        public Paard Paard { get; set; }

        public System.Drawing.Point coordinatenMiddenOnder { get; set; }

        public StamboomItem(System.Drawing.Point coordinatenMiddenOnder, Paard paard, int generatie)
        {
            this.coordinatenMiddenOnder = coordinatenMiddenOnder;

            this.Width = 80;
            this.Height = 50;
            
            int x = coordinatenMiddenOnder.X + (int)this.Size.Width / 2;
            int y = coordinatenMiddenOnder.Y - (int)this.Size.Height;
            this.Location = new System.Drawing.Point(x, y);

            this.Paard = paard;

            this.ReadOnly = true;
            this.Multiline = true;

            this.Text = generatie.ToString() + System.Environment.NewLine + paard.Id + " - " + paard.Naam;
        }
    }
}
