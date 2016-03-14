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
            this.btnVraagStamboomOp = new System.Windows.Forms.Button();
            this.lblNaam = new System.Windows.Forms.Label();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            this.panel1 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnVraagStamboomOp
            // 
            this.btnVraagStamboomOp.Location = new System.Drawing.Point(11, 11);
            this.btnVraagStamboomOp.Margin = new System.Windows.Forms.Padding(2);
            this.btnVraagStamboomOp.Name = "btnVraagStamboomOp";
            this.btnVraagStamboomOp.Size = new System.Drawing.Size(124, 49);
            this.btnVraagStamboomOp.TabIndex = 1;
            this.btnVraagStamboomOp.Text = "Vraag stamboom op";
            this.btnVraagStamboomOp.UseVisualStyleBackColor = true;
            this.btnVraagStamboomOp.Click += new System.EventHandler(this.btnVraagStamboomOp_Click);
            // 
            // lblNaam
            // 
            this.lblNaam.Location = new System.Drawing.Point(11, 85);
            this.lblNaam.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblNaam.Name = "lblNaam";
            this.lblNaam.Size = new System.Drawing.Size(124, 76);
            this.lblNaam.TabIndex = 3;
            this.lblNaam.Text = "Vul hierboven het id van het paar in, waarvan je de stamboom wilt zien. Dit moet " +
    "dus een nummer zijn.";
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.Location = new System.Drawing.Point(14, 66);
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(120, 20);
            this.numericUpDown1.TabIndex = 4;
            // 
            // panel1
            // 
            this.panel1.Location = new System.Drawing.Point(161, 11);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(675, 635);
            this.panel1.TabIndex = 5;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // PaardenfokkerijForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(848, 658);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.numericUpDown1);
            this.Controls.Add(this.lblNaam);
            this.Controls.Add(this.btnVraagStamboomOp);
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "PaardenfokkerijForm";
            this.Text = "Stamboom";
            this.Load += new System.EventHandler(this.PaardenfokkerijForm_Load);
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnVraagStamboomOp;
        private System.Windows.Forms.Label lblNaam;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
        private System.Windows.Forms.Panel panel1;
    }
}

