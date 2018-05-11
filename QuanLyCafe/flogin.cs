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
			string id = "";
			DataTable dt = cafebll.Select_Dangnhap(textBox1.Text, textBox2.Text);
			if (dt != null)
			{
				foreach (DataRow dr in dt.Rows)
				{
					id = dr["taikhoan"].ToString();
				}
			}
			if (id != "")
			{
				Fmain fmain = new Fmain();
				fmain.Show();
				this.Hide();

			}
			else
			{
				MessageBox.Show("Tài khoản và mật khẩu không đúng !");
			}

		}
	}
}
