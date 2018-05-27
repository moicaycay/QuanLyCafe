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
	public partial class FChuyenBan : Form
	{
		CafeBLL cafebll = new CafeBLL();
		List<int> listdouong ;
		public int id;
		public DataTable dtBan;
		public int mabill;
		int mabill1;
		public FChuyenBan(int id,int mabill, DataTable dtBan)
		{
			this.id = id;
			this.dtBan = dtBan;
			this.mabill = mabill;
			InitializeComponent();
		}
		
		private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
		{
			dtgBan2.Rows.Clear();
			
			if (comboBox3.SelectedValue.ToString() != "System.Data.DataRowView")
			{
				//if (cafebll.Select_Bill(int.Parse(comboBox3.SelectedValue.ToString())).Rows.Count >0)
				//	mabill = (int)cafebll.Select_Bill(int.Parse(comboBox3.SelectedValue.ToString())).Rows[0][0];
				//if(mabill != 0)
				//dtban1 = cafebll.Select_BillInfo(mabill);
				mabill1 = cafebll.LoadMaBill(int.Parse(comboBox3.SelectedValue.ToString()));
				if (mabill1 != -1)
				{
					DataTable tam  = cafebll.Select_BillInfo(mabill1);
					if (tam.Rows.Count > 0)
					{
						for (int i = 0; i < tam.Rows.Count; i++)
						{
							DataGridViewRow row = new DataGridViewRow();
							for (int j = 0; j < 5; j++)
							{
								string tam1 = tam.Rows[i][j].ToString();
								DataGridView dgv = new DataGridView();
								DataGridViewCell dgvc = new DataGridViewTextBoxCell();
								dgvc.Value = tam1;
								row.Cells.Add(dgvc);
							}
							dtgBan2.Rows.Add(row);
						}
					}
				}
			}
			
		}

		private void FChuyenBan_Load(object sender, EventArgs e)
		{
			
			comboBox3.DataSource = cafebll.Select_Ban();
			comboBox3.DisplayMember = "TenBan";
			comboBox3.ValueMember = "MaBan";
			comboBox1.DataSource = cafebll.Select_Ban();
			comboBox1.DisplayMember = "TenBan";
			comboBox1.ValueMember = "MaBan";
			comboBox1.SelectedValue = id;

			for (int i = 0; i < dtBan.Rows.Count; i++)
			{
				DataGridViewRow row = new DataGridViewRow();
				for (int j = 0; j < 5; j++)
				{
					string tam = dtBan.Rows[i][j].ToString();
					DataGridView dgv = new DataGridView();
					DataGridViewCell dgvc = new DataGridViewTextBoxCell();
					dgvc.Value = tam;
					row.Cells.Add(dgvc);
				}
				dtgBan1.Rows.Add(row);
			}

		}
		public void ChuyenMon(DataGridView dgv1,DataGridView dgv2)
		{
			string tam4 = dgv1[3, dgv1.CurrentRow.Index].Value.ToString();
			int soluong = int.Parse(tam4) - 1;
			DataGridViewRow row = new DataGridViewRow();
			for (int i = 0; i < 5; i++)
			{
				if (i != 3)
				{
					string tam = dgv1[i, dgv1.CurrentRow.Index].Value.ToString();
					DataGridView dgv = new DataGridView();
					DataGridViewCell dgvc = new DataGridViewTextBoxCell();
					dgvc.Value = tam;
					row.Cells.Add(dgvc);
				}
				else
				{
					DataGridView dgv = new DataGridView();
					DataGridViewCell dgvc = new DataGridViewTextBoxCell();
					dgvc.Value = 1;
					row.Cells.Add(dgvc);
				}
			}
			dgv2.Rows.Add(row);
			dgv1[3, dgv1.CurrentRow.Index].Value = soluong;
			if (soluong == 0)
				dgv1.Rows.RemoveAt(dgv1.CurrentRow.Index);
		}
		public void ChuyenMonTrung(DataGridView dgv1, DataGridView dgv2)
		{
			listdouong = new List<int>();
			int kt = 0;
			int MaNuoc1 = int.Parse(dgv1[1, dgv1.CurrentRow.Index].Value.ToString());
			for (int i = 0; i < (dgv2.RowCount - 1); i++)
			{
				if (MaNuoc1 == int.Parse(dgv2.Rows[i].Cells[1].Value.ToString()))
				{
					dgv2.Rows[i].Cells[3].Value = int.Parse(dgv2.Rows[i].Cells[3].Value.ToString()) + 1;
					dgv1[3, dgv1.CurrentRow.Index].Value = int.Parse(dgv1[3, dgv1.CurrentRow.Index].Value.ToString()) - 1;
					if (int.Parse(dgv1[3, dgv1.CurrentRow.Index].Value.ToString()) == 0)
					{
						listdouong.Add(int.Parse(dgv1[0, dgv1.CurrentRow.Index].Value.ToString())); /// lấy mã để xóa đồ uống
						dgv1.Rows.RemoveAt(dgv1.CurrentRow.Index);	
					}
					kt = 1;
				}
				
			}
			if (kt == 0)
				ChuyenMon(dgv1, dgv2);
		}
		private void button1_Click(object sender, EventArgs e)
		{
			
				if (dtgBan2.Rows.Count > 0)
					ChuyenMonTrung(dtgBan1,dtgBan2);
				else
					ChuyenMon(dtgBan1,dtgBan2);
			
		}
		private void button3_Click(object sender, EventArgs e)
		{
			
				if (dtgBan1.Rows.Count > 0)
					ChuyenMonTrung(dtgBan2, dtgBan1);
				else
					ChuyenMon(dtgBan2, dtgBan1);
			
		}
		private void button4_Click(object sender, EventArgs e)
		{
			for(int i =0; i < dtBan.Rows.Count; i++)
			{
				for(int j =0; j < dtgBan1.RowCount-1; j++)
				{
					if (dtBan.Rows[i][0].ToString() == dtgBan1.Rows[j].Cells[0].Value.ToString())
						cafebll.Update_BillInfo(int.Parse(dtgBan1.Rows[j].Cells[0].Value.ToString()),int.Parse(dtgBan1.Rows[j].Cells[3].Value.ToString()));
				}
			}
			foreach (int tam in listdouong)
				cafebll.Delete_Billinfo(tam);
			for(int i =0; i< dtgBan2.RowCount-1; i++)
			{
				cafebll.Update_BillInfo(int.Parse(dtgBan2.Rows[i].Cells[0].Value.ToString()),mabill1,int.Parse(dtgBan2.Rows[i].Cells[3].Value.ToString()));
			}
			MessageBox.Show("Đã cập nhập hóa đơn bàn");
			this.Close();
		}

		private void button5_Click(object sender, EventArgs e)
		{
			this.Close(); 
		}
	}
}
