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
			this.panel1 = new System.Windows.Forms.Panel();
			this.panel5 = new System.Windows.Forms.Panel();
			this.cbbNuoc = new System.Windows.Forms.ComboBox();
			this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
			this.btDathang = new System.Windows.Forms.Button();
			this.panel4 = new System.Windows.Forms.Panel();
			this.dtgNuocUong = new System.Windows.Forms.DataGridView();
			this.tbBan = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.menuStrip1 = new System.Windows.Forms.MenuStrip();
			this.tàiKhoảnToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
			this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
			this.panel6 = new System.Windows.Forms.Panel();
			this.tableLayoutPanel2 = new System.Windows.Forms.TableLayoutPanel();
			this.flbBan = new System.Windows.Forms.FlowLayoutPanel();
			this.panel7 = new System.Windows.Forms.Panel();
			this.button1 = new System.Windows.Forms.Button();
			this.panel8 = new System.Windows.Forms.Panel();
			this.tableLayoutPanel3 = new System.Windows.Forms.TableLayoutPanel();
			this.panel2 = new System.Windows.Forms.Panel();
			this.dtgBillInfo = new System.Windows.Forms.DataGridView();
			this.panel3 = new System.Windows.Forms.Panel();
			this.tbTongTien = new System.Windows.Forms.TextBox();
			this.label3 = new System.Windows.Forms.Label();
			this.btThanhtoan = new System.Windows.Forms.Button();
			this.tbKhuyenMai = new System.Windows.Forms.TextBox();
			this.label1 = new System.Windows.Forms.Label();
			this.panel1.SuspendLayout();
			this.panel5.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
			this.panel4.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dtgNuocUong)).BeginInit();
			this.menuStrip1.SuspendLayout();
			this.tableLayoutPanel1.SuspendLayout();
			this.panel6.SuspendLayout();
			this.tableLayoutPanel2.SuspendLayout();
			this.panel7.SuspendLayout();
			this.panel8.SuspendLayout();
			this.tableLayoutPanel3.SuspendLayout();
			this.panel2.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dtgBillInfo)).BeginInit();
			this.panel3.SuspendLayout();
			this.SuspendLayout();
			// 
			// panel1
			// 
			this.panel1.AutoSize = true;
			this.panel1.Controls.Add(this.panel5);
			this.panel1.Controls.Add(this.panel4);
			this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel1.Location = new System.Drawing.Point(443, 3);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(324, 435);
			this.panel1.TabIndex = 1;
			this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
			// 
			// panel5
			// 
			this.panel5.Controls.Add(this.cbbNuoc);
			this.panel5.Controls.Add(this.numericUpDown1);
			this.panel5.Controls.Add(this.btDathang);
			this.panel5.Dock = System.Windows.Forms.DockStyle.Top;
			this.panel5.Location = new System.Drawing.Point(0, 0);
			this.panel5.Name = "panel5";
			this.panel5.Size = new System.Drawing.Size(324, 68);
			this.panel5.TabIndex = 9;
			// 
			// cbbNuoc
			// 
			this.cbbNuoc.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.cbbNuoc.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.cbbNuoc.FormattingEnabled = true;
			this.cbbNuoc.Location = new System.Drawing.Point(36, 13);
			this.cbbNuoc.Name = "cbbNuoc";
			this.cbbNuoc.Size = new System.Drawing.Size(195, 23);
			this.cbbNuoc.TabIndex = 6;
			this.cbbNuoc.TabStop = false;
			// 
			// numericUpDown1
			// 
			this.numericUpDown1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.numericUpDown1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.numericUpDown1.Location = new System.Drawing.Point(174, 42);
			this.numericUpDown1.Name = "numericUpDown1";
			this.numericUpDown1.Size = new System.Drawing.Size(57, 21);
			this.numericUpDown1.TabIndex = 7;
			this.numericUpDown1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			this.numericUpDown1.Value = new decimal(new int[] {
            1,
            0,
            0,
            0});
			// 
			// btDathang
			// 
			this.btDathang.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.btDathang.Location = new System.Drawing.Point(237, 13);
			this.btDathang.Name = "btDathang";
			this.btDathang.Size = new System.Drawing.Size(69, 50);
			this.btDathang.TabIndex = 8;
			this.btDathang.Text = "Đặt hàng";
			this.btDathang.UseVisualStyleBackColor = true;
			this.btDathang.Click += new System.EventHandler(this.btDathang_Click);
			// 
			// panel4
			// 
			this.panel4.Controls.Add(this.dtgNuocUong);
			this.panel4.Dock = System.Windows.Forms.DockStyle.Bottom;
			this.panel4.Location = new System.Drawing.Point(0, 69);
			this.panel4.Name = "panel4";
			this.panel4.Size = new System.Drawing.Size(324, 366);
			this.panel4.TabIndex = 8;
			// 
			// dtgNuocUong
			// 
			this.dtgNuocUong.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
			this.dtgNuocUong.BackgroundColor = System.Drawing.SystemColors.ActiveBorder;
			this.dtgNuocUong.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dtgNuocUong.Dock = System.Windows.Forms.DockStyle.Fill;
			this.dtgNuocUong.Location = new System.Drawing.Point(0, 0);
			this.dtgNuocUong.Name = "dtgNuocUong";
			this.dtgNuocUong.Size = new System.Drawing.Size(324, 366);
			this.dtgNuocUong.TabIndex = 8;
			// 
			// tbBan
			// 
			this.tbBan.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.tbBan.Enabled = false;
			this.tbBan.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.tbBan.Location = new System.Drawing.Point(6, 8);
			this.tbBan.Name = "tbBan";
			this.tbBan.Size = new System.Drawing.Size(47, 31);
			this.tbBan.TabIndex = 7;
			this.tbBan.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
			// 
			// label2
			// 
			this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(996, 0);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(52, 13);
			this.label2.TabIndex = 4;
			this.label2.Text = "Số lượng:";
			// 
			// menuStrip1
			// 
			this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.tàiKhoảnToolStripMenuItem});
			this.menuStrip1.Location = new System.Drawing.Point(0, 0);
			this.menuStrip1.Name = "menuStrip1";
			this.menuStrip1.Size = new System.Drawing.Size(1100, 24);
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
			this.tableLayoutPanel1.ColumnCount = 3;
			this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 40F));
			this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 30F));
			this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 30F));
			this.tableLayoutPanel1.Controls.Add(this.panel1, 1, 0);
			this.tableLayoutPanel1.Controls.Add(this.panel6, 0, 0);
			this.tableLayoutPanel1.Controls.Add(this.panel8, 2, 0);
			this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 24);
			this.tableLayoutPanel1.Name = "tableLayoutPanel1";
			this.tableLayoutPanel1.RowCount = 1;
			this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 83.33333F));
			this.tableLayoutPanel1.Size = new System.Drawing.Size(1100, 441);
			this.tableLayoutPanel1.TabIndex = 4;
			// 
			// panel6
			// 
			this.panel6.Controls.Add(this.tableLayoutPanel2);
			this.panel6.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel6.Location = new System.Drawing.Point(3, 3);
			this.panel6.Name = "panel6";
			this.panel6.Size = new System.Drawing.Size(434, 435);
			this.panel6.TabIndex = 5;
			// 
			// tableLayoutPanel2
			// 
			this.tableLayoutPanel2.ColumnCount = 1;
			this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
			this.tableLayoutPanel2.Controls.Add(this.flbBan, 0, 1);
			this.tableLayoutPanel2.Controls.Add(this.panel7, 0, 0);
			this.tableLayoutPanel2.Dock = System.Windows.Forms.DockStyle.Fill;
			this.tableLayoutPanel2.Location = new System.Drawing.Point(0, 0);
			this.tableLayoutPanel2.Name = "tableLayoutPanel2";
			this.tableLayoutPanel2.RowCount = 2;
			this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 11.49425F));
			this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 88.50574F));
			this.tableLayoutPanel2.Size = new System.Drawing.Size(434, 435);
			this.tableLayoutPanel2.TabIndex = 0;
			// 
			// flbBan
			// 
			this.flbBan.AutoScroll = true;
			this.flbBan.Dock = System.Windows.Forms.DockStyle.Fill;
			this.flbBan.Location = new System.Drawing.Point(3, 52);
			this.flbBan.Name = "flbBan";
			this.flbBan.Size = new System.Drawing.Size(428, 380);
			this.flbBan.TabIndex = 1;
			// 
			// panel7
			// 
			this.panel7.Controls.Add(this.button1);
			this.panel7.Controls.Add(this.tbBan);
			this.panel7.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel7.Location = new System.Drawing.Point(3, 3);
			this.panel7.Name = "panel7";
			this.panel7.Size = new System.Drawing.Size(428, 43);
			this.panel7.TabIndex = 2;
			// 
			// button1
			// 
			this.button1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
			this.button1.Location = new System.Drawing.Point(59, 15);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(75, 23);
			this.button1.TabIndex = 8;
			this.button1.Text = "Chuyển bàn";
			this.button1.UseVisualStyleBackColor = true;
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// panel8
			// 
			this.panel8.Controls.Add(this.tableLayoutPanel3);
			this.panel8.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel8.Location = new System.Drawing.Point(773, 3);
			this.panel8.Name = "panel8";
			this.panel8.Size = new System.Drawing.Size(324, 435);
			this.panel8.TabIndex = 6;
			// 
			// tableLayoutPanel3
			// 
			this.tableLayoutPanel3.ColumnCount = 1;
			this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
			this.tableLayoutPanel3.Controls.Add(this.panel2, 0, 0);
			this.tableLayoutPanel3.Controls.Add(this.panel3, 0, 1);
			this.tableLayoutPanel3.Dock = System.Windows.Forms.DockStyle.Fill;
			this.tableLayoutPanel3.Location = new System.Drawing.Point(0, 0);
			this.tableLayoutPanel3.Name = "tableLayoutPanel3";
			this.tableLayoutPanel3.RowCount = 2;
			this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 79.54023F));
			this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 20.45977F));
			this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
			this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
			this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
			this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
			this.tableLayoutPanel3.Size = new System.Drawing.Size(324, 435);
			this.tableLayoutPanel3.TabIndex = 0;
			// 
			// panel2
			// 
			this.panel2.Controls.Add(this.dtgBillInfo);
			this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel2.Location = new System.Drawing.Point(3, 3);
			this.panel2.Name = "panel2";
			this.panel2.Size = new System.Drawing.Size(318, 339);
			this.panel2.TabIndex = 0;
			// 
			// dtgBillInfo
			// 
			this.dtgBillInfo.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
			this.dtgBillInfo.BackgroundColor = System.Drawing.SystemColors.ActiveBorder;
			this.dtgBillInfo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dtgBillInfo.Dock = System.Windows.Forms.DockStyle.Fill;
			this.dtgBillInfo.Location = new System.Drawing.Point(0, 0);
			this.dtgBillInfo.Name = "dtgBillInfo";
			this.dtgBillInfo.Size = new System.Drawing.Size(318, 339);
			this.dtgBillInfo.TabIndex = 11;
			this.dtgBillInfo.DataSourceChanged += new System.EventHandler(this.dtgBillInfo_DataSourceChanged);
			// 
			// panel3
			// 
			this.panel3.Controls.Add(this.tbTongTien);
			this.panel3.Controls.Add(this.label3);
			this.panel3.Controls.Add(this.btThanhtoan);
			this.panel3.Controls.Add(this.tbKhuyenMai);
			this.panel3.Controls.Add(this.label1);
			this.panel3.Dock = System.Windows.Forms.DockStyle.Fill;
			this.panel3.Location = new System.Drawing.Point(3, 348);
			this.panel3.Name = "panel3";
			this.panel3.Size = new System.Drawing.Size(318, 84);
			this.panel3.TabIndex = 1;
			// 
			// tbTongTien
			// 
			this.tbTongTien.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.tbTongTien.Location = new System.Drawing.Point(95, 33);
			this.tbTongTien.Name = "tbTongTien";
			this.tbTongTien.Size = new System.Drawing.Size(119, 20);
			this.tbTongTien.TabIndex = 17;
			// 
			// label3
			// 
			this.label3.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(37, 62);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(48, 13);
			this.label3.TabIndex = 21;
			this.label3.Text = "Giảm giá";
			// 
			// btThanhtoan
			// 
			this.btThanhtoan.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.btThanhtoan.Location = new System.Drawing.Point(220, 33);
			this.btThanhtoan.Name = "btThanhtoan";
			this.btThanhtoan.Size = new System.Drawing.Size(75, 47);
			this.btThanhtoan.TabIndex = 18;
			this.btThanhtoan.Text = "Thanh toán";
			this.btThanhtoan.UseVisualStyleBackColor = true;
			this.btThanhtoan.Click += new System.EventHandler(this.btThanhtoan_Click);
			// 
			// tbKhuyenMai
			// 
			this.tbKhuyenMai.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.tbKhuyenMai.Location = new System.Drawing.Point(95, 59);
			this.tbKhuyenMai.Name = "tbKhuyenMai";
			this.tbKhuyenMai.Size = new System.Drawing.Size(119, 20);
			this.tbKhuyenMai.TabIndex = 20;
			// 
			// label1
			// 
			this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(37, 36);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(52, 13);
			this.label1.TabIndex = 19;
			this.label1.Text = "Tổng tiền";
			// 
			// Fmain
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(1100, 465);
			this.Controls.Add(this.tableLayoutPanel1);
			this.Controls.Add(this.menuStrip1);
			this.Controls.Add(this.label2);
			this.MainMenuStrip = this.menuStrip1;
			this.Name = "Fmain";
			this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
			this.Text = "Form1";
			this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.Fmain_FormClosed);
			this.Load += new System.EventHandler(this.Fmain_Load);
			this.panel1.ResumeLayout(false);
			this.panel5.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
			this.panel4.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.dtgNuocUong)).EndInit();
			this.menuStrip1.ResumeLayout(false);
			this.menuStrip1.PerformLayout();
			this.tableLayoutPanel1.ResumeLayout(false);
			this.tableLayoutPanel1.PerformLayout();
			this.panel6.ResumeLayout(false);
			this.tableLayoutPanel2.ResumeLayout(false);
			this.panel7.ResumeLayout(false);
			this.panel7.PerformLayout();
			this.panel8.ResumeLayout(false);
			this.tableLayoutPanel3.ResumeLayout(false);
			this.panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.dtgBillInfo)).EndInit();
			this.panel3.ResumeLayout(false);
			this.panel3.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();

        }

		#endregion
		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.MenuStrip menuStrip1;
		private System.Windows.Forms.ToolStripMenuItem tàiKhoảnToolStripMenuItem;
		private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
		private System.Windows.Forms.Panel panel4;
		private System.Windows.Forms.TextBox tbBan;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.DataGridView dtgNuocUong;
		private System.Windows.Forms.Panel panel5;
		private System.Windows.Forms.ComboBox cbbNuoc;
		private System.Windows.Forms.NumericUpDown numericUpDown1;
		private System.Windows.Forms.Button btDathang;
		private System.Windows.Forms.Panel panel6;
		private System.Windows.Forms.TableLayoutPanel tableLayoutPanel2;
		private System.Windows.Forms.FlowLayoutPanel flbBan;
		private System.Windows.Forms.Panel panel7;
		private System.Windows.Forms.Panel panel8;
		private System.Windows.Forms.TableLayoutPanel tableLayoutPanel3;
		private System.Windows.Forms.Panel panel2;
		private System.Windows.Forms.DataGridView dtgBillInfo;
		private System.Windows.Forms.Panel panel3;
		private System.Windows.Forms.TextBox tbTongTien;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Button btThanhtoan;
		private System.Windows.Forms.TextBox tbKhuyenMai;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Button button1;
	}
}

