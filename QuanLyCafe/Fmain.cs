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
    public partial class Fmain : Form
    {
		public string tk;
		public int quyen;
		public int id;
		CafeBLL cafebll = new CafeBLL();
        public Fmain(string tk, int quyen)
        {
            InitializeComponent();
			this.tk = tk;
			this.quyen = quyen;
        }
		public Fmain()
		{
			InitializeComponent();
			
		}



		private void Fmain_FormClosed(object sender, FormClosedEventArgs e)
		{
			Application.Exit();
		}
		public void LoadBan()
		{
			flbBan.Controls.Clear();
			for (int i = 0; i < cafebll.LoadSoBan(); i++)
			{
				
				Button btn = new Button();
				DataTable table = cafebll.Select_Ban(i + 1);
				btn.Tag = i + 1;//table;
				string tinhtrang = table.Rows[0][2].ToString();
				btn.Click += Btn_Click;
				btn.Size = new Size(50, 50);
				if (tinhtrang == "True")
				{
					btn.BackColor = Color.Aquamarine;
					btn.Text = "Bàn" + (i + 1).ToString() ;
				}
				else
				{
					btn.BackColor = Color.Yellow;
					btn.Text = "Bàn" + (i + 1).ToString();
				}
				btn.AutoSize = true;
				flbBan.Controls.Add(btn);
			}
		}
		private void Fmain_Load(object sender, EventArgs e)
		{
			cbbLoaiDoUong.DataSource = cafebll.Select_LoaiDoUong();
			cbbLoaiDoUong.DisplayMember = "TenLoai";
			cbbLoaiDoUong.ValueMember = "MaLoai";
			LoadBan();
			if (quyen != 1)
			{
				menuStrip1.Enabled = false;
			}
		}
		
		private void Btn_Click(object sender, EventArgs e)
		{
			dtgBillInfo.DataSource = null;
			//DataTable dt = (DataTable)((Button)sender).Tag;
			int i = (int)(((Button)sender).Tag);
			DataTable dt = cafebll.Select_Ban(i);
			string tinhtrang = dt.Rows[0][2].ToString();
			//int mabill = cafebll.LoadMaBill(id);
			//dtgBillInfo.DataSource = cafebll.Select_BillInfo(mabill);
			//if (tinhtrang.TrimEnd() == "False")
			//((Button)sender).BackColor = Color.Yellow;
			//cafebll.DoiTT_Ban(id,"True");
			id = (int)dt.Rows[0][0];
			int mabill = cafebll.LoadMaBill((int)dt.Rows[0][0]);
			if (mabill != -1)
			{
				dtgBillInfo.DataSource = cafebll.Select_BillInfo(mabill);
			}
			label6.Text = "Bàn số: " + id.ToString();
		}

		private void btDathang_Click(object sender, EventArgs e)
		{
			
			try
			{
				int mabill = cafebll.LoadMaBill(id);
				DataTable tam = cafebll.Select_Bill(id);
				string nuoc = dtgNuocUong[0, dtgNuocUong.CurrentRow.Index].Value.ToString();

				if (dtgBillInfo.DataSource != null)
				{
					int kt = 0;
					for (int i = 0; i < (dtgBillInfo.RowCount - 1); i++)
					{
						if (int.Parse(nuoc) == int.Parse(dtgBillInfo.Rows[i].Cells[1].Value.ToString()))
						{
							int soluong = int.Parse(dtgBillInfo.Rows[i].Cells[3].Value.ToString()) + (int)numericUpDown1.Value;
							cafebll.Update_BillInfo(int.Parse(dtgBillInfo.Rows[i].Cells[0].Value.ToString()), soluong);
							kt = 1;
						}
					}
					if (kt == 0)
					{
						int mabillinfo = cafebll.MaBillInfoTD();
						cafebll.Ud_MabillInfoTD(mabillinfo + 1);
						cafebll.Insert_BillInfo(mabillinfo, int.Parse(tam.Rows[0][0].ToString()), int.Parse(nuoc), (int)numericUpDown1.Value);

					}
				}
				else
				{
					mabill = cafebll.MaBillTD();
					cafebll.Ud_MabillTD(mabill + 1);
					cafebll.Insert_Bill(mabill, id, tk);
					int mabillinfo = cafebll.MaBillInfoTD();
					cafebll.Ud_MabillInfoTD(mabillinfo + 1);
					cafebll.Insert_BillInfo(mabillinfo, mabill, int.Parse(nuoc), (int)numericUpDown1.Value);

				}
				dtgBillInfo.DataSource = cafebll.Select_BillInfo(mabill);
				//LoadBan();
				foreach (Control C in flbBan.Controls)
				{
					if (int.Parse(((Button)C).Tag.ToString()) == id)
						((Button)C).BackColor = Color.Yellow;
				}
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}

		}

		private void btThanhtoan_Click(object sender, EventArgs e)
		{
			try
			{
				DialogResult key = MessageBox.Show("Bạn có muốn in hóa đơn không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
				if (key == DialogResult.Yes)
				{
					InHD_Click(sender, e);
				}
				cafebll.ThanhToan_HD(cafebll.LoadMaBill(id), float.Parse(tbTienPhaiTra.Text.ToString()));
				DataTable tam = cafebll.Select_Bill(id);
				dtgBillInfo.DataSource = null;
				//LoadBan();
				foreach (Control C in flbBan.Controls)
				{
					if (int.Parse(((Button)C).Tag.ToString()) == id)
						((Button)C).BackColor = Color.Aquamarine;
				}
				tbKhuyenMai.Text = "0";
				
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void dtgBillInfo_DataSourceChanged(object sender, EventArgs e)
		{
			try
			{
				float tongtien = 0;
				if (dtgBillInfo.DataSource != null)
				{

					for (int i = 0; i < (dtgBillInfo.RowCount - 1); i++)
					{
						tongtien = float.Parse(dtgBillInfo.Rows[i].Cells[3].Value.ToString()) * int.Parse(dtgBillInfo.Rows[i].Cells[4].Value.ToString()) + tongtien;
					}
				}
				tbTongTien.Text = tongtien.ToString();
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
		
		private void button1_Click(object sender, EventArgs e)
		{
			try
			{
				DataTable tam = cafebll.Select_Bill(id);
				int mabill = (int)cafebll.Select_Bill(id).Rows[0][0];
				FChuyenBan fChuyenBan = new FChuyenBan(id, mabill, cafebll.Select_BillInfo((int)tam.Rows[0][0]));
				fChuyenBan.Show();
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}
		
		private void tbTimMon_TextChanged(object sender, EventArgs e)
		{
			try
			{
				dtgNuocUong.DataSource = cafebll.TimKiem_DoUong(tbTimMon.Text);
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void cbbLoaiDoUong_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (cbbLoaiDoUong.SelectedValue.ToString() != "System.Data.DataRowView")
				dtgNuocUong.DataSource = cafebll.Select_DoUong(int.Parse(cbbLoaiDoUong.SelectedValue.ToString()));
		}

		private void bànToolStripMenuItem_Click(object sender, EventArgs e)
		{
			Ban ban = new Ban();
			ban.Show();
		}

		private void đồUốngToolStripMenuItem_Click(object sender, EventArgs e)
		{
			DoUong doUong = new DoUong();
			doUong.Show();
		}

		private void tbTongTien_TextChanged(object sender, EventArgs e)
		{
			tbTienPhaiTra.Text = (float.Parse(tbTongTien.Text.ToString()) - float.Parse(tbKhuyenMai.Text.ToString())).ToString();
		}

		private void tbKhuyenMai_TextChanged(object sender, EventArgs e)
		{
			tbTienPhaiTra.Text = (float.Parse(tbTongTien.Text.ToString()) - float.Parse(tbKhuyenMai.Text.ToString())).ToString();
		}

		private void button2_Click(object sender, EventArgs e)
		{
			LoadBan();
		}

		private void InHD_Click(object sender, EventArgs e)
		{
			InHoaDon fInHoaDon = new InHoaDon(cafebll.LoadMaBill(id),float.Parse(tbKhuyenMai.Text));
			fInHoaDon.Show();

		}

		private void btXoaBillInfo_Click(object sender, EventArgs e)
		{
			try
			{
				cafebll.Delete_Billinfo(int.Parse(dtgBillInfo[0, dtgBillInfo.CurrentRow.Index].Value.ToString()));
				int mabill = cafebll.LoadMaBill(id);
				dtgBillInfo.DataSource = cafebll.Select_BillInfo(mabill);
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void btSuaBillInfo_Click(object sender, EventArgs e)
		{
			try
			{
				cafebll.Update_BillInfo(int.Parse(dtgBillInfo[0, dtgBillInfo.CurrentRow.Index].Value.ToString()), int.Parse(dtgBillInfo[3, dtgBillInfo.CurrentRow.Index].Value.ToString()));
				int mabill = cafebll.LoadMaBill(id);
				dtgBillInfo.DataSource = cafebll.Select_BillInfo(mabill);
			}
			catch (Exception LOI)
			{
				MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
			}
		}

		private void quảnLýTàiKhoảnToolStripMenuItem_Click(object sender, EventArgs e)
		{

			TaiKhoan taiKhoan = new TaiKhoan();
			taiKhoan.Show();
		}

		private void doanhThuTheoNgàyToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			DoanhThuTheoNgay doanhThu = new DoanhThuTheoNgay();
			doanhThu.Show();
		}

		private void doanhThuTheoĐồUốngToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			ThongKeDoUong thongKeDoUong = new ThongKeDoUong();
			thongKeDoUong.Show();
		}

		private void label5_Click(object sender, EventArgs e)
		{

		}

		private void label9_Click(object sender, EventArgs e)
		{

		}

		private void pictureBox1_Click(object sender, EventArgs e)
		{

		}

		private void panel5_Paint(object sender, PaintEventArgs e)
		{

		}

		private void button3_Click(object sender, EventArgs e)
		{
			Application.Exit();
		}

		private void dựBáoDoanhThuToolStripMenuItem_Click(object sender, EventArgs e)
		{
			DuBao dubao = new DuBao();
			dubao.Show();
		}
	}
}
