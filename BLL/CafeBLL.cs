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
		public int Insert_Bill(int mabill,int maban,string tk) => cafeDAL.Insert_Bill(mabill,maban,tk);
		public DataTable Select_Bill(int maban) => cafeDAL.select_Bill(maban);
		public int Insert_BillInfo(int billinfo,int mabill, int manuoc, int soluong) => cafeDAL.Insert_BillInfo(billinfo,mabill, manuoc, soluong);
		public DataTable Select_Nuoc() => cafeDAL.Select_Nuoc();
		public int DoiTT_Ban(int maban, string tinhtrang) => cafeDAL.Tinhtrang_Ban(maban, tinhtrang);
		public int ThanhToan_HD(int mabill,float tien) => cafeDAL.Thanhtoan_HD(mabill,tien);
		public int Update_BillInfo(int id, int soluong) => cafeDAL.Update_BillInfo(id, soluong);
		public int Update_BillInfo(int id,int mabill, int soluong) => cafeDAL.Update_BillInfo(id,mabill, soluong);
		public DataTable Select_LoaiDoUong() => cafeDAL.Select_LoaiDoUong();
		public DataTable TimKiem_DoUong(string tk) => cafeDAL.Timkiem_LoaiDoUong(tk);
		public DataTable Select_DoUong(object maloai) => cafeDAL.select_DoUong(maloai);
		public int Is_Ban(int maban,string ban) => cafeDAL.is_Ban(maban,ban);
		public int MaBillTD()
		{
			DataTable tam = cafeDAL.sl_MaBill();
			return  Convert.ToInt32(tam.Rows[0][0].ToString());
		}
		public int Ud_MabillTD(int mabill) => cafeDAL.Ud_MaBillTD(mabill);
		public int MaBillInfoTD()
		{
			DataTable tam = cafeDAL.sl_MaBillInfo();
			return Convert.ToInt32(tam.Rows[0][0].ToString());
		}
		public int Ud_MabillInfoTD(int mabillinfo) => cafeDAL.Ud_MaBillInfoTD(mabillinfo);
		public int Delete_Billinfo(int mabillinfo) => cafeDAL.Delete_BillInfo(mabillinfo);
		public DataTable Sl_LoaiDoUong() => cafeDAL.Select_LoaiDoUong();
		public DataTable Select_DoUong() => cafeDAL.Sl_DoUong();
		public int Insert_DoUong(int manuoc, string tennuoc, string DVT, int maloai, float gia)
		{
			return cafeDAL.Insert_DoUong(manuoc, tennuoc,DVT, maloai, gia);
		}
		public int Update_DoUong(int manuoc, string tennuoc, string DVT, int maloai, float gia)
		{
			return cafeDAL.Update_DoUong(manuoc, tennuoc, DVT, maloai, gia);
		}
		public int MaDoUongTD()
		{
			DataTable tam = cafeDAL.sl_MaDoUongTD();
			return Convert.ToInt32(tam.Rows[0][0].ToString());
		}
		public int Ud_MaDoUongTD(int mabillinfo) => cafeDAL.Ud_MaDoUongTD(mabillinfo);
		public int MaLoaiDoUongTD()
		{
			DataTable tam = cafeDAL.sl_MaLoaiDoUongTD();
			return Convert.ToInt32(tam.Rows[0][0].ToString());
		}
		public int Ud_MaLoaiDoUongTD(int mabillinfo) => cafeDAL.Ud_MaLoaiDoUongTD(mabillinfo);
		public int Delete_DoUong(int manuoc) => cafeDAL.delete_DoUong(manuoc);
		public int Insert_LoaiDoUong(int maloai, string tenloai) => cafeDAL.Insert_LoaiDoUong(maloai,tenloai);
		public int Update_LoaiDoUong(int maloai, string tenloai) => cafeDAL.Update_LoaiDoUong(maloai,tenloai);
		public int Delete_LoaiDoUong(int maloai) => cafeDAL.Delete_LoaiDoUong(maloai);
		public DataTable TK_LoaiDoUong(string tk) => cafeDAL.TK_LoaiDoUong(tk);
		public DataTable tk_DoUong(string tk) => cafeDAL.TK_DoUong(tk);
		public DataTable select_TaiKhoan() => cafeDAL.select_TaiKhoan();
		public DataTable TimKiem_TaiKhoan(string tk) => cafeDAL.TimKiem_TK(tk);
		public int insert_TaiKhoan(string tk, string mk, int quyen) => cafeDAL.insert_TaiKhoan(tk,mk,quyen);
		public int update_TaiKhoan(string tk, string mk, int quyen) => cafeDAL.update_TaiKhoan(tk, mk, quyen);
		public int delete_TaiKhoan(string tk) => cafeDAL.delete_TaiKhoan(tk);
		public DataTable TimKiem_DoUong1(string tk) => cafeDAL.TimKiem_DoUong1(tk);
		public DataTable TimKiem_LoaiDoUong1(string tk) => cafeDAL.TimKiem_LoaiDoUong1(tk);
		public int Delete_Ban(int maban) => cafeDAL.delete_Ban(maban);
		public DataTable select_DoanhThu() => cafeDAL.doanhthu();
	}
}
