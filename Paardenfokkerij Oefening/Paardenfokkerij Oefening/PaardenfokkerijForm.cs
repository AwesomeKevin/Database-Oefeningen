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

        public PaardenfokkerijForm()
        {
            InitializeComponent();
        }

        private void PaardenfokkerijForm_Load(object sender, EventArgs e)
        {
            databaseConnectie = new DatabaseConnectie();
        }

        private void btnVraagOudersOp_Click(object sender, EventArgs e)
        {
            try
            {
                foreach ()
                lbStamboom.Items.Add(databaseConnectie.HaalInfoOp());
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}