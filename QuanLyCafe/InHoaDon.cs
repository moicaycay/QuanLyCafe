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
	public partial class InHoaDon : Form
	{
		public int mabill;
		public float Giamgia;
		
		public InHoaDon(int mabill, float Giamgia)
		{
			this.mabill = mabill;
			this.Giamgia = Giamgia;
			InitializeComponent();
		}
		

		private void InHoaDon_Load(object sender, EventArgs e)
		{
			ReportDocument crypt = new ReportDocument();
			crypt.Load("F:/Documents/GitHub/QuanLyCafe/QuanLyCafe/CrystalReport1.rpt");
			ParameterFieldDefinitions pfds;
			ParameterFieldDefinition pfd;
			ParameterValues pv = new ParameterValues();
			ParameterDiscreteValue pdv = new ParameterDiscreteValue();
			pdv.Value = mabill;
			pfds = crypt.DataDefinition.ParameterFields;
			pfd = pfds["MaBill"];
			pv = pfd.CurrentValues;
			pv.Clear();
			pv.Add(pdv);
			pfd.ApplyCurrentValues(pv);
			ParameterValues pv1 = new ParameterValues();
			ParameterDiscreteValue pdv1 = new ParameterDiscreteValue();
			pdv1.Value = Giamgia;
			pfds = crypt.DataDefinition.ParameterFields;
			pfd = pfds["GiamGia"];
			pv1 = pfd.CurrentValues;
			pv1.Clear();
			pv1.Add(pdv1);
			pfd.ApplyCurrentValues(pv1);
			crystalReportViewer1.ReportSource = crypt;
			crystalReportViewer1.Refresh();
		}
	}
}
