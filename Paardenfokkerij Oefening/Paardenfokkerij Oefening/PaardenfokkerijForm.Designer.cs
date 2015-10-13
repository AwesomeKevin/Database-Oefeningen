namespace Paardenfokkerij_Oefening
{
    partial class PaardenfokkerijForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lbStamboom = new System.Windows.Forms.ListBox();
            this.btnVraagOudersOp = new System.Windows.Forms.Button();
            this.lblNaam = new System.Windows.Forms.Label();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
            this.SuspendLayout();
            // 
            // lbStamboom
            // 
            this.lbStamboom.FormattingEnabled = true;
            this.lbStamboom.Location = new System.Drawing.Point(10, 11);
            this.lbStamboom.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.lbStamboom.Name = "lbStamboom";
            this.lbStamboom.Size = new System.Drawing.Size(190, 355);
            this.lbStamboom.TabIndex = 0;
            // 
            // btnVraagOudersOp
            // 
            this.btnVraagOudersOp.Location = new System.Drawing.Point(203, 11);
            this.btnVraagOudersOp.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.btnVraagOudersOp.Name = "btnVraagOudersOp";
            this.btnVraagOudersOp.Size = new System.Drawing.Size(124, 49);
            this.btnVraagOudersOp.TabIndex = 1;
            this.btnVraagOudersOp.Text = "Vraag ouders op";
            this.btnVraagOudersOp.UseVisualStyleBackColor = true;
            this.btnVraagOudersOp.Click += new System.EventHandler(this.btnVraagOudersOp_Click);
            // 
            // lblNaam
            // 
            this.lblNaam.Location = new System.Drawing.Point(203, 85);
            this.lblNaam.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblNaam.Name = "lblNaam";
            this.lblNaam.Size = new System.Drawing.Size(124, 76);
            this.lblNaam.TabIndex = 3;
            this.lblNaam.Text = "Vul hierboven het id van het paar in, waarvan je de stamboom wilt zien. Dit moet " +
    "dus een nummer zijn.";
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.Location = new System.Drawing.Point(206, 66);
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(120, 20);
            this.numericUpDown1.TabIndex = 4;
            // 
            // PaardenfokkerijForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(337, 374);
            this.Controls.Add(this.numericUpDown1);
            this.Controls.Add(this.lblNaam);
            this.Controls.Add(this.btnVraagOudersOp);
            this.Controls.Add(this.lbStamboom);
            this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.Name = "PaardenfokkerijForm";
            this.Text = "Stamboom";
            this.Load += new System.EventHandler(this.PaardenfokkerijForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.ListBox lbStamboom;
        private System.Windows.Forms.Button btnVraagOudersOp;
        private System.Windows.Forms.Label lblNaam;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
    }
}

