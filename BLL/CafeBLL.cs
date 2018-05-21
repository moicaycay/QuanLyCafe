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
		public DataTable Select_Dangnhap(string tk, string mk) => cafeDAL.Select_DangNhap(tk, mk);
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
		public DataTable Select_BillInfo(int mabill) => cafeDAL.select_BillInfo(mabill);
		public DataTable Select_Ban(int maban) => cafeDAL.select_Ban(maban);
		public DataTable Select_Ban() => cafeDAL.select_Ban();
		public int Insert_Bill(int maban,string tk) => cafeDAL.Insert_Bill(maban,tk);
		public DataTable Select_Bill(int maban) => cafeDAL.select_Bill(maban);
		public int Insert_BillInfo(int mabill, int manuoc, int soluong) => cafeDAL.Insert_BillInfo(mabill, manuoc, soluong);
		public DataTable Select_Nuoc() => cafeDAL.Select_Nuoc();
		public int DoiTT_Ban(int maban, string tinhtrang) => cafeDAL.Tinhtrang_Ban(maban, tinhtrang);
		public int ThanhToan_HD(int mabill,float tien) => cafeDAL.Thanhtoan_HD(mabill,tien);
		public int Update_BillInfo(int id, int soluong) => cafeDAL.Update_BillInfo(id, soluong);
	}
}
