namespace QuanLyCafe
{
    partial class Fmain
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
			this.flbBan = new System.Windows.Forms.FlowLayoutPanel();
			this.panel1 = new System.Windows.Forms.Panel();
			this.label4 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.btDathang = new System.Windows.Forms.Button();
			this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
			this.cbbNuoc = new System.Windows.Forms.ComboBox();
			this.dtgBillInfo = new System.Windows.Forms.DataGridView();
			this.panel3 = new System.Windows.Forms.Panel();
			this.label3 = new System.Windows.Forms.Label();
			this.tbKhuyenMai = new System.Windows.Forms.TextBox();
			this.label1 = new System.Windows.Forms.Label();
			this.btThanhtoan = new System.Windows.Forms.Button();
			this.tbTongTien = new System.Windows.Forms.TextBox();
			this.menuStrip1 = new System.Windows.Forms.MenuStrip();
			this.tàiKhoảnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
			this.label5 = new System.Windows.Forms.Label();
			this.tbBan = new System.Windows.Forms.TextBox();
			this.panel1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
			((System.ComponentModel.ISupportInitialize)(this.dtgBillInfo)).BeginInit();
			this.panel3.SuspendLayout();
			this.menuStrip1.SuspendLayout();
			this.tableLayoutPanel1.SuspendLayout();
			this.SuspendLayout();
			// 
			// flbBan
			// 
			this.flbBan.AutoScroll = true;
			this.flbBan.Dock = System.Windows.Forms.DockStyle.Fill;
			this.flbBan.Location = new System.Drawing.Point(3, 3);
			this.flbBan.Name = "flbBan";
			this.flbBan.Size = new System.Drawing.Size(381, 329);
			this.flbBan.TabIndex = 0;
			// 
			// panel1
			// 
			this.panel1.AutoSize = true;
			this.panel1.Controls.Add(this.tbBan);
			this.panel1.Controls.Add(this.label5);
			this.panel1.Controls.Add(this.label4);
			this.panel1.Controls.Add(this.label2);
			this.panel1.Controls.Add(this.btDathang);
			this.panel1.Controls.Add(this.numericUpDown1);
			this.panel1.Controls.Add(this.cbbNuoc);
			this.panel1.Controls.Add(this.dtgBillInfo);
			this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel1.Location = new System.Drawing.Point(390, 3);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(427, 329);
			this.panel1.TabIndex = 1;
			this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
			// 
			// label4
			// 
			this.label4.AutoSize = true;
			this.label4.Location = new System.Drawing.Point(25, 11);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(75, 13);
			this.label4.TabIndex = 5;
			this.label4.Text = "Tên loại nước:";
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(48, 33);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(52, 13);
			this.label2.TabIndex = 4;
			this.label2.Text = "Số lượng:";
			// 
			// btDathang
			// 
			this.btDathang.Location = new System.Drawing.Point(283, 3);
			this.btDathang.Name = "btDathang";
			this.btDathang.Size = new System.Drawing.Size(56, 48);
			this.btDathang.TabIndex = 3;
			this.btDathang.Text = "Đặt hàng";
			this.btDathang.UseVisualStyleBackColor = true;
			this.btDathang.Click += new System.EventHandler(this.btDathang_Click);
			// 
			// numericUpDown1
			// 
			this.numericUpDown1.Location = new System.Drawing.Point(106, 31);
			this.numericUpDown1.Name = "numericUpDown1";
			this.numericUpDown1.Size = new System.Drawing.Size(171, 20);
			this.numericUpDown1.TabIndex = 2;
			this.numericUpDown1.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
			// 
			// cbbNuoc
			// 
			this.cbbNuoc.FormattingEnabled = true;
			this.cbbNuoc.Location = new System.Drawing.Point(106, 3);
			this.cbbNuoc.Name = "cbbNuoc";
			this.cbbNuoc.Size = new System.Drawing.Size(170, 21);
			this.cbbNuoc.TabIndex = 1;
			// 
			// dtgBillInfo
			// 
			this.dtgBillInfo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dtgBillInfo.Dock = System.Windows.Forms.DockStyle.Bottom;
			this.dtgBillInfo.Location = new System.Drawing.Point(0, 97);
			this.dtgBillInfo.Name = "dtgBillInfo";
			this.dtgBillInfo.Size = new System.Drawing.Size(427, 232);
			this.dtgBillInfo.TabIndex = 0;
			// 
			// panel3
			// 
			this.panel3.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.panel3.AutoSize = true;
			this.panel3.Controls.Add(this.label3);
			this.panel3.Controls.Add(this.tbKhuyenMai);
			this.panel3.Controls.Add(this.label1);
			this.panel3.Controls.Add(this.btThanhtoan);
			this.panel3.Controls.Add(this.tbTongTien);
			this.panel3.Location = new System.Drawing.Point(390, 338);
			this.panel3.Name = "panel3";
			this.panel3.Size = new System.Drawing.Size(427, 70);
			this.panel3.TabIndex = 2;
			// 
			// label3
			// 
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(9, 37);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(48, 13);
			this.label3.TabIndex = 4;
			this.label3.Text = "Giảm giá";
			// 
			// tbKhuyenMai
			// 
			this.tbKhuyenMai.Location = new System.Drawing.Point(67, 34);
			this.tbKhuyenMai.Name = "tbKhuyenMai";
			this.tbKhuyenMai.Size = new System.Drawing.Size(119, 20);
			this.tbKhuyenMai.TabIndex = 3;
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(9, 15);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(52, 13);
			this.label1.TabIndex = 2;
			this.label1.Text = "Tổng tiền";
			// 
			// btThanhtoan
			// 
			this.btThanhtoan.Location = new System.Drawing.Point(192, 7);
			this.btThanhtoan.Name = "btThanhtoan";
			this.btThanhtoan.Size = new System.Drawing.Size(75, 47);
			this.btThanhtoan.TabIndex = 1;
			this.btThanhtoan.Text = "Thanh toán";
			this.btThanhtoan.UseVisualStyleBackColor = true;
			this.btThanhtoan.Click += new System.EventHandler(this.btThanhtoan_Click);
			// 
			// tbTongTien
			// 
			this.tbTongTien.Location = new System.Drawing.Point(67, 12);
			this.tbTongTien.Name = "tbTongTien";
			this.tbTongTien.Size = new System.Drawing.Size(119, 20);
			this.tbTongTien.TabIndex = 0;
			// 
			// menuStrip1
			// 
			this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tàiKhoảnToolStripMenuItem});
			this.menuStrip1.Location = new System.Drawing.Point(0, 0);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Size = new System.Drawing.Size(820, 24);
			this.menuStrip1.TabIndex = 3;
			this.menuStrip1.Text = "menuStrip1";
			// 
			// tàiKhoảnToolStripMenuItem
			// 
			this.tàiKhoảnToolStripMenuItem.Name = "tàiKhoảnToolStripMenuItem";
			this.tàiKhoảnToolStripMenuItem.Size = new System.Drawing.Size(71, 20);
			this.tàiKhoảnToolStripMenuItem.Text = "Tài Khoản";
			// 
			// tableLayoutPanel1
			// 
			this.tableLayoutPanel1.ColumnCount = 2;
			this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
			this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
			this.tableLayoutPanel1.Controls.Add(this.flbBan, 0, 0);
			this.tableLayoutPanel1.Controls.Add(this.panel1, 1, 0);
			this.tableLayoutPanel1.Controls.Add(this.panel3, 1, 1);
			this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 24);
			this.tableLayoutPanel1.Name = "tableLayoutPanel1";
			this.tableLayoutPanel1.RowCount = 2;
			this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 81.63265F));
			this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 18.36735F));
			this.tableLayoutPanel1.Size = new System.Drawing.Size(820, 411);
			this.tableLayoutPanel1.TabIndex = 4;
			// 
			// label5
			// 
			this.label5.AutoSize = true;
			this.label5.Location = new System.Drawing.Point(4, 78);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(43, 13);
			this.label5.TabIndex = 6;
			this.label5.Text = "Bàn số:";
			// 
			// tbBan
			// 
			this.tbBan.Enabled = false;
			this.tbBan.Location = new System.Drawing.Point(51, 75);
			this.tbBan.Name = "tbBan";
			this.tbBan.Size = new System.Drawing.Size(35, 20);
			this.tbBan.TabIndex = 7;
			// 
			// Fmain
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(820, 435);
			this.Controls.Add(this.tableLayoutPanel1);
			this.Controls.Add(this.menuStrip1);
			this.MainMenuStrip = this.menuStrip1;
			this.Name = "Fmain";
			this.Text = "Form1";
			this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.Fmain_FormClosed);
			this.Load += new System.EventHandler(this.Fmain_Load);
			this.panel1.ResumeLayout(false);
			this.panel1.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
			((System.ComponentModel.ISupportInitialize)(this.dtgBillInfo)).EndInit();
			this.panel3.ResumeLayout(false);
			this.panel3.PerformLayout();
			this.menuStrip1.ResumeLayout(false);
			this.menuStrip1.PerformLayout();
			this.tableLayoutPanel1.ResumeLayout(false);
			this.tableLayoutPanel1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();

        }

		#endregion

		private System.Windows.Forms.FlowLayoutPanel flbBan;
		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Button btDathang;
		private System.Windows.Forms.NumericUpDown numericUpDown1;
		private System.Windows.Forms.ComboBox cbbNuoc;
		private System.Windows.Forms.DataGridView dtgBillInfo;
		private System.Windows.Forms.Panel panel3;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.TextBox tbKhuyenMai;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Button btThanhtoan;
		private System.Windows.Forms.TextBox tbTongTien;
		private System.Windows.Forms.MenuStrip menuStrip1;
		private System.Windows.Forms.ToolStripMenuItem tàiKhoảnToolStripMenuItem;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
		private System.Windows.Forms.TextBox tbBan;
		private System.Windows.Forms.Label label5;
	}
}

