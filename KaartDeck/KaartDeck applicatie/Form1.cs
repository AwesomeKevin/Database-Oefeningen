using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace oefening1
{
    public partial class Form1 : Form
    {
        Database db = new Database();
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            List<Deck> decks = db.GetDecks((int)nudPlayID.Value);

            if (decks != null)
            {
                MessageBox.Show(string.Join(Environment.NewLine, decks));
            }
            else
            {
                MessageBox.Show("OEPS, FOUTJE MOET KUNNEN BAAS", "ERROR", MessageBoxButtons.YesNo, MessageBoxIcon.Error);
            }
        }
    }
}
