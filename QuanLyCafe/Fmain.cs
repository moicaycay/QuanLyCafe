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
		public int id;
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
				btn.Tag = i + 1;//table;
				string tinhtrang = table.Rows[0][2].ToString();
				btn.Click += Btn_Click;
				btn.Size = new Size(50, 50);
				if (tinhtrang == "True")
				{
					btn.BackColor = Color.Aqua;
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
			cbbNuoc.DataSource = cafebll.Select_Nuoc();
			cbbNuoc.ValueMember = "Mã Nước";
			cbbNuoc.DisplayMember = "Tên Nước";
			dtgNuocUong.DataSource = cafebll.Select_Nuoc();
			LoadBan();
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
			tbBan.Text = id.ToString();
		}

		private void btDathang_Click(object sender, EventArgs e)
		{
			cafebll.Insert_Bill(id);
			DataTable tam = cafebll.Select_Bill(id);
			string nuoc = cbbNuoc.SelectedValue.ToString();
			cafebll.Insert_BillInfo((int)tam.Rows[0][0], (int)cbbNuoc.SelectedValue, (int)numericUpDown1.Value);
			dtgBillInfo.DataSource = cafebll.Select_BillInfo((int)tam.Rows[0][0]);
			//LoadBan();
			foreach(Control C in flbBan.Controls)
			{
				if (int.Parse(((Button)C).Tag.ToString()) == id)
					((Button)C).BackColor = Color.Yellow;
			}
			
		}

		private void btThanhtoan_Click(object sender, EventArgs e)
		{
			cafebll.ThanhToan_HD(cafebll.LoadMaBill(id));
			DataTable tam = cafebll.Select_Bill(id);
			dtgBillInfo.DataSource = null;
			//LoadBan();
			foreach (Control C in flbBan.Controls)
			{
				if (int.Parse(((Button)C).Tag.ToString()) == id)
					((Button)C).BackColor = Color.Aqua;
			}
		}

		private void dtgBillInfo_DataSourceChanged(object sender, EventArgs e)
		{
			int tongtien = 0;
			if (dtgBillInfo.DataSource != null)
			{

				for (int i = 0; i < (dtgBillInfo.RowCount-1); i++)
				{
					tongtien = int.Parse(dtgBillInfo.Rows[i].Cells[2].Value.ToString()) + tongtien;
				}	
			}
			tbTongTien.Text = tongtien.ToString();
		}
		
		private void button1_Click(object sender, EventArgs e)
		{
			DataTable tam = cafebll.Select_Bill(id);
			int mabill = (int)cafebll.Select_Bill(id).Rows[0][0];
			FChuyenBan fChuyenBan = new FChuyenBan(id,mabill, cafebll.Select_BillInfo((int)tam.Rows[0][0]));
			fChuyenBan.Show();
		}
	}
}
