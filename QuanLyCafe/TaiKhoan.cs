using MaterialSkin.Controls;
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
	public partial class TaiKhoan : Form
	{
		CafeBLL cafebll = new CafeBLL();
		public TaiKhoan()
		{
			InitializeComponent();
		}

		private void TaiKhoan_Load(object sender, EventArgs e)
		{
			dtgTK.DataSource = cafebll.select_TaiKhoan();
		}

		private void button1_Click(object sender, EventArgs e)
		{
			tbTK.Clear();
			tbMK.Clear();
			rdAdmin.Checked = false;
			rdNhanVien.Checked = false;
			tbTK.Focus();
		}

		private void button2_Click(object sender, EventArgs e)
		{
			try
			{
				cafebll.insert_TaiKhoan(tbTK.Text, tbMK.Text, (rdAdmin.Checked == true ? 1 : 2));
				dtgTK.DataSource = cafebll.select_TaiKhoan();
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void dtgTK_SelectionChanged(object sender, EventArgs e)
		{
			try
			{
				tbTK.Text = dtgTK[0, dtgTK.CurrentRow.Index].Value.ToString();
				tbMK.Text = dtgTK[1, dtgTK.CurrentRow.Index].Value.ToString();
				if (dtgTK[2, dtgTK.CurrentRow.Index].Value.ToString() == "Admin")
					rdAdmin.Checked = true;
				else
					rdNhanVien.Checked = true;
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void button3_Click(object sender, EventArgs e)
		{
			try
			{
				cafebll.update_TaiKhoan(tbTK.Text, tbMK.Text, (rdAdmin.Checked == true ? 1 : 2));
				dtgTK.DataSource = cafebll.select_TaiKhoan();
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void button4_Click(object sender, EventArgs e)
		{
			try
			{
				cafebll.delete_TaiKhoan(dtgTK[0, dtgTK.CurrentRow.Index].Value.ToString());
				dtgTK.DataSource = cafebll.select_TaiKhoan();
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void textBox3_TextChanged(object sender, EventArgs e)
		{
			dtgTK.DataSource = cafebll.TimKiem_TaiKhoan(textBox3.Text);
		}
	}
}
