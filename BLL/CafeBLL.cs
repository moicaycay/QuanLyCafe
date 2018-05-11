using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;
namespace BLL
{
    public class CafeBLL
    {
		CafeDAL cafeDAL = new CafeDAL();
		public DataTable Select_Dangnhap(string tk, string mk)
		{
			return cafeDAL.select_DangNhap(tk, mk);
		}
		public int LoadSoBan()
		{
			DataTable tam = cafeDAL.LoadSoBan();
			if (tam.Rows != null)
				return Convert.ToInt32(tam.Rows[0][0].ToString());
			else
				return -1;
		}
		public int LoadMaBill(int maban)
		{
			DataTable tam = cafeDAL.select_Bill(maban);
			if (tam.Rows.Count > 0)
				return Convert.ToInt32(tam.Rows[0][0].ToString());
			else return -1;
		}
		public DataTable Select_BillInfo(int mabill)
		{
			return cafeDAL.select_BillInfo(mabill);
		}
		public DataTable Select_Ban(int maban)
		{
			return cafeDAL.select_Ban(maban);
		}
		public int Insert_Bill(int maban)
		{
			return cafeDAL.Insert_Bill(maban);
		}
		public DataTable Select_Bill(int maban)
		{
			return cafeDAL.select_Bill(maban);
		}
		public int Insert_BillInfo(int mabill, int manuoc, int soluong)
		{
			return cafeDAL.Insert_BillInfo(mabill, manuoc, soluong);
		}
		public DataTable Select_Nuoc()
		{
			return cafeDAL.Select_Nuoc();
		}
		public int DoiTT_Ban(int maban,string tinhtrang)
		{
			return cafeDAL.Tinhtrang_Ban(maban,tinhtrang);
		}
	}
}
