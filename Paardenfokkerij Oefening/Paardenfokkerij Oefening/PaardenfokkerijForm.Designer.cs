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
            this.tbNaam = new System.Windows.Forms.TextBox();
            this.lblNaam = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // lbStamboom
            // 
            this.lbStamboom.FormattingEnabled = true;
            this.lbStamboom.ItemHeight = 16;
            this.lbStamboom.Location = new System.Drawing.Point(13, 13);
            this.lbStamboom.Name = "lbStamboom";
            this.lbStamboom.Size = new System.Drawing.Size(252, 436);
            this.lbStamboom.TabIndex = 0;
            // 
            // btnVraagOudersOp
            // 
            this.btnVraagOudersOp.Location = new System.Drawing.Point(271, 13);
            this.btnVraagOudersOp.Name = "btnVraagOudersOp";
            this.btnVraagOudersOp.Size = new System.Drawing.Size(166, 60);
            this.btnVraagOudersOp.TabIndex = 1;
            this.btnVraagOudersOp.Text = "Vraag ouders op";
            this.btnVraagOudersOp.UseVisualStyleBackColor = true;
            this.btnVraagOudersOp.Click += new System.EventHandler(this.btnVraagOudersOp_Click);
            // 
            // tbNaam
            // 
            this.tbNaam.Location = new System.Drawing.Point(272, 80);
            this.tbNaam.Name = "tbNaam";
            this.tbNaam.Size = new System.Drawing.Size(165, 22);
            this.tbNaam.TabIndex = 2;
            // 
            // lblNaam
            // 
            this.lblNaam.Location = new System.Drawing.Point(271, 105);
            this.lblNaam.Name = "lblNaam";
            this.lblNaam.Size = new System.Drawing.Size(166, 93);
            this.lblNaam.TabIndex = 3;
            this.lblNaam.Text = "Vul hierboven het id van het paar in, waarvan je de stamboom wilt zien. Dit moet " +
    "dus een nummer zijn.";
            // 
            // PaardenfokkerijForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(449, 460);
            this.Controls.Add(this.lblNaam);
            this.Controls.Add(this.tbNaam);
            this.Controls.Add(this.btnVraagOudersOp);
            this.Controls.Add(this.lbStamboom);
            this.Name = "PaardenfokkerijForm";
            this.Text = "Stamboom";
            this.Load += new System.EventHandler(this.PaardenfokkerijForm_Load);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ListBox lbStamboom;
        private System.Windows.Forms.Button btnVraagOudersOp;
        private System.Windows.Forms.TextBox tbNaam;
        private System.Windows.Forms.Label lblNaam;
    }
}

