using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Paardenfokkerij_Oefening
{
    public partial class PaardenfokkerijForm : Form
    {
        DatabaseConnectie databaseConnectie;
        Paardenfokkerij fokkerij;

        int startPaardID;

        public PaardenfokkerijForm()
        {
            InitializeComponent();

            fokkerij = new Paardenfokkerij("In Gallop");
            startPaardID = -1;
        }

        private void PaardenfokkerijForm_Load(object sender, EventArgs e)
        {
            databaseConnectie = new DatabaseConnectie();
        }

        private void btnVraagStamboomOp_Click(object sender, EventArgs e)
        {
            try
            {
            }
            catch (Exception)
            {

                throw;
            }
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {
            if (startPaardID >= 1)
            {
                int x = this.panel1.Width / 2;
                int y = this.panel1.Height - 20;
                Graphics g = e.Graphics;

                Paard startPaard = fokkerij.Paarden.Find(p => p.Id == startPaardID);

                List<Paard> paardenTeTekenen = new List<Paard>();
                List<Paard> oudersVanPaardenTeTekenen = new List<Paard>();

                paardenTeTekenen.Add(startPaard);

                while (paardenTeTekenen.Count > 0)
                {
                    foreach (Paard paard in paardenTeTekenen)
                    {
                        StamboomItem stamboomItem = new StamboomItem(new Point(x, y), paard);
                        panel1.Controls.Add(stamboomItem);
                        y += stamboomItem.Height;

                        bool heeftVader = paard.Vader != null;
                        bool heeftMoeder = paard.Moeder != null;

                        if (heeftVader || heeftMoeder)
                        {
                            g.DrawLine(new Pen(Color.Black), x, y, x, y + 20);

                            y += 20;
                        }

                        if (heeftVader)
                        {
                            oudersVanPaardenTeTekenen.Add(paard.Vader);
                        }

                        if (heeftMoeder)
                        {
                            oudersVanPaardenTeTekenen.Add(paard.Moeder);
                        }
                    }

                    paardenTeTekenen.Clear();
                    paardenTeTekenen = oudersVanPaardenTeTekenen;
                    oudersVanPaardenTeTekenen.Clear();

                    i++;
                }
            }
        }
    }
}