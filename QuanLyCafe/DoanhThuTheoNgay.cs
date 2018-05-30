using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;


namespace QuanLyCafe
{
	public partial class DoanhThuTheoNgay : Form
	{
		public DoanhThuTheoNgay()
		{
			InitializeComponent();
		}

		private void DoanhThuTheoNgay_Load(object sender, EventArgs e)
		{
			
		}

		private void button1_Click(object sender, EventArgs e)
		{
			ReportDocument crypt = new ReportDocument();
			crypt.Load("F:/Documents/GitHub/QuanLyCafe/QuanLyCafe/Thống kê theo ngày.rpt");
			ParameterFieldDefinitions pfds;
			ParameterFieldDefinition pfd;
			ParameterValues pv = new ParameterValues();
			ParameterDiscreteValue pdv = new ParameterDiscreteValue();
			pdv.Value = dateTimePicker1.Value.Date;
			pfds = crypt.DataDefinition.ParameterFields;
			pfd = pfds["Ngay"];
			pv = pfd.CurrentValues;
			pv.Clear();
			pv.Add(pdv);
			pfd.ApplyCurrentValues(pv);
			crystalReportViewer1.ReportSource = crypt;
			crystalReportViewer1.Refresh();
		}

		
	}
}
