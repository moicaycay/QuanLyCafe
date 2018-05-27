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
	public partial class Ban : Form
	{
		CafeBLL cafebll = new CafeBLL();
		public Ban()
		{
			InitializeComponent();
		}

		private void button1_Click(object sender, EventArgs e)
		{
			DialogResult key = MessageBox.Show("Bạn có muốn thêm bàn không?", "Thông báo", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
			if (key == DialogResult.Yes)
			{
				try
				{
					for (int i = 0; i < int.Parse(textBox2.Text); i++)
					{
						string tenban = "Bàn " + (int.Parse(textBox1.Text)+i + 1).ToString();
						cafebll.Is_Ban(tenban);
					}
					MessageBox.Show("Đã thêm xong bàn.");
					
				}

				catch (Exception LOI)
				{
					MessageBox.Show(LOI.Message, "Thông báo", MessageBoxButtons.OK, MessageBoxIcon.Error);
				}
				this.Close();
			}
				
		}

		private void Ban_Load(object sender, EventArgs e)
		{
			textBox1.Text = cafebll.LoadSoBan().ToString();
		}
	}
}
