namespace Perceptron
{
    partial class frmMain
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
            this.btnLearn = new System.Windows.Forms.Button();
            this.btnClear = new System.Windows.Forms.Button();
            this.trackLearningRate = new System.Windows.Forms.TrackBar();
            this.lblLearningRate = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.txtIterations = new System.Windows.Forms.TextBox();
            this.pnlCanvas = new System.Windows.Forms.Panel();
            this.label2 = new System.Windows.Forms.Label();
            this.lbblue = new System.Windows.Forms.ListBox();
            this.lbred = new System.Windows.Forms.ListBox();
            this.label3 = new System.Windows.Forms.Label();
            this.lbresumo = new System.Windows.Forms.ListBox();
            ((System.ComponentModel.ISupportInitialize)(this.trackLearningRate)).BeginInit();
            this.SuspendLayout();
            // 
            // btnLearn
            // 
            this.btnLearn.Location = new System.Drawing.Point(291, 197);
            this.btnLearn.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnLearn.Name = "btnLearn";
            this.btnLearn.Size = new System.Drawing.Size(189, 28);
            this.btnLearn.TabIndex = 1;
            this.btnLearn.Text = "Aprender";
            this.btnLearn.UseVisualStyleBackColor = true;
            this.btnLearn.Click += new System.EventHandler(this.btnLearn_Click);
            // 
            // btnClear
            // 
            this.btnClear.Location = new System.Drawing.Point(291, 233);
            this.btnClear.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.btnClear.Name = "btnClear";
            this.btnClear.Size = new System.Drawing.Size(189, 28);
            this.btnClear.TabIndex = 2;
            this.btnClear.Text = "Limpar";
            this.btnClear.UseVisualStyleBackColor = true;
            this.btnClear.Click += new System.EventHandler(this.btnClear_Click);
            // 
            // trackLearningRate
            // 
            this.trackLearningRate.Location = new System.Drawing.Point(291, 57);
            this.trackLearningRate.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.trackLearningRate.Maximum = 500;
            this.trackLearningRate.Name = "trackLearningRate";
            this.trackLearningRate.Size = new System.Drawing.Size(188, 56);
            this.trackLearningRate.TabIndex = 3;
            this.trackLearningRate.TickFrequency = 20;
            this.trackLearningRate.Scroll += new System.EventHandler(this.trackLearningRate_Scroll);
            // 
            // lblLearningRate
            // 
            this.lblLearningRate.Location = new System.Drawing.Point(291, 25);
            this.lblLearningRate.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblLearningRate.Name = "lblLearningRate";
            this.lblLearningRate.Size = new System.Drawing.Size(189, 28);
            this.lblLearningRate.TabIndex = 4;
            this.lblLearningRate.Text = "Taxa de Aprendizado: 0";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(291, 108);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(55, 17);
            this.label1.TabIndex = 5;
            this.label1.Text = "Epochs";
            // 
            // txtIterations
            // 
            this.txtIterations.Location = new System.Drawing.Point(424, 105);
            this.txtIterations.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txtIterations.Name = "txtIterations";
            this.txtIterations.Size = new System.Drawing.Size(55, 22);
            this.txtIterations.TabIndex = 6;
            this.txtIterations.Text = "100";
            // 
            // pnlCanvas
            // 
            this.pnlCanvas.BackColor = System.Drawing.Color.White;
            this.pnlCanvas.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlCanvas.Location = new System.Drawing.Point(16, 15);
            this.pnlCanvas.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.pnlCanvas.Name = "pnlCanvas";
            this.pnlCanvas.Size = new System.Drawing.Size(266, 246);
            this.pnlCanvas.TabIndex = 7;
            this.pnlCanvas.Paint += new System.Windows.Forms.PaintEventHandler(this.pnlCanvas_Paint);
            this.pnlCanvas.MouseDown += new System.Windows.Forms.MouseEventHandler(this.pnlCanvas_MouseDown);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(505, 5);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 17);
            this.label2.TabIndex = 8;
            this.label2.Text = "Azul";
            // 
            // lbblue
            // 
            this.lbblue.FormattingEnabled = true;
            this.lbblue.ItemHeight = 16;
            this.lbblue.Location = new System.Drawing.Point(508, 25);
            this.lbblue.Name = "lbblue";
            this.lbblue.Size = new System.Drawing.Size(120, 244);
            this.lbblue.TabIndex = 9;
            // 
            // lbred
            // 
            this.lbred.FormattingEnabled = true;
            this.lbred.ItemHeight = 16;
            this.lbred.Location = new System.Drawing.Point(634, 25);
            this.lbred.Name = "lbred";
            this.lbred.Size = new System.Drawing.Size(120, 244);
            this.lbred.TabIndex = 10;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(634, 5);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(68, 17);
            this.label3.TabIndex = 11;
            this.label3.Text = "Vermelho";
            // 
            // lbresumo
            // 
            this.lbresumo.FormattingEnabled = true;
            this.lbresumo.ItemHeight = 16;
            this.lbresumo.Location = new System.Drawing.Point(16, 286);
            this.lbresumo.Name = "lbresumo";
            this.lbresumo.Size = new System.Drawing.Size(1094, 260);
            this.lbresumo.TabIndex = 29;
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1122, 567);
            this.Controls.Add(this.lbresumo);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.lbred);
            this.Controls.Add(this.lbblue);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.pnlCanvas);
            this.Controls.Add(this.txtIterations);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lblLearningRate);
            this.Controls.Add(this.trackLearningRate);
            this.Controls.Add(this.btnClear);
            this.Controls.Add(this.btnLearn);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frmMain";
            this.Text = "Perceptron Simulation";
            this.Load += new System.EventHandler(this.frmMain_Load);
            ((System.ComponentModel.ISupportInitialize)(this.trackLearningRate)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnLearn;
        private System.Windows.Forms.Button btnClear;
        private System.Windows.Forms.TrackBar trackLearningRate;
        private System.Windows.Forms.Label lblLearningRate;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtIterations;
        private System.Windows.Forms.Panel pnlCanvas;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ListBox lbblue;
        private System.Windows.Forms.ListBox lbred;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ListBox lbresumo;
    }
}

