namespace QuanLyCafe
{
	partial class TaiKhoan
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
			System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(TaiKhoan));
			this.materialLabel2 = new MaterialSkin.Controls.MaterialLabel();
			this.materialLabel1 = new MaterialSkin.Controls.MaterialLabel();
			this.dtgTK = new System.Windows.Forms.DataGridView();
			this.tbTK = new System.Windows.Forms.TextBox();
			this.tbMK = new System.Windows.Forms.TextBox();
			this.rdAdmin = new System.Windows.Forms.RadioButton();
			this.materialLabel3 = new MaterialSkin.Controls.MaterialLabel();
			this.button1 = new System.Windows.Forms.Button();
			this.button2 = new System.Windows.Forms.Button();
			this.button3 = new System.Windows.Forms.Button();
			this.button4 = new System.Windows.Forms.Button();
			this.textBox3 = new System.Windows.Forms.TextBox();
			this.rdNhanVien = new System.Windows.Forms.RadioButton();
			((System.ComponentModel.ISupportInitialize)(this.dtgTK)).BeginInit();
			this.SuspendLayout();
			// 
			// materialLabel2
			// 
			this.materialLabel2.AutoSize = true;
			this.materialLabel2.Depth = 0;
			this.materialLabel2.Font = new System.Drawing.Font("Roboto", 11F);
			this.materialLabel2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
			this.materialLabel2.Location = new System.Drawing.Point(57, 52);
			this.materialLabel2.MouseState = MaterialSkin.MouseState.HOVER;
			this.materialLabel2.Name = "materialLabel2";
			this.materialLabel2.Size = new System.Drawing.Size(79, 19);
			this.materialLabel2.TabIndex = 7;
			this.materialLabel2.Text = "Mật khẩu: ";
			// 
			// materialLabel1
			// 
			this.materialLabel1.AutoSize = true;
			this.materialLabel1.Depth = 0;
			this.materialLabel1.Font = new System.Drawing.Font("Roboto", 11F);
			this.materialLabel1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
			this.materialLabel1.Location = new System.Drawing.Point(28, 21);
			this.materialLabel1.MouseState = MaterialSkin.MouseState.HOVER;
			this.materialLabel1.Name = "materialLabel1";
			this.materialLabel1.Size = new System.Drawing.Size(108, 19);
			this.materialLabel1.TabIndex = 6;
			this.materialLabel1.Text = "Tên tài khoản: ";
			// 
			// dtgTK
			// 
			this.dtgTK.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
			this.dtgTK.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
			this.dtgTK.Dock = System.Windows.Forms.DockStyle.Bottom;
			this.dtgTK.Location = new System.Drawing.Point(0, 128);
			this.dtgTK.Name = "dtgTK";
			this.dtgTK.Size = new System.Drawing.Size(515, 200);
			this.dtgTK.TabIndex = 5;
			this.dtgTK.SelectionChanged += new System.EventHandler(this.dtgTK_SelectionChanged);
			// 
			// tbTK
			// 
			this.tbTK.Location = new System.Drawing.Point(143, 21);
			this.tbTK.Name = "tbTK";
			this.tbTK.Size = new System.Drawing.Size(131, 20);
			this.tbTK.TabIndex = 8;
			// 
			// tbMK
			// 
			this.tbMK.Location = new System.Drawing.Point(143, 53);
			this.tbMK.Name = "tbMK";
			this.tbMK.Size = new System.Drawing.Size(131, 20);
			this.tbMK.TabIndex = 9;
			// 
			// rdAdmin
			// 
			this.rdAdmin.AutoSize = true;
			this.rdAdmin.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.rdAdmin.Location = new System.Drawing.Point(403, 25);
			this.rdAdmin.Name = "rdAdmin";
			this.rdAdmin.Size = new System.Drawing.Size(60, 20);
			this.rdAdmin.TabIndex = 10;
			this.rdAdmin.TabStop = true;
			this.rdAdmin.Text = "Admin";
			this.rdAdmin.UseVisualStyleBackColor = true;
			// 
			// materialLabel3
			// 
			this.materialLabel3.AutoSize = true;
			this.materialLabel3.Depth = 0;
			this.materialLabel3.Font = new System.Drawing.Font("Roboto", 11F);
			this.materialLabel3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(222)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))), ((int)(((byte)(0)))));
			this.materialLabel3.Location = new System.Drawing.Point(342, 38);
			this.materialLabel3.MouseState = MaterialSkin.MouseState.HOVER;
			this.materialLabel3.Name = "materialLabel3";
			this.materialLabel3.Size = new System.Drawing.Size(54, 19);
			this.materialLabel3.TabIndex = 11;
			this.materialLabel3.Text = "Quyền:";
			// 
			// button1
			// 
			this.button1.AccessibleDescription = "Xóa dự liệu trên text box";
			this.button1.Location = new System.Drawing.Point(12, 99);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(75, 23);
			this.button1.TabIndex = 12;
			this.button1.Text = "Mới";
			this.button1.UseVisualStyleBackColor = true;
			this.button1.Click += new System.EventHandler(this.button1_Click);
			// 
			// button2
			// 
			this.button2.Location = new System.Drawing.Point(93, 99);
			this.button2.Name = "button2";
			this.button2.Size = new System.Drawing.Size(75, 23);
			this.button2.TabIndex = 13;
			this.button2.Text = "Thêm";
			this.button2.UseVisualStyleBackColor = true;
			this.button2.Click += new System.EventHandler(this.button2_Click);
			// 
			// button3
			// 
			this.button3.Location = new System.Drawing.Point(174, 98);
			this.button3.Name = "button3";
			this.button3.Size = new System.Drawing.Size(75, 23);
			this.button3.TabIndex = 14;
			this.button3.Text = "Sửa";
			this.button3.UseVisualStyleBackColor = true;
			this.button3.Click += new System.EventHandler(this.button3_Click);
			// 
			// button4
			// 
			this.button4.Location = new System.Drawing.Point(255, 98);
			this.button4.Name = "button4";
			this.button4.Size = new System.Drawing.Size(75, 23);
			this.button4.TabIndex = 15;
			this.button4.Text = "Xóa";
			this.button4.UseVisualStyleBackColor = true;
			this.button4.Click += new System.EventHandler(this.button4_Click);
			// 
			// textBox3
			// 
			this.textBox3.Location = new System.Drawing.Point(348, 99);
			this.textBox3.Name = "textBox3";
			this.textBox3.Size = new System.Drawing.Size(164, 20);
			this.textBox3.TabIndex = 16;
			this.textBox3.TextChanged += new System.EventHandler(this.textBox3_TextChanged);
			// 
			// rdNhanVien
			// 
			this.rdNhanVien.AutoSize = true;
			this.rdNhanVien.Font = new System.Drawing.Font("Century Gothic", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.rdNhanVien.Location = new System.Drawing.Point(403, 50);
			this.rdNhanVien.Name = "rdNhanVien";
			this.rdNhanVien.Size = new System.Drawing.Size(83, 20);
			this.rdNhanVien.TabIndex = 17;
			this.rdNhanVien.TabStop = true;
			this.rdNhanVien.Text = "Nhân viên";
			this.rdNhanVien.UseVisualStyleBackColor = true;
			// 
			// TaiKhoan
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(515, 328);
			this.Controls.Add(this.rdNhanVien);
			this.Controls.Add(this.textBox3);
			this.Controls.Add(this.button4);
			this.Controls.Add(this.button3);
			this.Controls.Add(this.button2);
			this.Controls.Add(this.button1);
			this.Controls.Add(this.materialLabel3);
			this.Controls.Add(this.rdAdmin);
			this.Controls.Add(this.tbMK);
			this.Controls.Add(this.tbTK);
			this.Controls.Add(this.materialLabel2);
			this.Controls.Add(this.materialLabel1);
			this.Controls.Add(this.dtgTK);
			this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
			this.Name = "TaiKhoan";
			this.Text = "Quản lý tài khoản";
			this.Load += new System.EventHandler(this.TaiKhoan_Load);
			((System.ComponentModel.ISupportInitialize)(this.dtgTK)).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();

		}

		#endregion
		private MaterialSkin.Controls.MaterialLabel materialLabel2;
		private MaterialSkin.Controls.MaterialLabel materialLabel1;
		private System.Windows.Forms.DataGridView dtgTK;
		private System.Windows.Forms.TextBox tbTK;
		private System.Windows.Forms.TextBox tbMK;
		private System.Windows.Forms.RadioButton rdAdmin;
		private MaterialSkin.Controls.MaterialLabel materialLabel3;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Button button2;
		private System.Windows.Forms.Button button3;
		private System.Windows.Forms.Button button4;
		private System.Windows.Forms.TextBox textBox3;
		private System.Windows.Forms.RadioButton rdNhanVien;
	}
}