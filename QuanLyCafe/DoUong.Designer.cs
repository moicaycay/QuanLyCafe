namespace QuanLyCafe
{
	partial class DoUong
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
			this.tabControl1 = new System.Windows.Forms.TabControl();
			this.tabPage1 = new System.Windows.Forms.TabPage();
			this.tbTimKiem = new System.Windows.Forms.TextBox();
			this.label5 = new System.Windows.Forms.Label();
			this.btXoa = new System.Windows.Forms.Button();
			this.btCapNhap = new System.Windows.Forms.Button();
			this.btThem = new System.Windows.Forms.Button();
			this.tbDVT = new System.Windows.Forms.TextBox();
			this.label4 = new System.Windows.Forms.Label();
			this.tbDonGia = new System.Windows.Forms.TextBox();
			this.label3 = new System.Windows.Forms.Label();
			this.label2 = new System.Windows.Forms.Label();
			this.ccbLoaiDoUong = new System.Windows.Forms.ComboBox();
			this.tbTenDoUong = new System.Windows.Forms.TextBox();
			this.label1 = new System.Windows.Forms.Label();
			this.dtgDoUong = new System.Windows.Forms.DataGridView();
			this.tabPage2 = new System.Windows.Forms.TabPage();
			this.tbTimKiem2 = new System.Windows.Forms.TextBox();
			this.label6 = new System.Windows.Forms.Label();
			this.btXoa2 = new System.Windows.Forms.Button();
			this.btCapNhap2 = new System.Windows.Forms.Button();
			this.btThem2 = new System.Windows.Forms.Button();
			this.tbTenDoUong2 = new System.Windows.Forms.TextBox();
			this.label10 = new System.Windows.Forms.Label();
			this.dtgLoaiDoUong = new System.Windows.Forms.DataGridView();
			this.tabControl1.SuspendLayout();
			this.tabPage1.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dtgDoUong)).BeginInit();
			this.tabPage2.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.dtgLoaiDoUong)).BeginInit();
			this.SuspendLayout();
			// 
			// tabControl1
			// 
			this.tabControl1.Controls.Add(this.tabPage1);
			this.tabControl1.Controls.Add(this.tabPage2);
			this.tabControl1.Dock = System.Windows.Forms.DockStyle.Fill;
			this.tabControl1.Location = new System.Drawing.Point(0, 0);
			this.tabControl1.Name = "tabControl1";
			this.tabControl1.SelectedIndex = 0;
			this.tabControl1.Size = new System.Drawing.Size(569, 349);
			this.tabControl1.TabIndex = 0;
			// 
			// tabPage1
			// 
			this.tabPage1.Controls.Add(this.tbTimKiem);
			this.tabPage1.Controls.Add(this.label5);
			this.tabPage1.Controls.Add(this.btXoa);
			this.tabPage1.Controls.Add(this.btCapNhap);
			this.tabPage1.Controls.Add(this.btThem);
			this.tabPage1.Controls.Add(this.tbDVT);
			this.tabPage1.Controls.Add(this.label4);
			this.tabPage1.Controls.Add(this.tbDonGia);
			this.tabPage1.Controls.Add(this.label3);
			this.tabPage1.Controls.Add(this.label2);
			this.tabPage1.Controls.Add(this.ccbLoaiDoUong);
			this.tabPage1.Controls.Add(this.tbTenDoUong);
			this.tabPage1.Controls.Add(this.label1);
			this.tabPage1.Controls.Add(this.dtgDoUong);
			this.tabPage1.Location = new System.Drawing.Point(4, 22);
			this.tabPage1.Name = "tabPage1";
			this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
			this.tabPage1.Size = new System.Drawing.Size(561, 323);
			this.tabPage1.TabIndex = 0;
			this.tabPage1.Text = "Đồ uống";
			this.tabPage1.UseVisualStyleBackColor = true;
			// 
			// tbTimKiem
			// 
			this.tbTimKiem.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.tbTimKiem.Location = new System.Drawing.Point(403, 71);
			this.tbTimKiem.Name = "tbTimKiem";
			this.tbTimKiem.Size = new System.Drawing.Size(150, 20);
			this.tbTimKiem.TabIndex = 13;
			// 
			// label5
			// 
			this.label5.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.label5.AutoSize = true;
			this.label5.Location = new System.Drawing.Point(345, 73);
			this.label5.Name = "label5";
			this.label5.Size = new System.Drawing.Size(52, 13);
			this.label5.TabIndex = 12;
			this.label5.Text = "Tìm kiếm:";
			// 
			// btXoa
			// 
			this.btXoa.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.btXoa.Location = new System.Drawing.Point(196, 68);
			this.btXoa.Name = "btXoa";
			this.btXoa.Size = new System.Drawing.Size(75, 23);
			this.btXoa.TabIndex = 11;
			this.btXoa.Text = "Xóa";
			this.btXoa.UseVisualStyleBackColor = true;
			this.btXoa.Click += new System.EventHandler(this.btXoa_Click);
			// 
			// btCapNhap
			// 
			this.btCapNhap.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.btCapNhap.Location = new System.Drawing.Point(115, 68);
			this.btCapNhap.Name = "btCapNhap";
			this.btCapNhap.Size = new System.Drawing.Size(75, 23);
			this.btCapNhap.TabIndex = 10;
			this.btCapNhap.Text = "Cập nhật";
			this.btCapNhap.UseVisualStyleBackColor = true;
			this.btCapNhap.Click += new System.EventHandler(this.btCapNhap_Click);
			// 
			// btThem
			// 
			this.btThem.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.btThem.Location = new System.Drawing.Point(24, 68);
			this.btThem.Name = "btThem";
			this.btThem.Size = new System.Drawing.Size(85, 23);
			this.btThem.TabIndex = 9;
			this.btThem.Text = "Thêm";
			this.btThem.UseVisualStyleBackColor = true;
			this.btThem.Click += new System.EventHandler(this.btThem_Click);
			// 
			// tbDVT
			// 
			this.tbDVT.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.tbDVT.Location = new System.Drawing.Point(403, 38);
			this.tbDVT.Name = "tbDVT";
			this.tbDVT.Size = new System.Drawing.Size(150, 20);
			this.tbDVT.TabIndex = 8;
			// 
			// label4
			// 
			this.label4.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.label4.AutoSize = true;
			this.label4.Location = new System.Drawing.Point(334, 41);
			this.label4.Name = "label4";
			this.label4.Size = new System.Drawing.Size(63, 13);
			this.label4.TabIndex = 7;
			this.label4.Text = "Đơn vị tính:";
			// 
			// tbDonGia
			// 
			this.tbDonGia.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.tbDonGia.Location = new System.Drawing.Point(121, 42);
			this.tbDonGia.Name = "tbDonGia";
			this.tbDonGia.Size = new System.Drawing.Size(150, 20);
			this.tbDonGia.TabIndex = 6;
			// 
			// label3
			// 
			this.label3.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.label3.AutoSize = true;
			this.label3.Location = new System.Drawing.Point(43, 45);
			this.label3.Name = "label3";
			this.label3.Size = new System.Drawing.Size(50, 13);
			this.label3.TabIndex = 5;
			this.label3.Text = "Đơn giá :";
			// 
			// label2
			// 
			this.label2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(324, 10);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(73, 13);
			this.label2.TabIndex = 4;
			this.label2.Text = "Loại đồ uống:";
			// 
			// ccbLoaiDoUong
			// 
			this.ccbLoaiDoUong.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.ccbLoaiDoUong.FormattingEnabled = true;
			this.ccbLoaiDoUong.Location = new System.Drawing.Point(403, 7);
			this.ccbLoaiDoUong.Name = "ccbLoaiDoUong";
			this.ccbLoaiDoUong.Size = new System.Drawing.Size(150, 21);
			this.ccbLoaiDoUong.TabIndex = 3;
			this.ccbLoaiDoUong.SelectedIndexChanged += new System.EventHandler(this.ccbLoaiDoUong_SelectedIndexChanged);
			// 
			// tbTenDoUong
			// 
			this.tbTenDoUong.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.tbTenDoUong.Location = new System.Drawing.Point(121, 16);
			this.tbTenDoUong.Name = "tbTenDoUong";
			this.tbTenDoUong.Size = new System.Drawing.Size(150, 20);
			this.tbTenDoUong.TabIndex = 2;
			// 
			// label1
			// 
			this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(21, 19);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(72, 13);
			this.label1.TabIndex = 1;
			this.label1.Text = "Tên đồ uống:";
			// 
			// dtgDoUong
			// 
			this.dtgDoUong.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
			this.dtgDoUong.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dtgDoUong.Dock = System.Windows.Forms.DockStyle.Bottom;
			this.dtgDoUong.Location = new System.Drawing.Point(3, 105);
			this.dtgDoUong.Name = "dtgDoUong";
			this.dtgDoUong.Size = new System.Drawing.Size(555, 215);
			this.dtgDoUong.TabIndex = 0;
			this.dtgDoUong.SelectionChanged += new System.EventHandler(this.dtgDoUong_SelectionChanged);
			// 
			// tabPage2
			// 
			this.tabPage2.Controls.Add(this.tbTimKiem2);
			this.tabPage2.Controls.Add(this.label6);
			this.tabPage2.Controls.Add(this.btXoa2);
			this.tabPage2.Controls.Add(this.btCapNhap2);
			this.tabPage2.Controls.Add(this.btThem2);
			this.tabPage2.Controls.Add(this.tbTenDoUong2);
			this.tabPage2.Controls.Add(this.label10);
			this.tabPage2.Controls.Add(this.dtgLoaiDoUong);
			this.tabPage2.Location = new System.Drawing.Point(4, 22);
			this.tabPage2.Name = "tabPage2";
			this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
			this.tabPage2.Size = new System.Drawing.Size(561, 323);
			this.tabPage2.TabIndex = 1;
			this.tabPage2.Text = "Loại đồ uống";
			this.tabPage2.UseVisualStyleBackColor = true;
			// 
			// tbTimKiem2
			// 
			this.tbTimKiem2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.tbTimKiem2.Location = new System.Drawing.Point(396, 33);
			this.tbTimKiem2.Name = "tbTimKiem2";
			this.tbTimKiem2.Size = new System.Drawing.Size(159, 20);
			this.tbTimKiem2.TabIndex = 27;
			// 
			// label6
			// 
			this.label6.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.label6.AutoSize = true;
			this.label6.Location = new System.Drawing.Point(327, 36);
			this.label6.Name = "label6";
			this.label6.Size = new System.Drawing.Size(52, 13);
			this.label6.TabIndex = 26;
			this.label6.Text = "Tìm kiếm:";
			// 
			// btXoa2
			// 
			this.btXoa2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.btXoa2.Location = new System.Drawing.Point(186, 76);
			this.btXoa2.Name = "btXoa2";
			this.btXoa2.Size = new System.Drawing.Size(82, 23);
			this.btXoa2.TabIndex = 25;
			this.btXoa2.Text = "Xóa";
			this.btXoa2.UseVisualStyleBackColor = true;
			this.btXoa2.Click += new System.EventHandler(this.btXoa2_Click);
			// 
			// btCapNhap2
			// 
			this.btCapNhap2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.btCapNhap2.Location = new System.Drawing.Point(105, 76);
			this.btCapNhap2.Name = "btCapNhap2";
			this.btCapNhap2.Size = new System.Drawing.Size(75, 23);
			this.btCapNhap2.TabIndex = 24;
			this.btCapNhap2.Text = "Cập nhật";
			this.btCapNhap2.UseVisualStyleBackColor = true;
			this.btCapNhap2.Click += new System.EventHandler(this.btCapNhap2_Click);
			// 
			// btThem2
			// 
			this.btThem2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.btThem2.Location = new System.Drawing.Point(33, 76);
			this.btThem2.Name = "btThem2";
			this.btThem2.Size = new System.Drawing.Size(66, 23);
			this.btThem2.TabIndex = 23;
			this.btThem2.Text = "Thêm";
			this.btThem2.UseVisualStyleBackColor = true;
			this.btThem2.Click += new System.EventHandler(this.btThem2_Click);
			// 
			// tbTenDoUong2
			// 
			this.tbTenDoUong2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.tbTenDoUong2.Location = new System.Drawing.Point(105, 33);
			this.tbTenDoUong2.Name = "tbTenDoUong2";
			this.tbTenDoUong2.Size = new System.Drawing.Size(159, 20);
			this.tbTenDoUong2.TabIndex = 16;
			// 
			// label10
			// 
			this.label10.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
			this.label10.AutoSize = true;
			this.label10.Location = new System.Drawing.Point(21, 36);
			this.label10.Name = "label10";
			this.label10.Size = new System.Drawing.Size(72, 13);
			this.label10.TabIndex = 15;
			this.label10.Text = "Tên đồ uống:";
			// 
			// dtgLoaiDoUong
			// 
			this.dtgLoaiDoUong.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
			this.dtgLoaiDoUong.BackgroundColor = System.Drawing.SystemColors.ButtonFace;
			this.dtgLoaiDoUong.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dtgLoaiDoUong.Dock = System.Windows.Forms.DockStyle.Bottom;
			this.dtgLoaiDoUong.Location = new System.Drawing.Point(3, 105);
			this.dtgLoaiDoUong.Name = "dtgLoaiDoUong";
			this.dtgLoaiDoUong.Size = new System.Drawing.Size(555, 215);
			this.dtgLoaiDoUong.TabIndex = 14;
			this.dtgLoaiDoUong.SelectionChanged += new System.EventHandler(this.dtgLoaiDoUong_SelectionChanged);
			// 
			// DoUong
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(569, 349);
			this.Controls.Add(this.tabControl1);
			this.Name = "DoUong";
			this.Text = "DoUong";
			this.Load += new System.EventHandler(this.DoUong_Load);
			this.tabControl1.ResumeLayout(false);
			this.tabPage1.ResumeLayout(false);
			this.tabPage1.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.dtgDoUong)).EndInit();
			this.tabPage2.ResumeLayout(false);
			this.tabPage2.PerformLayout();
			((System.ComponentModel.ISupportInitialize)(this.dtgLoaiDoUong)).EndInit();
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.TabControl tabControl1;
		private System.Windows.Forms.TabPage tabPage1;
		private System.Windows.Forms.DataGridView dtgDoUong;
		private System.Windows.Forms.TabPage tabPage2;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.ComboBox ccbLoaiDoUong;
		private System.Windows.Forms.TextBox tbTenDoUong;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.TextBox tbDonGia;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.TextBox tbTimKiem;
		private System.Windows.Forms.Label label5;
		private System.Windows.Forms.Button btXoa;
		private System.Windows.Forms.Button btCapNhap;
		private System.Windows.Forms.Button btThem;
		private System.Windows.Forms.TextBox tbDVT;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.TextBox tbTimKiem2;
		private System.Windows.Forms.Label label6;
		private System.Windows.Forms.Button btXoa2;
		private System.Windows.Forms.Button btCapNhap2;
		private System.Windows.Forms.Button btThem2;
		private System.Windows.Forms.TextBox tbTenDoUong2;
		private System.Windows.Forms.Label label10;
		private System.Windows.Forms.DataGridView dtgLoaiDoUong;
	}
}