USE [master]
GO
/****** Object:  Database [QuanLyCafe]    Script Date: 06/03/2018 16:03:08 ******/
CREATE DATABASE [QuanLyCafe] ON  PRIMARY 
( NAME = N'QuanLyCafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\QuanLyCafe.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QuanLyCafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\QuanLyCafe_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QuanLyCafe] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QuanLyCafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QuanLyCafe] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QuanLyCafe] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QuanLyCafe] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QuanLyCafe] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QuanLyCafe] SET ARITHABORT OFF
GO
ALTER DATABASE [QuanLyCafe] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QuanLyCafe] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyCafe] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QuanLyCafe] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QuanLyCafe] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QuanLyCafe] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QuanLyCafe] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QuanLyCafe] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QuanLyCafe] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QuanLyCafe] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QuanLyCafe] SET  DISABLE_BROKER
GO
ALTER DATABASE [QuanLyCafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QuanLyCafe] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QuanLyCafe] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QuanLyCafe] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QuanLyCafe] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QuanLyCafe] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QuanLyCafe] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QuanLyCafe] SET  READ_WRITE
GO
ALTER DATABASE [QuanLyCafe] SET RECOVERY SIMPLE
GO
ALTER DATABASE [QuanLyCafe] SET  MULTI_USER
GO
ALTER DATABASE [QuanLyCafe] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QuanLyCafe] SET DB_CHAINING OFF
GO
USE [QuanLyCafe]
GO
/****** Object:  Table [dbo].[TaiKhoan_Aud]    Script Date: 06/03/2018 16:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan_Aud](
	[taikhoan] [nchar](50) NULL,
	[matkh] [nchar](50) NULL,
	[quyen] [int] NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillInfo_Aud]    Script Date: 06/03/2018 16:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillInfo_Aud](
	[id] [int] NOT NULL,
	[MaBill] [int] NULL,
	[MaNuoc] [int] NULL,
	[Soluong] [int] NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 06/03/2018 16:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhThu](
	[ID] [int] NULL,
	[Ngay] [date] NULL,
	[TongTien] [float] NULL,
	[IDXTongTien] [float] NULL,
	[T2] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill_Aud]    Script Date: 06/03/2018 16:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_Aud](
	[MaBill] [int] NOT NULL,
	[MaBan] [int] NULL,
	[TimeThanhToan] [datetime] NULL,
	[TimeDatHang] [datetime] NULL,
	[MaNV] [nchar](50) NULL,
	[TinhTrang] [bit] NULL,
	[Tien] [float] NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ban_aud]    Script Date: 06/03/2018 16:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban_aud](
	[MaBan] [int] NULL,
	[TenBan] [nvarchar](50) NULL,
	[TinhTrang] [bit] NOT NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NuocUong_Aud]    Script Date: 06/03/2018 16:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NuocUong_Aud](
	[MaNuoc] [int] NOT NULL,
	[TenNuoc] [nchar](50) NULL,
	[DVT] [nchar](10) NULL,
	[MaLoai] [int] NULL,
	[Gia] [int] NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaTuDong]    Script Date: 06/03/2018 16:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaTuDong](
	[id] [int] NOT NULL,
	[MaBill] [int] NULL,
	[MaBillInfo] [int] NULL,
	[MaLoaiDoUong] [int] NULL,
	[MaNuocUong] [int] NULL,
 CONSTRAINT [PK_MaTuDong] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDoUong_Aud]    Script Date: 06/03/2018 16:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDoUong_Aud](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiDoUong]    Script Date: 06/03/2018 16:03:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDoUong](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiDoUong] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[LoadMaBillTD]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LoadMaBillTD]
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select MaBill from MaTuDong
END
GO
/****** Object:  Table [dbo].[Ban]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ban](
	[MaBan] [int] NOT NULL,
	[TenBan] [nvarchar](50) NULL,
	[TinhTrang] [bit] NOT NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[taikhoan] [nchar](50) NOT NULL,
	[matkhau] [nchar](50) NULL,
	[quyen] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SelectMaLoaiDoUongTD]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectMaLoaiDoUongTD] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select MaLoaiDoUong from MaTuDong
END
GO
/****** Object:  StoredProcedure [dbo].[SelectMaDoUongTD]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectMaDoUongTD] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select MaNuocUong from MaTuDong
END
GO
/****** Object:  StoredProcedure [dbo].[SelectMaBillInfoTD]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SelectMaBillInfoTD] 
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select MaBillInfo from MaTuDong
END
GO
/****** Object:  StoredProcedure [dbo].[sl_DoanhThu]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sl_DoanhThu]
	
AS
BEGIN
	select * from DoanhThu
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateMaDoUongTD]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateMaDoUongTD] @madouong int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update MaTuDong set MaTuDong.MaNuocUong = @madouong where id = 1
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateMaBillTD]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateMaBillTD] @mabill int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update MaTuDong set MaTuDong.MaBill = @mabill where id = 1
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateMaBillInfoTD]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateMaBillInfoTD] @mabillinfo int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update MaTuDong set MaBillInfo = @mabillinfo where id = 1
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateLoaiMaDoUongTD]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateLoaiMaDoUongTD] @madouong int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update MaTuDong set MaTuDong.MaLoaiDoUong = @madouong where id = 1
END
GO
/****** Object:  StoredProcedure [dbo].[up_user]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[up_user] @taikhoan nchar(50), @matkhau nchar(50) , @quyen int
AS
update TaiKhoan set  matkhau = @matkhau, quyen = @quyen where taikhoan = @taikhoan
GO
/****** Object:  StoredProcedure [dbo].[up_LoaiDoUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[up_LoaiDoUong] @maloai int , @tenloai nchar(50)
AS
Update LoaiDoUong set TenLoai = @tenloai where MaLoai = @maloai
GO
/****** Object:  StoredProcedure [dbo].[ud_TTBan]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ud_TTBan]@maban int,  @tinhtrang nchar(50)
AS
update Ban set  TinhTrang = @tinhtrang 
where MaBan = @maban
GO
/****** Object:  StoredProcedure [dbo].[TimKiem_LoaiDoUong1]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TimKiem_LoaiDoUong1] @chuoitim nvarchar(5)
as
begin
select * from LoaiDoUong

where MaLoai like N'%' + @chuoitim + N'%' or TenLoai like N'%' + @chuoitim + N'%' 
end
GO
/****** Object:  StoredProcedure [dbo].[sl_BanTS]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sl_BanTS] @maban int
	
AS
BEGIN
	select * from Ban where MaBan = @maban
END
GO
/****** Object:  StoredProcedure [dbo].[Sl_Ban]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sl_Ban]
AS
select * from Ban
GO
/****** Object:  StoredProcedure [dbo].[is_LoaiDoUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[is_LoaiDoUong] @maloai int , @tenloai nvarchar(50)
AS
insert into	LoaiDoUong values(@maloai,@tenloai)
GO
/****** Object:  StoredProcedure [dbo].[Select_LoaiDoUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Select_LoaiDoUong]
AS
select * from LoaiDoUong
GO
/****** Object:  StoredProcedure [dbo].[sl_user1]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sl_user1] 
as
begin
select taikhoan as [Tài khoản], matkhau as [Mật Khẩu], [Quyền] = (CASE quyen when 1 then 'Admin' when 2 then 'Nhân viên' end) from TaiKhoan 

end
GO
/****** Object:  StoredProcedure [dbo].[sl_user]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[sl_user] @ten nchar(50), @matkhau nchar(50)
AS
select * from TaiKhoan where taikhoan = @ten AND matkhau = @matkhau
GO
/****** Object:  StoredProcedure [dbo].[ud_Ban]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ud_Ban]@maban int, @tenban nchar(50), @tinhtrang bit
AS
update Ban set TenBan = @tenban, TinhTrang = @tinhtrang 
where MaBan = @maban
GO
/****** Object:  StoredProcedure [dbo].[tk_user]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[tk_user] @chuoitim nchar(5)
AS
begin
select taikhoan as [Tài khoản], matkhau as [Mật Khẩu], [Quyền] = (CASE quyen when 1 then 'Admin' when 2 then 'Nhân viên' end) from TaiKhoan 
where taikhoan like N'%' + @chuoitim + '%' or matkhau like N'%' + @chuoitim + '%' or quyen like N'%' + @chuoitim + '%'
end
GO
/****** Object:  StoredProcedure [dbo].[tk_LoaiDoUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tk_LoaiDoUong] @chuoitim nvarchar(50)
AS
select * from LoaiDoUong where TenLoai LIKE N'%' + @chuoitim + '%'
GO
/****** Object:  StoredProcedure [dbo].[Sl_LoaiDoUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sl_LoaiDoUong]
AS
select * from LoaiDoUong
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[MaBill] [int] NOT NULL,
	[MaBan] [int] NULL,
	[TimeThanhToan] [datetime] NULL,
	[TimeDatHang] [datetime] NULL,
	[MaNV] [nchar](50) NULL,
	[TinhTrang] [bit] NULL,
	[Tien] [float] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[MaBill] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[demBan]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[demBan]
as
select COUNT(*) from Ban
GO
/****** Object:  StoredProcedure [dbo].[de_user]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[de_user] @taikhoan nchar(50)
as
delete from TaiKhoan where taikhoan = @taikhoan
GO
/****** Object:  StoredProcedure [dbo].[de_LoaiDoUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[de_LoaiDoUong] @maloai int 
AS
delete from LoaiDoUong where MaLoai = @maloai
GO
/****** Object:  StoredProcedure [dbo].[de_Ban]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[de_Ban] @maban int
as
delete from Ban where MaBan = @maban
GO
/****** Object:  StoredProcedure [dbo].[is_Ban]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[is_Ban] @maban int, @tenban nchar(50)
AS
insert into	Ban values(@maban,@tenban,1)
GO
/****** Object:  Table [dbo].[NuocUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NuocUong](
	[MaNuoc] [int] NOT NULL,
	[TenNuoc] [nchar](50) NULL,
	[DVT] [nchar](10) NULL,
	[MaLoai] [int] NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_NuocUong] PRIMARY KEY CLUSTERED 
(
	[MaNuoc] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[is_user]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[is_user] @taikhoan nchar(50), @matkhau nchar(50) , @quyen int
AS
insert into TaiKhoan values(@taikhoan,@matkhau,@quyen)
GO
/****** Object:  StoredProcedure [dbo].[is_NuocUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[is_NuocUong] @tennuoc nchar(50), @gia int
AS
insert into	NuocUong values(@tennuoc, @gia)
GO
/****** Object:  Table [dbo].[BillInfo]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillInfo](
	[id] [int] NOT NULL,
	[MaBill] [int] NULL,
	[MaNuoc] [int] NULL,
	[Soluong] [int] NULL,
 CONSTRAINT [PK_BillInfo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[DoanhThuTheoNgay]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[DoanhThuTheoNgay]
as
begin
select  CONVERT(varchar, TimeThanhToan, 103)AS [Ngày] ,SUM(Tien)as [Tổng tiền] from Bill
where TinhTrang = 1
group by CONVERT(varchar, TimeThanhToan, 103)
end
GO
/****** Object:  StoredProcedure [dbo].[delete_DoUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[delete_DoUong] @manuoc int
as
begin
	delete from NuocUong where MaNuoc = @manuoc
end
GO
/****** Object:  StoredProcedure [dbo].[ud_Bill]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ud_Bill] @mabill int ,@maban int, @timedathang datetime, @timethanhtoan datetime, @tinhtrang bit
AS
update	Bill set MaBan = @maban,TimeDatHang = @timedathang ,TimeThanhToan = @timethanhtoan , TinhTrang = @tinhtrang
where MaBill = @mabill
GO
/****** Object:  StoredProcedure [dbo].[tk_DoUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[tk_DoUong] @chuoitim nvarchar(50)
AS
select * from NuocUong where MaNuoc LIKE N'%' + @chuoitim + '%' OR TenNuoc LIKE N'%' + @chuoitim + '%' 
						  OR MaLoai LIKE N'%' + @chuoitim + '%' OR Gia LIKE N'%' + @chuoitim + '%'
GO
/****** Object:  StoredProcedure [dbo].[Sl_NuocUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sl_NuocUong]
AS
select MaNuoc as [Mã nước], TenNuoc as [Tên nước], DVT as [Đơn vị tính], MaLoai as [Mã loại], Gia as [Đơn giá] from NuocUong
GO
/****** Object:  StoredProcedure [dbo].[Select_DoUong_CTS1]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_DoUong_CTS1] @maloai int
AS
BEGIN
	select MaNuoc as [Mã nước], TenNuoc as [Tên nước], DVT as [Đơn vị tính], MaLoai as [Mã loại], Gia as [Đơn giá] from NuocUong

	where MaLoai = @maloai
END
GO
/****** Object:  StoredProcedure [dbo].[Select_DoUong_CTS]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Select_DoUong_CTS] @maloai int
AS
BEGIN
	select MaNuoc as[Mã Nước], TenNuoc as [Tên Nước], DVT as[Đơn vị tính],Gia as [Giá] from NuocUong
	where MaLoai = @maloai
END
GO
/****** Object:  StoredProcedure [dbo].[Is_DoUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Is_DoUong] @manuoc int, @tennuoc nvarchar(50), @DVT varchar(50), @maloai int, @gia float
AS
begin
insert into NuocUong values(@manuoc,@tennuoc,@DVT,@maloai,@gia)
end
GO
/****** Object:  StoredProcedure [dbo].[TimKiem_DoUong1]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[TimKiem_DoUong1] @chuoitim nvarchar(50) = null
as
begin
select MaNuoc as [Mã nước], TenNuoc as [Tên nước], DVT as [Đơn vị tính], MaLoai as [Mã loại], Gia as [Đơn giá] from NuocUong

where MaNuoc like N'%' + @chuoitim + N'%' or TenNuoc like N'%' + @chuoitim + N'%' or DVT like N'%' + @chuoitim + N'%' or Maloai like N'%' + @chuoitim + N'%' or gia like N'%' + @chuoitim + N'%'
end
GO
/****** Object:  StoredProcedure [dbo].[TimKiem_DoUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[TimKiem_DoUong] @chuoitim nvarchar(50) = null
as
begin
select MaNuoc as[Mã Nước], TenNuoc as [Tên Nước], DVT as[Đơn vị tính],Gia as [Giá] from NuocUong
where MaNuoc like N'%' + @chuoitim + N'%' or TenNuoc like N'%' + @chuoitim + N'%' or DVT like N'%' + @chuoitim + N'%' or Maloai like N'%' + @chuoitim + N'%' or gia  like N'%' + @chuoitim + N'%'
end
GO
/****** Object:  StoredProcedure [dbo].[thanhtoan_HD]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[thanhtoan_HD] @mabill int , @tinhtrang bit
AS
update Bill set TinhTrang = @tinhtrang
where MaBill = @mabill
GO
/****** Object:  StoredProcedure [dbo].[Sl_Bill]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sl_Bill] @maban int
AS
select Mabill from Bill
where MaBan = @maban and TinhTrang = 0
GO
/****** Object:  StoredProcedure [dbo].[is_Bill]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[is_Bill] @mabill int ,@maban int ,@taikhoan varchar(50)
AS
insert into	Bill values(@mabill,@maban,Null,GETDATE(),@taikhoan,0,0)
GO
/****** Object:  StoredProcedure [dbo].[ud_NuocUong1]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ud_NuocUong1] @manuoc int,@tennuoc nchar(50),@DVT nvarchar(50),@maloai int, @gia int
AS
update	NuocUong set TenNuoc = @tennuoc,Gia = @gia , MaLoai= @maloai , DVT = @DVT
where MaNuoc = @manuoc
GO
/****** Object:  StoredProcedure [dbo].[ud_NuocUong]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[ud_NuocUong] @manuoc int,@tennuoc nchar(50), @gia int
AS
update	NuocUong set TenNuoc = @tennuoc,Gia = @gia 
where MaNuoc = @manuoc
GO
/****** Object:  StoredProcedure [dbo].[ud_BillThanhToan]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ud_BillThanhToan] @mabill int ,@tien float
AS
update	Bill set TimeThanhToan = GETDATE() , TinhTrang = 1, Tien = @tien 
where MaBill = @mabill
GO
/****** Object:  StoredProcedure [dbo].[ud_BillInfo1]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ud_BillInfo1] @id int , @mabill int, @soluong int
as
update BillInfo set  Soluong = @soluong , MaBill = @mabill
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[ud_BillInfo]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ud_BillInfo] @id int ,  @soluong int
as
update BillInfo set  Soluong = @soluong
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[sl_BillInfo]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sl_BillInfo] @mabill int
as
select BillInfo.id, NuocUong.MaNuoc as [Mã Nước], NuocUong.TenNuoc as [Tên Nước],BillInfo.Soluong as [Số lượng],NuocUong.Gia as [Giá] from BillInfo, NuocUong
where MaBill = @mabill AND BillInfo.MaNuoc = NuocUong.MaNuoc
GO
/****** Object:  StoredProcedure [dbo].[is_BillInfo]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[is_BillInfo] @mabillinfo int,@mabill int , @manuoc int, @soluong int
as
Insert into BillInfo values(@mabillinfo,@mabill,@manuoc,@soluong)
GO
/****** Object:  StoredProcedure [dbo].[delete_Billinfo]    Script Date: 06/03/2018 16:03:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delete_Billinfo] @mabillinfo int
as
begin
delete from BillInfo where id = @mabillinfo
end
GO
/****** Object:  Default [DF_Ban_TinhTrang]    Script Date: 06/03/2018 16:03:20 ******/
ALTER TABLE [dbo].[Ban] ADD  CONSTRAINT [DF_Ban_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
GO
/****** Object:  ForeignKey [FK_Bill_Ban]    Script Date: 06/03/2018 16:03:20 ******/
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Ban] FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Ban]
GO
/****** Object:  ForeignKey [FK_Bill_User]    Script Date: 06/03/2018 16:03:20 ******/
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_User] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TaiKhoan] ([taikhoan])
GO
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_User]
GO
/****** Object:  ForeignKey [FK_NuocUong_LoaiDoUong]    Script Date: 06/03/2018 16:03:20 ******/
ALTER TABLE [dbo].[NuocUong]  WITH CHECK ADD  CONSTRAINT [FK_NuocUong_LoaiDoUong] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiDoUong] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NuocUong] CHECK CONSTRAINT [FK_NuocUong_LoaiDoUong]
GO
/****** Object:  ForeignKey [FK_BillInfo_Bill]    Script Date: 06/03/2018 16:03:20 ******/
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD  CONSTRAINT [FK_BillInfo_Bill] FOREIGN KEY([MaBill])
REFERENCES [dbo].[Bill] ([MaBill])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillInfo] CHECK CONSTRAINT [FK_BillInfo_Bill]
GO
/****** Object:  ForeignKey [FK_BillInfo_NuocUong]    Script Date: 06/03/2018 16:03:20 ******/
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD  CONSTRAINT [FK_BillInfo_NuocUong] FOREIGN KEY([MaNuoc])
REFERENCES [dbo].[NuocUong] ([MaNuoc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillInfo] CHECK CONSTRAINT [FK_BillInfo_NuocUong]
GO
