﻿namespace QuanLyCafe
{
	partial class flogin
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
			this.label1 = new System.Windows.Forms.Label();
			this.textBox1 = new System.Windows.Forms.TextBox();
			this.panel2 = new System.Windows.Forms.Panel();
			this.label2 = new System.Windows.Forms.Label();
			this.textBox2 = new System.Windows.Forms.TextBox();
			this.btDangnhap = new System.Windows.Forms.Button();
			this.btThoat = new System.Windows.Forms.Button();
			this.panel1.SuspendLayout();
			this.panel2.SuspendLayout();
			this.SuspendLayout();
			// 
			// panel1
			// 
			this.panel1.Controls.Add(this.label1);
			this.panel1.Controls.Add(this.textBox1);
			this.panel1.Location = new System.Drawing.Point(12, 12);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(291, 46);
			this.panel1.TabIndex = 0;
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Location = new System.Drawing.Point(3, 15);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(76, 13);
			this.label1.TabIndex = 1;
			this.label1.Text = "Tên tài khoản:";
			// 
			// textBox1
			// 
			this.textBox1.Location = new System.Drawing.Point(85, 12);
			this.textBox1.Name = "textBox1";
			this.textBox1.Size = new System.Drawing.Size(203, 20);
			this.textBox1.TabIndex = 0;
			this.textBox1.Text = "root";
			// 
			// panel2
			// 
			this.panel2.Controls.Add(this.label2);
			this.panel2.Controls.Add(this.textBox2);
			this.panel2.Location = new System.Drawing.Point(12, 56);
			this.panel2.Name = "panel2";
			this.panel2.Size = new System.Drawing.Size(291, 46);
			this.panel2.TabIndex = 1;
			// 
			// label2
			// 
			this.label2.AutoSize = true;
			this.label2.Location = new System.Drawing.Point(3, 14);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(55, 13);
			this.label2.TabIndex = 1;
			this.label2.Text = "Mật khẩu:";
			// 
			// textBox2
			// 
			this.textBox2.Location = new System.Drawing.Point(85, 11);
			this.textBox2.Name = "textBox2";
			this.textBox2.PasswordChar = '*';
			this.textBox2.Size = new System.Drawing.Size(203, 20);
			this.textBox2.TabIndex = 0;
			this.textBox2.Text = "1";
			// 
			// btDangnhap
			// 
			this.btDangnhap.Location = new System.Drawing.Point(12, 108);
			this.btDangnhap.Name = "btDangnhap";
			this.btDangnhap.Size = new System.Drawing.Size(100, 23);
			this.btDangnhap.TabIndex = 2;
			this.btDangnhap.Text = "Đăng nhập";
			this.btDangnhap.UseVisualStyleBackColor = true;
			this.btDangnhap.Click += new System.EventHandler(this.btDangnhap_Click);
			// 
			// btThoat
			// 
			this.btThoat.Location = new System.Drawing.Point(203, 108);
			this.btThoat.Name = "btThoat";
			this.btThoat.Size = new System.Drawing.Size(100, 23);
			this.btThoat.TabIndex = 3;
			this.btThoat.Text = "Thoát";
			this.btThoat.UseVisualStyleBackColor = true;
			this.btThoat.Click += new System.EventHandler(this.btThoat_Click);
			// 
			// flogin
			// 
			this.AcceptButton = this.btDangnhap;
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(315, 142);
			this.Controls.Add(this.btThoat);
			this.Controls.Add(this.btDangnhap);
			this.Controls.Add(this.panel2);
			this.Controls.Add(this.panel1);
			this.Name = "flogin";
			this.Text = "flogin";
			this.panel1.ResumeLayout(false);
			this.panel1.PerformLayout();
			this.panel2.ResumeLayout(false);
			this.panel2.PerformLayout();
			this.ResumeLayout(false);

		}

		#endregion

		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.TextBox textBox1;
		private System.Windows.Forms.Panel panel2;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox textBox2;
		private System.Windows.Forms.Button btDangnhap;
		private System.Windows.Forms.Button btThoat;
	}
}