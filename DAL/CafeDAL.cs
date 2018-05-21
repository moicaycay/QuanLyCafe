using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace DAL
{
	public class CafeDAL
	{
		ThaoTac_CSDL thaotac = new ThaoTac_CSDL();
		string[] name = { };
		object[] value = { };
		public DataTable Select_DangNhap(string tk, string mk)
		{
			name = new string[2];
			value = new string[2];
			name[0] = "@Ten"; value[0] = tk;
			name[1] = "@matkhau"; value[1] = mk;
			return thaotac.SQL_Laydulieu("sl_user", name, value, 2);


		}
		public DataTable LoadSoBan()
		{
			return thaotac.SQL_Laydulieu("demban");
		}
		public DataTable select_Bill(int maban)
		{
			name = new string[1];	
			value = new object[1];
			name[0] = "@maban"; value[0] = maban;
			return thaotac.SQL_Laydulieu("sl_Bill", name, value, 1);
		}
		public DataTable select_BillInfo(int mabill)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@mabill"; value[0] = mabill;
			return thaotac.SQL_Laydulieu("sl_BillInfo", name, value, 1);
		}
		public DataTable select_Ban(int maban)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@maban"; value[0] = maban;
			return thaotac.SQL_Laydulieu("sl_BanTS", name, value, 1);
		}
		public DataTable select_Ban()
		{
			return thaotac.SQL_Laydulieu("sl_Ban");
		}
		public int Insert_Bill(int maban, string tk)
		{
			name = new string[2];
			value = new object[2];
			name[0] = "@maban"; value[0] = maban;
			name[1] = "@taikhoan"; value[1] =tk;
			return thaotac.SQL_Thuchien("is_Bill", name, value, 2);
		}
		public int Insert_BillInfo(int mabill, int manuoc, int soluong)
		{
			name = new string[3];
			value = new object[3];
			name[0] = "@mabill"; value[0] = mabill;
			name[1] = "@manuoc"; value[1] = manuoc;
			name[2] = "@soluong"; value[2] = soluong;
			return thaotac.SQL_Thuchien("is_BillInfo", name, value, 3);
		}
		public int Tinhtrang_Ban(int maban,string tinhtrang)
		{
			name = new string[2];
			value = new object[2];
			name[0] = "@MaBan"; value[0] = maban;
			name[1] = "@TinhTrang"; value[1] = tinhtrang;
			return thaotac.SQL_Thuchien("ud_TTBan", name, value, 2);
		}
		public int Thanhtoan_HD(int mabill,float tien)
		{
			name = new string[2];
			value = new object[2];
			name[0] = "@MaBill"; value[0] = mabill ;
			name[1] = "@tien"; value[1] = tien;
			return thaotac.SQL_Thuchien("ud_BillThanhToan", name, value, 2);
		}
		public DataTable Select_Nuoc()
		{
			return thaotac.SQL_Laydulieu("sl_NuocUong");
		}
		public int Update_BillInfo(int id, int soluong)
		{
			name = new string[2];
			value = new object[2];
			name[0] = "@id"; value[0] = id;
			
			name[1] = "@soluong"; value[1] = soluong;
			return thaotac.SQL_Thuchien("ud_BillInfo", name, value,2);
		}
	}
}
