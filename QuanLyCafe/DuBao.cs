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
	public partial class DuBao : Form
	{
		CafeBLL cafebll = new CafeBLL();
		public float TongSoTG = 0;
		public float TB_TongSoTG = 0;
		public float TongTien = 0;
		public float TB_TongTien = 0;
		public float Tong_TY = 0;
		public float TB_Tong_TY = 0;
		public float Tong_TT = 0;
		public float TB_Tong_TT = 0;
		public float a1, a0;
		public int days;

		public DuBao()
		{
			InitializeComponent();
		}

		private void DuBao_Load(object sender, EventArgs e)
		{
			dtgData.DataSource = cafebll.select_DoanhThu();
			if (dtgData.RowCount > 0)
				TinhChiSo(dpkTG.Value);
		}

		private void button1_Click(object sender, EventArgs e)
		{
			textBox1.Text = (a0 + a1 * days).ToString();
		}

		private void TinhChiSo(DateTime t)
		{
			DateTime thoigian = new DateTime();
			for (int i =1; i< dtgData.RowCount -1; i ++)
			{
				TongSoTG = TongSoTG + float.Parse(dtgData.Rows[i].Cells[0].Value.ToString());
				TongTien = TongTien + float.Parse(dtgData.Rows[i].Cells[2].Value.ToString());
				Tong_TY = Tong_TY + float.Parse(dtgData.Rows[i].Cells[3].Value.ToString());
				Tong_TT = Tong_TT + float.Parse(dtgData.Rows[i].Cells[4].Value.ToString());
				thoigian = (DateTime)dtgData.Rows[i].Cells[1].Value;
			}
			
			TB_TongSoTG = TongSoTG / (dtgData.RowCount - 1);
			TB_TongTien = TongTien / (dtgData.RowCount - 1);
			TB_Tong_TY = Tong_TY  / (dtgData.RowCount - 1);
			TB_Tong_TT = Tong_TT / (dtgData.RowCount - 1);
			System.TimeSpan d = t.Subtract(thoigian);
			days = Convert.ToInt32(d.TotalDays);
			a1 = (TB_Tong_TY - TB_Tong_TY * TB_TongSoTG) / (TB_Tong_TT - TB_TongSoTG * TB_TongSoTG);
			a0 = TB_TongTien - a1 * TB_TongSoTG;

		}
	}
}
