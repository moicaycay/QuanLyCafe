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
		int id;
		CafeBLL cafebll = new CafeBLL();
        public Fmain()
        {
            InitializeComponent();
        }

		private void panel1_Paint(object sender, PaintEventArgs e)
		{

		}

		private void Fmain_FormClosed(object sender, FormClosedEventArgs e)
		{
			Application.Exit();
		}
		private void LoadBan()
		{
			flbBan.Controls.Clear();
			for (int i = 0; i < cafebll.LoadSoBan(); i++)
			{
				
				Button btn = new Button();
				DataTable table = cafebll.Select_Ban(i + 1);
				btn.Tag = table;
				string tinhtrang = table.Rows[0][2].ToString();
				btn.Click += Btn_Click;
				btn.Size = new Size(75, 75);
				if (tinhtrang.TrimEnd() == "Trống")
					btn.BackColor = Color.Aqua;
				else
					btn.BackColor = Color.Yellow;
				btn.Text = "Bàn" + (i + 1).ToString();
				btn.AutoSize = true;
				flbBan.Controls.Add(btn);
			}
		}
		private void Fmain_Load(object sender, EventArgs e)
		{
			cbbNuoc.DataSource = cafebll.Select_Nuoc();
			cbbNuoc.ValueMember = "MaNuoc";
			cbbNuoc.DisplayMember = "TenNuoc";
			LoadBan();
		}
		
		private void Btn_Click(object sender, EventArgs e)
		{
			dtgBillInfo.DataSource = null;
			DataTable dt = (DataTable)((Button)sender).Tag;
			string tinhtrang = dt.Rows[0][2].ToString();
			//int mabill = cafebll.LoadMaBill(id);
			//dtgBillInfo.DataSource = cafebll.Select_BillInfo(mabill);
			if (tinhtrang.TrimEnd() == "Trống")
			((Button)sender).BackColor = Color.Yellow;
			cafebll.DoiTT_Ban(id,"Có người");
			id = (int)dt.Rows[0][0];
			int	mabill = cafebll.LoadMaBill((int)dt.Rows[0][0]);
			if (mabill != -1)
			{
				dtgBillInfo.DataSource = cafebll.Select_BillInfo(mabill);
			}
			tbBan.Text = id.ToString();
		}

		private void btDathang_Click(object sender, EventArgs e)
		{
			cafebll.Insert_Bill(id);
			DataTable tam = cafebll.Select_Bill(id);
			string nuoc = cbbNuoc.SelectedValue.ToString();
			cafebll.Insert_BillInfo((int)tam.Rows[0][0], (int)cbbNuoc.SelectedValue, (int)numericUpDown1.Value);
			dtgBillInfo.DataSource = cafebll.Select_BillInfo((int)tam.Rows[0][0]);
		}

		private void btThanhtoan_Click(object sender, EventArgs e)
		{
			cafebll.DoiTT_Ban(id,"Trống");
			LoadBan();
		}
	}
}
