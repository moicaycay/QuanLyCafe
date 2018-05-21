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
		public int id;
		public DataTable dtBan;
		public int mabill;
		public FChuyenBan(int id,int mabill, DataTable dtBan)
		{
			this.id = id;
			this.dtBan = dtBan;
			this.mabill = mabill;
			InitializeComponent();
		}
		
		private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
		{
			
		}

		private void FChuyenBan_Load(object sender, EventArgs e)
		{
			dtgBan1.DataSource = dtBan;
			comboBox3.DataSource = cafebll.Select_Ban();
			comboBox3.DisplayMember = "TenBan";
			comboBox3.ValueMember = "MaBan";
			comboBox1.DataSource = cafebll.Select_Ban();
			comboBox1.DisplayMember = "TenBan";
			comboBox1.ValueMember = "MaBan";
			comboBox1.SelectedValue = id;
			
		}
		public void ChuyenMon()
		{
			string tam4 = dtgBan1[3, dtgBan1.CurrentRow.Index].Value.ToString();
			int soluong = int.Parse(tam4) - 1;
			DataGridViewRow row = new DataGridViewRow();
			for (int i = 0; i < 5; i++)
			{
				if (i != 3)
				{
					string tam = dtgBan1[i, dtgBan1.CurrentRow.Index].Value.ToString();
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
			dtgBan2.Rows.Add(row);
			dtgBan1[3, dtgBan1.CurrentRow.Index].Value = soluong;
			if (soluong == 0)
				dtgBan1.Rows.RemoveAt(dtgBan1.CurrentRow.Index);
		}
		public void ChuyenMonTrung()
		{
			int kt = 0;
			int MaNuoc1 = int.Parse(dtgBan1[1, dtgBan1.CurrentRow.Index].Value.ToString());
			for (int i = 0; i < (dtgBan2.RowCount - 1); i++)
			{
				if (MaNuoc1 == int.Parse(dtgBan2.Rows[i].Cells[1].Value.ToString()))
				{
					dtgBan2.Rows[i].Cells[3].Value = int.Parse(dtgBan2.Rows[i].Cells[3].Value.ToString()) + 1;
					dtgBan1[3, dtgBan1.CurrentRow.Index].Value = int.Parse(dtgBan1[3, dtgBan1.CurrentRow.Index].Value.ToString()) - 1;
					if(int.Parse(dtgBan1[3, dtgBan1.CurrentRow.Index].Value.ToString()) == 0)
						dtgBan1.Rows.RemoveAt(dtgBan1.CurrentRow.Index);
					kt = 1;
				}
				
			}
			if (kt == 0)
				ChuyenMon();
		}
		private void button1_Click(object sender, EventArgs e)
		{
			if (dtgBan2.Rows.Count > 0)
				ChuyenMonTrung();
			else
				ChuyenMon();
		}

		
		private void button3_Click(object sender, EventArgs e)
		{
			dtgBan2.DataSource = (DataTable)dtgBan1.DataSource;
			dtgBan1.DataSource = null;
		}
	}
}
