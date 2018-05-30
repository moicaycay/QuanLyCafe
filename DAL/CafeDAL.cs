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
		public int Insert_Bill(int mabill,int maban, string tk)
		{
			name = new string[3];
			value = new object[3];
			name[0] = "@mabill"; value[0] = mabill;
			name[1] = "@maban"; value[1] = maban;
			name[2] = "@taikhoan"; value[2] =tk;
			return thaotac.SQL_Thuchien("is_Bill", name, value, 3);
		}
		public int Insert_BillInfo(int mabillinfo,int mabill, int manuoc, int soluong)
		{
			name = new string[4];
			value = new object[4];
			name[0] = "@mabillinfo"; value[0] = mabillinfo;
			name[1] = "@mabill"; value[1] = mabill;
			name[2] = "@manuoc"; value[2] = manuoc;
			name[3] = "@soluong"; value[3] = soluong;
			return thaotac.SQL_Thuchien("is_BillInfo", name, value, 4);
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
		public int Update_BillInfo(int id,int mabill, int soluong)
		{
			name = new string[3];
			value = new object[3];
			name[0] = "@id"; value[0] = id;
			name[1] = "@mabill"; value[1] = mabill;
			name[2] = "@soluong"; value[2] = soluong;
			return thaotac.SQL_Thuchien("ud_BillInfo1", name, value, 3);
		}
		public DataTable Select_LoaiDoUong()
		{
			return thaotac.SQL_Laydulieu("Select_LoaiDoUong");
		}
		public DataTable Timkiem_LoaiDoUong(string tk)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@chuoitim"; value[0] = tk;
			return thaotac.SQL_Laydulieu("TimKiem_DoUong", name, value, 1);
		}
		public DataTable select_DoUong(object maloai)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@maloai"; value[0] = maloai;
			return thaotac.SQL_Laydulieu("Select_DoUong_CTS1", name, value, 1);
		}
		public int is_Ban(int maban,string tenban)
		{
			name = new string[2];
			value = new object[2];
			name[0] = "@maban"; value[0] = maban;
			name[1] = "@tenban"; value[1] = tenban;
			return thaotac.SQL_Thuchien("is_Ban",name,value,2);

		}
		public DataTable sl_MaBill()
		{
			return thaotac.SQL_Laydulieu("LoadMaBillTD");
		}
		public int Ud_MaBillTD(int mabill)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@MaBill"; value[0] = mabill;
			return thaotac.SQL_Thuchien("UpdateMabillTD", name, value, 1);
		}
		public DataTable sl_MaBillInfo()
		{
			return thaotac.SQL_Laydulieu("SelectMaBillInfoTD");
		}
		public int Ud_MaBillInfoTD(int mabillinfo)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@mabillinfo"; value[0] = mabillinfo;
			return thaotac.SQL_Thuchien("UpdateMaBillInfoTD", name, value, 1);
		}
		public int Delete_BillInfo(int mabillinfo)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@mabillinfo"; value[0] = mabillinfo;
			return thaotac.SQL_Thuchien("delete_Billinfo", name, value, 1);
		}
		public DataTable Sl_LoaiDoUong()
		{
			return thaotac.SQL_Laydulieu("Sl_LoaiDoUong");
		}
		public DataTable Sl_DoUong()
		{
			return thaotac.SQL_Laydulieu("Sl_NuocUong");
		}
		public int Insert_DoUong(int manuoc,string tennuoc,string DVT, int maloai, float gia)
		{
			name = new string[5];
			value = new object[5];
			name[0] = "@manuoc"; value[0] = manuoc;
			name[1] = "@tennuoc"; value[1] = tennuoc;
			name[2] = "@DVT"; value[2] = DVT;
			name[3] = "@maloai"; value[3] = maloai;
			name[4] = "@gia"; value[4] = gia;
			return thaotac.SQL_Thuchien("Is_DoUong", name, value, 5);
		}

		public DataTable sl_MaDoUongTD()
		{
			return thaotac.SQL_Laydulieu("SelectMaDoUongTD");
		}
		public int Ud_MaDoUongTD(int madouong)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@madouong"; value[0] = madouong;
			return thaotac.SQL_Thuchien("UpdateMaDoUongTD", name, value, 1);
		}

		public DataTable sl_MaLoaiDoUongTD()
		{
			return thaotac.SQL_Laydulieu("SelectMaLoaiDoUongTD");
		}
		public int Ud_MaLoaiDoUongTD(int madouong)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@madouong"; value[0] = madouong;
			return thaotac.SQL_Thuchien("UpdateLoaiMaDoUongTD", name, value, 1);
		}
		public int Update_DoUong(int manuoc, string tennuoc, string DVT, int maloai, float gia)
		{
			name = new string[5];
			value = new object[5];
			name[0] = "@manuoc"; value[0] = manuoc;
			name[1] = "@tennuoc"; value[1] = tennuoc;
			name[2] = "@DVT"; value[2] = DVT;
			name[3] = "@maloai"; value[3] = maloai;
			name[4] = "@gia"; value[4] = gia;
			return thaotac.SQL_Thuchien("ud_NuocUong1", name, value, 5);
		}
		public int delete_DoUong(int manuoc)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@manuoc"; value[0] = manuoc;
			return thaotac.SQL_Thuchien("Delete_DoUong", name, value, 1);
		}
		public int Insert_LoaiDoUong(int maloai, string tenloai)
		{
			name = new string[2];
			value = new object[2];
			name[0] = "@maloai"; value[0] = maloai;
			name[1] = "@tenloai"; value[1] = tenloai;
			return thaotac.SQL_Thuchien("is_LoaiDoUong", name, value, 2);
		}
		public int Update_LoaiDoUong(int maloai, string tenloai)
		{
			name = new string[2];
			value = new object[2];
			name[0] = "@maloai"; value[0] = maloai;
			name[1] = "@tenloai"; value[1] = tenloai;
			return thaotac.SQL_Thuchien("up_LoaiDoUong", name, value, 2);
		}
		public int Delete_LoaiDoUong(int maloai)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@maloai"; value[0] = maloai;
			return thaotac.SQL_Thuchien("de_LoaiDoUong", name, value, 1);
		}
		public DataTable TK_LoaiDoUong(string chuoitim)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@chuoitim"; value[0] = chuoitim;
			return thaotac.SQL_Laydulieu("tk_LoaiDoUong",name,value,1);
		}
		public DataTable TK_DoUong(string chuoitim)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@chuoitim"; value[0] = chuoitim;
			return thaotac.SQL_Laydulieu("tk_DoUong", name, value, 1);
		}
		public DataTable select_TaiKhoan()
		{
			return thaotac.SQL_Laydulieu("sl_user1");
		}
		public int insert_TaiKhoan(string tk, string mk, int quyen)
		{
			name = new string[3];
			value = new object[3];
			name[0] = "@taikhoan"; value[0] = tk;
			name[1] = "@matkhau"; value[1] = mk;
			name[2] = "@quyen"; value[2] = quyen;
			return thaotac.SQL_Thuchien("is_user", name, value, 3);
		}
		public int update_TaiKhoan(string tk, string mk, int quyen)
		{
			name = new string[3];
			value = new object[3];
			name[0] = "@taikhoan"; value[0] = tk;
			name[1] = "@matkhau"; value[1] = mk;
			name[2] = "@quyen"; value[2] = quyen;
			return thaotac.SQL_Thuchien("up_user", name, value, 3);
		}
		public int delete_TaiKhoan(string tk)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@taikhoan"; value[0] = tk;
			
			return thaotac.SQL_Thuchien("de_user", name, value, 1);
		}
		public DataTable TimKiem_TK(string tk)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@chuoitim"; value[0] = tk;

			return thaotac.SQL_Laydulieu("tk_user", name, value, 1);
		}
		public DataTable TimKiem_DoUong1(string tk)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@chuoitim"; value[0] = tk;

			return thaotac.SQL_Laydulieu("TimKiem_DoUong1", name, value, 1);
		}
		public DataTable TimKiem_LoaiDoUong1(string tk)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@chuoitim"; value[0] = tk;

			return thaotac.SQL_Laydulieu("TimKiem_LoaiDoUong1", name, value, 1);
		}
		public int delete_Ban(int tk)
		{
			name = new string[1];
			value = new object[1];
			name[0] = "@maban"; value[0] = tk;

			return thaotac.SQL_Thuchien("de_Ban", name, value, 1);
		}
		public DataTable doanhthu()
		{
			return thaotac.SQL_Laydulieu("sl_DoanhThu");
		}
	}
}
