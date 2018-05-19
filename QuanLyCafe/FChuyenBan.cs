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

		private void button1_Click(object sender, EventArgs e)
		{
			//string tam1 = dtgBan1[0, dtgBan1.CurrentRow.Index].Value.ToString();
			//string tam2 = dtgBan1[1, dtgBan1.CurrentRow.Index].Value.ToString();
			//string tam3 = dtgBan1[2, dtgBan1.CurrentRow.Index].Value.ToString();
			//DataGridViewRow row = new DataGridViewRow();
			//DataGridViewCell _cell;
			//_cell = new DataGridViewTextBoxCell();    
			//_cell.Value = tam1;                  
			//row.Cells.Add(_cell);
			//_cell = new DataGridViewTextBoxCell();     
			//_cell.Value = tam2;                 
			//row.Cells.Add(_cell);
			//_cell = new DataGridViewTextBoxCell();    
			//_cell.Value = tam3;                  
			//row.Cells.Add(_cell);
			//dtgBan2.Rows.Add(row);
			//dtgBan1.Rows.RemoveAt(dtgBan1.CurrentRow.Index);
			foreach (DataGridViewRow r in dtgBan1.SelectedRows)
			{
				dtgBan2.Rows.Add(r);
				dtgBan1.Rows.Remove(r);
				
			}
		}

		private void button2_Click(object sender, EventArgs e)
		{
			string tam1 = dtgBan2[0, dtgBan1.CurrentRow.Index].Value.ToString();
			string tam2 = dtgBan2[1, dtgBan1.CurrentRow.Index].Value.ToString();
			string tam3 = dtgBan2[2, dtgBan1.CurrentRow.Index].Value.ToString();
			DataGridViewRow row = new DataGridViewRow();
			DataGridViewCell _cell;
			_cell = new DataGridViewTextBoxCell();
			_cell.Value = tam1;
			row.Cells.Add(_cell);
			_cell = new DataGridViewTextBoxCell();
			_cell.Value = tam2;
			row.Cells.Add(_cell);
			_cell = new DataGridViewTextBoxCell();
			_cell.Value = tam3;
			row.Cells.Add(_cell);
			dtgBan1.Rows.Add(row);
			dtgBan2.Rows.RemoveAt(dtgBan1.CurrentRow.Index);
		}
	}
}
