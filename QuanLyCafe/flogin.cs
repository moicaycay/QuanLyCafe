using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using BLL;

namespace QuanLyCafe
{
	public partial class flogin : Form
	{
		CafeBLL cafebll = new CafeBLL();
		public flogin()
		{
			InitializeComponent();
		}

		private void btThoat_Click(object sender, EventArgs e)
		{
			Application.Exit();
		}

		private void btDangnhap_Click(object sender, EventArgs e)
		{
			
			DataTable dt = cafebll.Select_Dangnhap(textbox1.Text, textbox2.Text);
			if (dt.Rows.Count > 0)
			{ 
				Fmain fmain = new Fmain(dt.Rows[0][0].ToString(), int.Parse(dt.Rows[0][2].ToString()));
				fmain.Show();
				this.Hide();

			}
			else
			{
				MessageBox.Show("Tài khoản và mật khẩu không đúng !");
			}

		}

		private void materialSingleLineTextField1_Click(object sender, EventArgs e)
		{

		}
	}
}
