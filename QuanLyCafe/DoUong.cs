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
using MaterialSkin.Controls;

namespace QuanLyCafe
{
	public partial class DoUong : Form
	{
		CafeBLL cafebll = new CafeBLL();
		public DoUong()
		{
			InitializeComponent();
		}

		private void DoUong_Load(object sender, EventArgs e)
		{
			dtgLoaiDoUong.DataSource = cafebll.Select_LoaiDoUong();
			dtgDoUong.DataSource = cafebll.Select_DoUong();
			ccbLoaiDoUong.DataSource = cafebll.Select_LoaiDoUong();
			ccbLoaiDoUong.DisplayMember = "TenLoai";
			ccbLoaiDoUong.ValueMember = "MaLoai";
		}

		private void ccbLoaiDoUong_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (ccbLoaiDoUong.SelectedValue.ToString() != "System.Data.DataRowView")
				dtgDoUong.DataSource = cafebll.Select_DoUong(ccbLoaiDoUong.SelectedValue.ToString());
		}

		private void btThem_Click(object sender, EventArgs e)
		{
			try
			{
				int madouong = cafebll.MaDoUongTD();
				cafebll.Ud_MaDoUongTD(madouong + 1);
				cafebll.Insert_DoUong(madouong + 1, tbTenDoUong.Text, tbDVT.Text, int.Parse(ccbLoaiDoUong.SelectedValue.ToString()), float.Parse(tbDonGia.Text.ToLower()));
				dtgDoUong.DataSource = cafebll.Select_DoUong();
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void dtgDoUong_SelectionChanged(object sender, EventArgs e)
		{
			tbDonGia.Text = dtgDoUong[4, dtgDoUong.CurrentRow.Index].Value.ToString();
			//ccbLoaiDoUong.SelectedValue = int.Parse(dtgDoUong[3, dtgDoUong.CurrentRow.Index].Value.ToString());
			tbDVT.Text = dtgDoUong[2, dtgDoUong.CurrentRow.Index].Value.ToString();
			tbTenDoUong.Text = dtgDoUong[1, dtgDoUong.CurrentRow.Index].Value.ToString();
			
		}

		private void btCapNhap_Click(object sender, EventArgs e)
		{
			try
			{
				cafebll.Update_DoUong(int.Parse(dtgDoUong[0, dtgDoUong.CurrentRow.Index].Value.ToString()), tbTenDoUong.Text, tbDVT.Text, int.Parse(ccbLoaiDoUong.SelectedValue.ToString()), float.Parse(tbDonGia.Text.ToLower()));
				dtgDoUong.DataSource = cafebll.Select_DoUong();
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void btXoa_Click(object sender, EventArgs e)
		{
			try
			{
				cafebll.Delete_DoUong(int.Parse(dtgDoUong[0, dtgDoUong.CurrentRow.Index].Value.ToString()));
				dtgDoUong.DataSource = cafebll.Select_DoUong();
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void btThem2_Click(object sender, EventArgs e)
		{
			try
			{

				int maloai = cafebll.MaLoaiDoUongTD();
				cafebll.Ud_MaLoaiDoUongTD(maloai + 1);
				cafebll.Insert_LoaiDoUong(maloai, tbTenDoUong2.Text);
				dtgLoaiDoUong.DataSource = cafebll.Select_LoaiDoUong();
				ccbLoaiDoUong.DataSource = cafebll.Select_LoaiDoUong();
				ccbLoaiDoUong.DisplayMember = "TenLoai";
				ccbLoaiDoUong.ValueMember = "MaLoai";
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void btCapNhap2_Click(object sender, EventArgs e)
		{
			try
			{ 
				cafebll.Update_LoaiDoUong(int.Parse(dtgLoaiDoUong[0, dtgLoaiDoUong.CurrentRow.Index].Value.ToString()), tbTenDoUong2.Text);
				dtgLoaiDoUong.DataSource = cafebll.Select_LoaiDoUong();
				ccbLoaiDoUong.DataSource = cafebll.Select_LoaiDoUong();
				ccbLoaiDoUong.DisplayMember = "TenLoai";
				ccbLoaiDoUong.ValueMember = "MaLoai";
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void dtgLoaiDoUong_SelectionChanged(object sender, EventArgs e)
		{
			tbTenDoUong2.Text =  dtgLoaiDoUong[1, dtgLoaiDoUong.CurrentRow.Index].Value.ToString();
		
		}

		private void btXoa2_Click(object sender, EventArgs e)
		{
			try
			{
				cafebll.Delete_LoaiDoUong(int.Parse(dtgLoaiDoUong[0, dtgLoaiDoUong.CurrentRow.Index].Value.ToString()));
				dtgLoaiDoUong.DataSource = cafebll.Select_LoaiDoUong();
				ccbLoaiDoUong.DataSource = cafebll.Select_LoaiDoUong();
				ccbLoaiDoUong.DisplayMember = "TenLoai";
				ccbLoaiDoUong.ValueMember = "MaLoai";
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void tbTimKiem_TextChanged(object sender, EventArgs e)
		{
			dtgDoUong.DataSource = cafebll.TimKiem_DoUong1(tbTimKiem.Text);
		}

		private void tbTimKiem2_TextChanged(object sender, EventArgs e)
		{
			dtgLoaiDoUong.DataSource = cafebll.TimKiem_LoaiDoUong1(tbTimKiem2.Text);
		}

		private void button1_Click(object sender, EventArgs e)
		{
			tbTenDoUong.Clear();
			tbDVT.Clear();
			tbDonGia.Clear();
			tbTimKiem.Clear();
			tbTenDoUong.Focus();
		}

		private void button2_Click(object sender, EventArgs e)
		{
			tbTenDoUong2.Clear();
			tbTimKiem2.Clear();
		}
	}
}
