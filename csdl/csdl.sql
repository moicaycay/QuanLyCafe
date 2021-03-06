/****** Object:  Table [dbo].[TaiKhoan_Aud]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaiKhoan_Aud]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TaiKhoan_Aud](
	[taikhoan] [nchar](50) NULL,
	[matkh] [nchar](50) NULL,
	[quyen] [int] NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[TaiKhoan_Aud] ([taikhoan], [matkh], [quyen], [HanhDong], [THoiGian_Aud]) VALUES (N'CATOI                                             ', N'123                                               ', 2, N'I', CAST(0x0000A8F00025BB13 AS DateTime))
INSERT [dbo].[TaiKhoan_Aud] ([taikhoan], [matkh], [quyen], [HanhDong], [THoiGian_Aud]) VALUES (N'CATOI                                             ', N'123                                               ', 1, N'I', CAST(0x0000A8F00025BF28 AS DateTime))
/****** Object:  Table [dbo].[NuocUong_Aud]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NuocUong_Aud]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[NuocUong_Aud](
	[MaNuoc] [int] NOT NULL,
	[TenNuoc] [nchar](50) NULL,
	[DVT] [nchar](10) NULL,
	[MaLoai] [int] NULL,
	[Gia] [int] NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[NuocUong_Aud] ([MaNuoc], [TenNuoc], [DVT], [MaLoai], [Gia], [HanhDong], [THoiGian_Aud]) VALUES (16, N'Nước Mía                                          ', N'Ly        ', 2, 5000, N'D', CAST(0x0000A8F00025E138 AS DateTime))
INSERT [dbo].[NuocUong_Aud] ([MaNuoc], [TenNuoc], [DVT], [MaLoai], [Gia], [HanhDong], [THoiGian_Aud]) VALUES (11, N'Nước Chanh                                        ', N'Ly        ', 2, 10000, N'U', CAST(0x0000A8F00096FA8F AS DateTime))
/****** Object:  Table [dbo].[MaTuDong]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MaTuDong]') AND type in (N'U'))
BEGIN
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
END
GO
INSERT [dbo].[MaTuDong] ([id], [MaBill], [MaBillInfo], [MaLoaiDoUong], [MaNuocUong]) VALUES (1, 28, 57, 22, 17)
/****** Object:  Table [dbo].[LoaiDoUong_Aud]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiDoUong_Aud]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiDoUong_Aud](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[LoaiDoUong_Aud] ([MaLoai], [TenLoai], [HanhDong], [THoiGian_Aud]) VALUES (18, N'Trà Sữa', N'I', CAST(0x0000A8EF017BA8D7 AS DateTime))
INSERT [dbo].[LoaiDoUong_Aud] ([MaLoai], [TenLoai], [HanhDong], [THoiGian_Aud]) VALUES (19, N'Nước ngọt', N'I', CAST(0x0000A8EF017C1625 AS DateTime))
INSERT [dbo].[LoaiDoUong_Aud] ([MaLoai], [TenLoai], [HanhDong], [THoiGian_Aud]) VALUES (19, N'Nước ngọt', N'D', CAST(0x0000A8EF017E00A1 AS DateTime))
INSERT [dbo].[LoaiDoUong_Aud] ([MaLoai], [TenLoai], [HanhDong], [THoiGian_Aud]) VALUES (20, N'Nước ngọt', N'I', CAST(0x0000A8EF017E07D1 AS DateTime))
INSERT [dbo].[LoaiDoUong_Aud] ([MaLoai], [TenLoai], [HanhDong], [THoiGian_Aud]) VALUES (10, N'Đồ ăn vặt', N'D', CAST(0x0000A8F00025E5DD AS DateTime))
INSERT [dbo].[LoaiDoUong_Aud] ([MaLoai], [TenLoai], [HanhDong], [THoiGian_Aud]) VALUES (20, N'Nước ngọt', N'D', CAST(0x0000A8F00096B634 AS DateTime))
INSERT [dbo].[LoaiDoUong_Aud] ([MaLoai], [TenLoai], [HanhDong], [THoiGian_Aud]) VALUES (21, N'Nước ngọt', N'I', CAST(0x0000A8F00096C221 AS DateTime))
/****** Object:  Table [dbo].[BillInfo_Aud]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BillInfo_Aud]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BillInfo_Aud](
	[id] [int] NOT NULL,
	[MaBill] [int] NULL,
	[MaNuoc] [int] NULL,
	[Soluong] [int] NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (47, 23, 14, 1, N'D', CAST(0x0000A8EF0189FB73 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (46, 23, 13, 1, N'D', CAST(0x0000A8EF0189FB73 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (38, 16, 11, 1, N'D', CAST(0x0000A8EF0189FB73 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (33, 14, 11, 2, N'D', CAST(0x0000A8EF0189FB73 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (40, 18, 13, 1, N'D', CAST(0x0000A8EF0189FB75 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (27, 11, 11, 2, N'D', CAST(0x0000A8EF0189FB75 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (30, 12, 11, 1, N'D', CAST(0x0000A8EF0189FB76 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (48, 24, 14, 1, N'I', CAST(0x0000A8F0002270A4 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (49, 24, 13, 1, N'I', CAST(0x0000A8F000227289 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (49, 24, 13, 2, N'U', CAST(0x0000A8F0002273D4 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (50, 21, 14, 1, N'U', CAST(0x0000A8F000227D88 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (49, 24, 13, 3, N'U', CAST(0x0000A8F000228AFE AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (45, 21, 11, 1, N'U', CAST(0x0000A8F000228B04 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (51, 25, 13, 1, N'I', CAST(0x0000A8F0002633CC AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (52, 25, 14, 1, N'U', CAST(0x0000A8F00076C616 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (52, 25, 14, 3, N'U', CAST(0x0000A8F0007BE144 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (53, 26, 13, 1, N'U', CAST(0x0000A8F00090318D AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (52, 25, 14, 2, N'U', CAST(0x0000A8F000903CB7 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (51, 25, 13, 1, N'D', CAST(0x0000A8F000903CBC AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (52, 25, 14, 2, N'U', CAST(0x0000A8F000903CBD AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (54, 25, 13, 1, N'U', CAST(0x0000A8F000904920 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (54, 25, 13, 2, N'U', CAST(0x0000A8F000904950 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (54, 25, 13, 2, N'U', CAST(0x0000A8F000911396 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (53, 26, 13, 2, N'U', CAST(0x0000A8F000911398 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (55, 27, 13, 1, N'I', CAST(0x0000A8F000960EA3 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (56, 27, 14, 1, N'U', CAST(0x0000A8F0009618A8 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (56, 27, 14, 4, N'U', CAST(0x0000A8F000962EED AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (52, 26, 14, 1, N'U', CAST(0x0000A8F000962EEE AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (53, 26, 13, 3, N'U', CAST(0x0000A8F000962EEE AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (56, 27, 14, 4, N'U', CAST(0x0000A8F0010E42C3 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (56, 27, 14, 2, N'U', CAST(0x0000A8F0010E42DC AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (49, 24, 13, 1, N'U', CAST(0x0000A8F0002272DD AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (50, 21, 14, 2, N'U', CAST(0x0000A8F000227DBD AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (48, 24, 14, 1, N'D', CAST(0x0000A8F000228B03 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (53, 26, 13, 1, N'I', CAST(0x0000A8F00090310F AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (54, 25, 13, 3, N'U', CAST(0x0000A8F000905728 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (52, 25, 14, 1, N'U', CAST(0x0000A8F000911399 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (50, 21, 14, 1, N'I', CAST(0x0000A8F000227CF7 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (50, 21, 14, 3, N'U', CAST(0x0000A8F000228B04 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (52, 25, 14, 1, N'I', CAST(0x0000A8F00076C536 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (52, 25, 14, 2, N'U', CAST(0x0000A8F00076C6DC AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (52, 25, 14, 2, N'U', CAST(0x0000A8F0008F86DA AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (54, 25, 13, 1, N'I', CAST(0x0000A8F0009048A8 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (52, 25, 14, 2, N'U', CAST(0x0000A8F000911391 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (55, 27, 13, 1, N'U', CAST(0x0000A8F00096109E AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (56, 27, 14, 1, N'I', CAST(0x0000A8F0009615EF AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (54, 25, 13, 1, N'U', CAST(0x0000A8F0010E42D2 AS DateTime))
INSERT [dbo].[BillInfo_Aud] ([id], [MaBill], [MaNuoc], [Soluong], [HanhDong], [THoiGian_Aud]) VALUES (55, 27, 13, 2, N'U', CAST(0x0000A8F000962EE3 AS DateTime))
/****** Object:  Table [dbo].[DoanhThu]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DoanhThu]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DoanhThu](
	[ID] [int] NULL,
	[Ngay] [date] NULL,
	[TongTien] [float] NULL,
	[IDXTongTien] [float] NULL,
	[T2] [int] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[DoanhThu] ([ID], [Ngay], [TongTien], [IDXTongTien], [T2]) VALUES (1, CAST(0x453E0B00 AS Date), 249000, 249000, 1)
INSERT [dbo].[DoanhThu] ([ID], [Ngay], [TongTien], [IDXTongTien], [T2]) VALUES (2, CAST(0x463E0B00 AS Date), 100000, 200000, 4)
INSERT [dbo].[DoanhThu] ([ID], [Ngay], [TongTien], [IDXTongTien], [T2]) VALUES (3, CAST(0x473E0B00 AS Date), 150000, 450000, 9)
INSERT [dbo].[DoanhThu] ([ID], [Ngay], [TongTien], [IDXTongTien], [T2]) VALUES (4, CAST(0x483E0B00 AS Date), 90000, 360000, 16)
INSERT [dbo].[DoanhThu] ([ID], [Ngay], [TongTien], [IDXTongTien], [T2]) VALUES (5, CAST(0x493E0B00 AS Date), 300000, 450000, 25)
INSERT [dbo].[DoanhThu] ([ID], [Ngay], [TongTien], [IDXTongTien], [T2]) VALUES (6, CAST(0x4A3E0B00 AS Date), 140000, 840000, 36)
/****** Object:  Table [dbo].[Bill_Aud]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bill_Aud]') AND type in (N'U'))
BEGIN
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
END
GO
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (23, 1, NULL, CAST(0x0000A8EF01626FD0 AS DateTime), N'root                                              ', 0, 0, N'D', CAST(0x0000A8EF0189FB73 AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (16, 1, CAST(0x0000A8EF00D42814 AS DateTime), CAST(0x0000A8EF00D13A80 AS DateTime), N'root                                              ', 1, 0, N'D', CAST(0x0000A8EF0189FB73 AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (14, 1, CAST(0x0000A8EE0107ABF5 AS DateTime), CAST(0x0000A8EE010782B2 AS DateTime), N'root                                              ', 1, 59000, N'D', CAST(0x0000A8EF0189FB73 AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (10, 1, CAST(0x0000A8EE00BDD9F2 AS DateTime), CAST(0x0000A8ED00FBBA90 AS DateTime), N'root                                              ', 1, 53000, N'D', CAST(0x0000A8EF0189FB73 AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (18, 2, CAST(0x0000A8EF00D56E5F AS DateTime), CAST(0x0000A8EF00D56294 AS DateTime), N'root                                              ', 1, 0, N'D', CAST(0x0000A8EF0189FB75 AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (11, 2, CAST(0x0000A8EE00C572CC AS DateTime), CAST(0x0000A8ED0180C877 AS DateTime), N'root                                              ', 1, 40000, N'D', CAST(0x0000A8EF0189FB75 AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (13, 3, CAST(0x0000A8EE00C582F8 AS DateTime), CAST(0x0000A8EE00C58012 AS DateTime), N'root                                              ', 1, 20000, N'D', CAST(0x0000A8EF0189FB76 AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (12, 3, CAST(0x0000A8EE00C57D10 AS DateTime), CAST(0x0000A8EE00C57AD1 AS DateTime), N'root                                              ', 1, 10000, N'D', CAST(0x0000A8EF0189FB76 AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (6, 4, CAST(0x0000A8EA01042809 AS DateTime), CAST(0x0000A8EA01040AE7 AS DateTime), N'root                                              ', 1, 43000, N'D', CAST(0x0000A8EF0189FB7F AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (24, 12, NULL, CAST(0x0000A8F00022709F AS DateTime), N'root                                              ', 0, 0, N'U', CAST(0x0000A8F000245005 AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (21, 6, NULL, CAST(0x0000A8EF01098683 AS DateTime), N'root                                              ', 0, 0, N'U', CAST(0x0000A8F00024A63E AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (25, 6, NULL, CAST(0x0000A8F0002633CA AS DateTime), N'root                                              ', 0, 0, N'I', CAST(0x0000A8F0002633CA AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (26, 5, NULL, CAST(0x0000A8F00090310A AS DateTime), N'root                                              ', 0, 0, N'I', CAST(0x0000A8F00090310B AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (27, 4, NULL, CAST(0x0000A8F000960EA1 AS DateTime), N'root                                              ', 0, 0, N'I', CAST(0x0000A8F000960EA1 AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (26, 5, NULL, CAST(0x0000A8F00090310A AS DateTime), N'root                                              ', 0, 0, N'U', CAST(0x0000A8F00096581D AS DateTime))
INSERT [dbo].[Bill_Aud] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien], [HanhDong], [THoiGian_Aud]) VALUES (24, 12, NULL, CAST(0x0000A8F00022709F AS DateTime), N'root                                              ', 0, 0, N'I', CAST(0x0000A8F0002270A0 AS DateTime))
/****** Object:  Table [dbo].[Ban_aud]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ban_aud]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ban_aud](
	[MaBan] [int] NULL,
	[TenBan] [nvarchar](50) NULL,
	[TinhTrang] [bit] NOT NULL,
	[HanhDong] [nchar](1) NULL,
	[THoiGian_Aud] [datetime] NULL
) ON [PRIMARY]
END
GO
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (1, N'Bàn 1                                             ', 0, N'D', CAST(0x0000A8EF0189FB74 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (2, N'Bàn 2                                             ', 1, N'D', CAST(0x0000A8EF0189FB75 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (3, N'Bàn 3                                             ', 1, N'D', CAST(0x0000A8EF0189FB76 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (4, N'Bàn 4                                             ', 1, N'D', CAST(0x0000A8EF0189FB7F AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (58, N'Bàn 58                                            ', 1, N'D', CAST(0x0000A8F000007F87 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (59, N'Bàn 59                                            ', 1, N'D', CAST(0x0000A8F000010209 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (56, N'Bàn 56                                            ', 1, N'D', CAST(0x0000A8F000019209 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (57, N'Bàn 57                                            ', 1, N'D', CAST(0x0000A8F00001E3B7 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (55, N'Bàn 55                                            ', 1, N'D', CAST(0x0000A8F000022929 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (52, N'Bàn 52                     ', 1, N'D', CAST(0x0000A8F000022941 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (12, N'Bàn 12                                            ', 0, N'U', CAST(0x0000A8F000245005 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (6, N'Bàn 6                                             ', 0, N'U', CAST(0x0000A8F00024A63E AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (6, N'Bàn 6                                             ', 1, N'U', CAST(0x0000A8F0002633CA AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (5, N'Bàn 5                                             ', 1, N'U', CAST(0x0000A8F00090310B AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (4, N'Bàn 4', 1, N'U', CAST(0x0000A8F000960EA1 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (5, N'Bàn 5                                             ', 0, N'U', CAST(0x0000A8F00096581D AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (52, N'Bàn 52                                            ', 1, N'I', CAST(0x0000A8F000966A14 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (53, N'Bàn 53                                            ', 1, N'I', CAST(0x0000A8F000966A14 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (54, N'Bàn 54                                            ', 1, N'I', CAST(0x0000A8F000966A14 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (55, N'Bàn 55                                            ', 1, N'D', CAST(0x0000A8F000967A6F AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (53, N'Bàn 53                                            ', 1, N'D', CAST(0x0000A8F000967A71 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (51, N'Bàn 51                                            ', 1, N'D', CAST(0x0000A8F000967A71 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (1, N'Bàn 1', 1, N'I', CAST(0x0000A8EF018A99A7 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (2, N'Bàn 2', 0, N'I', CAST(0x0000A8EF018AA1AF AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (2, N'Bàn 2', 0, N'U', CAST(0x0000A8EF018AA7E6 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (3, N'Bàn 3', 1, N'I', CAST(0x0000A8EF018AB019 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (4, N'Bàn 4', 1, N'I', CAST(0x0000A8EF018ABD67 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (60, N'Bàn 60                                            ', 1, N'D', CAST(0x0000A8EF018AE503 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (61, N'                                                  ', 1, N'D', CAST(0x0000A8EF018B3E04 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (54, N'Bàn 54                                            ', 1, N'D', CAST(0x0000A8F000022935 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (53, N'Bàn 53                                            ', 1, N'D', CAST(0x0000A8F000022940 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (51, N'Bàn 51                     ', 1, N'D', CAST(0x0000A8F000022941 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (55, N'Bàn 55                                            ', 1, N'I', CAST(0x0000A8F000966A14 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (54, N'Bàn 54                                            ', 1, N'D', CAST(0x0000A8F000967A70 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (52, N'Bàn 52                                            ', 1, N'D', CAST(0x0000A8F000967A71 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (12, N'Bàn 12                                            ', 1, N'U', CAST(0x0000A8F0002270A0 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (0, N'Bàn 51                                            ', 1, N'I', CAST(0x0000A8F000949F9B AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (0, N'Bàn 51                                            ', 1, N'U', CAST(0x0000A8F0009554C1 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (0, N'Ban 1', 1, N'D', CAST(0x0000A8F000955E57 AS DateTime))
INSERT [dbo].[Ban_aud] ([MaBan], [TenBan], [TinhTrang], [HanhDong], [THoiGian_Aud]) VALUES (51, N'Bàn 51                                            ', 1, N'I', CAST(0x0000A8F000966A05 AS DateTime))
/****** Object:  Table [dbo].[Ban]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ban]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ban](
	[MaBan] [int] NOT NULL,
	[TenBan] [nvarchar](50) NULL,
	[TinhTrang] [bit] NOT NULL,
 CONSTRAINT [PK_Ban] PRIMARY KEY CLUSTERED 
(
	[MaBan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (1, N'Bàn 1', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (2, N'Bàn 2', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (3, N'Bàn 3', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (4, N'Bàn 4', 0)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (5, N'Bàn 5                                             ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (6, N'Bàn 6                                             ', 0)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (7, N'Bàn 7                                             ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (8, N'Bàn 8                                             ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (9, N'Bàn 9                                             ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (10, N'Bàn 10                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (11, N'Bàn 11                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (12, N'Bàn 12                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (13, N'Bàn 13                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (14, N'Bàn 14                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (15, N'Bàn 15                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (16, N'Bàn 16                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (17, N'Bàn 17                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (18, N'Bàn 18                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (19, N'Bàn 19                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (20, N'Bàn 20                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (21, N'Bàn 21                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (22, N'Bàn 22                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (23, N'Bàn 23                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (24, N'Bàn 24                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (25, N'Bàn 25                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (26, N'Bàn 26                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (27, N'Bàn 27                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (28, N'Bàn 28                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (29, N'Bàn 29                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (30, N'Bàn 30                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (31, N'Bàn 31                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (32, N'Bàn 32                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (33, N'Bàn 33                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (34, N'Bàn 34                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (35, N'Bàn 35                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (36, N'Bàn 36                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (37, N'Bàn 37                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (38, N'Bàn 38', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (39, N'Bàn 39                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (40, N'Bàn 40                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (41, N'Bàn 41                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (42, N'Bàn 42                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (43, N'Bàn 43                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (44, N'Bàn 44                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (45, N'Bàn 45                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (46, N'Bàn 46                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (47, N'Bàn 47                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (48, N'Bàn 48                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (49, N'Bàn 49                                            ', 1)
INSERT [dbo].[Ban] ([MaBan], [TenBan], [TinhTrang]) VALUES (50, N'Bàn 50                                            ', 1)
/****** Object:  Table [dbo].[LoaiDoUong]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoaiDoUong]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LoaiDoUong](
	[MaLoai] [int] NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiDoUong] PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[LoaiDoUong] ([MaLoai], [TenLoai]) VALUES (2, N'Nước ép')
INSERT [dbo].[LoaiDoUong] ([MaLoai], [TenLoai]) VALUES (12, N'Ăn Vặt                                            ')
INSERT [dbo].[LoaiDoUong] ([MaLoai], [TenLoai]) VALUES (17, N'Cafe')
INSERT [dbo].[LoaiDoUong] ([MaLoai], [TenLoai]) VALUES (18, N'Trà Sữa')
INSERT [dbo].[LoaiDoUong] ([MaLoai], [TenLoai]) VALUES (21, N'Nước ngọt')
/****** Object:  StoredProcedure [dbo].[LoadMaBillTD]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LoadMaBillTD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TaiKhoan]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TaiKhoan](
	[taikhoan] [nchar](50) NOT NULL,
	[matkhau] [nchar](50) NULL,
	[quyen] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[taikhoan] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[TaiKhoan] ([taikhoan], [matkhau], [quyen]) VALUES (N'CASANG                                            ', N'123                                               ', 2)
INSERT [dbo].[TaiKhoan] ([taikhoan], [matkhau], [quyen]) VALUES (N'CATOI                                             ', N'123                                               ', 2)
INSERT [dbo].[TaiKhoan] ([taikhoan], [matkhau], [quyen]) VALUES (N'root                                              ', N'1                                                 ', 1)
/****** Object:  StoredProcedure [dbo].[SelectMaLoaiDoUongTD]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SelectMaLoaiDoUongTD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
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

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SelectMaDoUongTD]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SelectMaDoUongTD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
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

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SelectMaBillInfoTD]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SelectMaBillInfoTD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sl_DoanhThu]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sl_DoanhThu]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sl_DoanhThu]
	
AS
BEGIN
	select * from DoanhThu
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateMaDoUongTD]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateMaDoUongTD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
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

' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateMaBillTD]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateMaBillTD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateMaBillInfoTD]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateMaBillInfoTD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
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
' 
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateLoaiMaDoUongTD]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UpdateLoaiMaDoUongTD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
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

' 
END
GO
/****** Object:  StoredProcedure [dbo].[up_user]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[up_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create Procedure [dbo].[up_user] @taikhoan nchar(50), @matkhau nchar(50) , @quyen int
AS
update TaiKhoan set  matkhau = @matkhau, quyen = @quyen where taikhoan = @taikhoan
' 
END
GO
/****** Object:  StoredProcedure [dbo].[up_LoaiDoUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[up_LoaiDoUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[up_LoaiDoUong] @maloai int , @tenloai nchar(50)
AS
Update LoaiDoUong set TenLoai = @tenloai where MaLoai = @maloai


' 
END
GO
/****** Object:  StoredProcedure [dbo].[ud_TTBan]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ud_TTBan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ud_TTBan]@maban int,  @tinhtrang nchar(50)
AS
update Ban set  TinhTrang = @tinhtrang 
where MaBan = @maban
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ud_Ban]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ud_Ban]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ud_Ban]@maban int, @tenban nchar(50), @tinhtrang bit
AS
update Ban set TenBan = @tenban, TinhTrang = @tinhtrang 
where MaBan = @maban
' 
END
GO
/****** Object:  StoredProcedure [dbo].[tk_user]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tk_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create Procedure [dbo].[tk_user] @chuoitim nchar(5)
AS
begin
select taikhoan as [Tài khoản], matkhau as [Mật Khẩu], [Quyền] = (CASE quyen when 1 then ''Admin'' when 2 then ''Nhân viên'' end) from TaiKhoan 
where taikhoan like N''%'' + @chuoitim + ''%'' or matkhau like N''%'' + @chuoitim + ''%'' or quyen like N''%'' + @chuoitim + ''%''
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[tk_LoaiDoUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tk_LoaiDoUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE [dbo].[tk_LoaiDoUong] @chuoitim nvarchar(50)
AS
select * from LoaiDoUong where TenLoai LIKE N''%'' + @chuoitim + ''%''


' 
END
GO
/****** Object:  StoredProcedure [dbo].[Sl_LoaiDoUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sl_LoaiDoUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Sl_LoaiDoUong]
AS
select * from LoaiDoUong

' 
END
GO
/****** Object:  StoredProcedure [dbo].[TimKiem_LoaiDoUong1]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TimKiem_LoaiDoUong1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create PROCEDURE [dbo].[TimKiem_LoaiDoUong1] @chuoitim nvarchar(5)
as
begin
select * from LoaiDoUong

where MaLoai like N''%'' + @chuoitim + N''%'' or TenLoai like N''%'' + @chuoitim + N''%'' 
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[sl_BanTS]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sl_BanTS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sl_BanTS] @maban int
	
AS
BEGIN
	select * from Ban where MaBan = @maban
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Sl_Ban]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sl_Ban]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Sl_Ban]
AS
select * from Ban
' 
END
GO
/****** Object:  StoredProcedure [dbo].[is_LoaiDoUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[is_LoaiDoUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[is_LoaiDoUong] @maloai int , @tenloai nvarchar(50)
AS
insert into	LoaiDoUong values(@maloai,@tenloai)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Select_LoaiDoUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Select_LoaiDoUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'Create PROCEDURE [dbo].[Select_LoaiDoUong]
AS
select * from LoaiDoUong' 
END
GO
/****** Object:  StoredProcedure [dbo].[sl_user1]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sl_user1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sl_user1] 
as
begin
select taikhoan as [Tài khoản], matkhau as [Mật Khẩu], [Quyền] = (CASE quyen when 1 then ''Admin'' when 2 then ''Nhân viên'' end) from TaiKhoan 

end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sl_user]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sl_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE Procedure [dbo].[sl_user] @ten nchar(50), @matkhau nchar(50)
AS
select * from TaiKhoan where taikhoan = @ten AND matkhau = @matkhau
' 
END
GO
/****** Object:  Table [dbo].[NuocUong]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NuocUong]') AND type in (N'U'))
BEGIN
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
END
GO
INSERT [dbo].[NuocUong] ([MaNuoc], [TenNuoc], [DVT], [MaLoai], [Gia]) VALUES (11, N'Nước Chanh                                        ', N'Ly        ', 2, 15000)
INSERT [dbo].[NuocUong] ([MaNuoc], [TenNuoc], [DVT], [MaLoai], [Gia]) VALUES (13, N'Cafe                                              ', N'Ly        ', 17, 10000)
INSERT [dbo].[NuocUong] ([MaNuoc], [TenNuoc], [DVT], [MaLoai], [Gia]) VALUES (14, N'Cafe Sữa                                          ', N'Ly        ', 17, 10000)
INSERT [dbo].[NuocUong] ([MaNuoc], [TenNuoc], [DVT], [MaLoai], [Gia]) VALUES (15, N'Nước Dâu                                          ', N'Ly        ', 2, 15000)
INSERT [dbo].[NuocUong] ([MaNuoc], [TenNuoc], [DVT], [MaLoai], [Gia]) VALUES (17, N'Nước Cam                                          ', N'Ly        ', 2, 20000)
/****** Object:  StoredProcedure [dbo].[is_user]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[is_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create Procedure [dbo].[is_user] @taikhoan nchar(50), @matkhau nchar(50) , @quyen int
AS
insert into TaiKhoan values(@taikhoan,@matkhau,@quyen)
' 
END
GO
/****** Object:  Trigger [AuditUpdateLoaiDoUong]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditUpdateLoaiDoUong]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditUpdateLoaiDoUong]
ON [dbo].[LoaiDoUong]
	FOR Insert
	AS
	insert into LoaiDoUong_Aud select *,''U'',getdate() From deleted
'
GO
/****** Object:  StoredProcedure [dbo].[is_Ban]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[is_Ban]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[is_Ban] @maban int, @tenban nchar(50)
AS
insert into	Ban values(@maban,@tenban,1)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[demBan]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[demBan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[demBan]
as
select COUNT(*) from Ban
' 
END
GO
/****** Object:  Trigger [AuditUpdateBan]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditUpdateBan]'))
EXEC dbo.sp_executesql @statement = N'Create TRIGGER [dbo].[AuditUpdateBan]
	ON [dbo].[Ban]
	FOR update
	AS
	insert into Ban_aud select *,''U'',getdate() From deleted
'
GO
/****** Object:  Trigger [AuditInsertTaiKhoan]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditInsertTaiKhoan]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditInsertTaiKhoan] 
	ON [dbo].[TaiKhoan]
	FOR Insert 
	AS
	insert into TaiKhoan_Aud select *,''I'',getdate() From inserted
'
GO
/****** Object:  StoredProcedure [dbo].[de_user]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[de_user]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create Procedure [dbo].[de_user] @taikhoan nchar(50)
as
delete from TaiKhoan where taikhoan = @taikhoan' 
END
GO
/****** Object:  StoredProcedure [dbo].[de_LoaiDoUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[de_LoaiDoUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE [dbo].[de_LoaiDoUong] @maloai int 
AS
delete from LoaiDoUong where MaLoai = @maloai


' 
END
GO
/****** Object:  StoredProcedure [dbo].[de_Ban]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[de_Ban]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create Procedure [dbo].[de_Ban] @maban int
as
delete from Ban where MaBan = @maban' 
END
GO
/****** Object:  Trigger [AuditInsertLoaiDoUong]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditInsertLoaiDoUong]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditInsertLoaiDoUong]
ON [dbo].[LoaiDoUong]
	FOR Insert
	AS
	insert into LoaiDoUong_Aud select *,''I'',getdate() From inserted
'
GO
/****** Object:  Trigger [AuditInsertBan]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditInsertBan]'))
EXEC dbo.sp_executesql @statement = N'Create TRIGGER [dbo].[AuditInsertBan]
	ON [dbo].[Ban]
	FOR insert
	AS
	insert into Ban_aud select *,''I'',getdate() From inserted
'
GO
/****** Object:  Trigger [AuditDeleteTaiKhoan]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditDeleteTaiKhoan]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditDeleteTaiKhoan] 
	ON [dbo].[TaiKhoan]
	FOR delete 
	AS
	insert into TaiKhoan_Aud select *,''D'',getdate() From deleted
'
GO
/****** Object:  Trigger [AuditDeleteLoaiDoUong]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditDeleteLoaiDoUong]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditDeleteLoaiDoUong]
ON [dbo].[LoaiDoUong]
	FOR delete
	AS
	insert into LoaiDoUong_Aud select *,''D'',getdate() From deleted
'
GO
/****** Object:  Trigger [AuditDeleteBan]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditDeleteBan]'))
EXEC dbo.sp_executesql @statement = N'Create TRIGGER [dbo].[AuditDeleteBan]
	ON [dbo].[Ban]
	FOR delete
	AS
	insert into Ban_aud select *,''D'',getdate() From deleted
'
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Bill]') AND type in (N'U'))
BEGIN
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
END
GO
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (1, 14, CAST(0x0000A8EA0007906A AS DateTime), CAST(0x0000A8EA00075B46 AS DateTime), N'root                                              ', 1, 82000)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (2, 21, CAST(0x0000A8EA0007F6AA AS DateTime), CAST(0x0000A8EA00076DE1 AS DateTime), N'root                                              ', 1, 59000)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (5, 17, CAST(0x0000A8EA0103F03D AS DateTime), CAST(0x0000A8EA0103E284 AS DateTime), N'root                                              ', 1, 59000)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (7, 13, CAST(0x0000A8EA011CE7D9 AS DateTime), CAST(0x0000A8EA011CD89A AS DateTime), N'root                                              ', 1, 49000)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (8, 21, CAST(0x0000A8ED00F5FEC6 AS DateTime), CAST(0x0000A8EA01800BBE AS DateTime), N'root                                              ', 1, 10000)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (19, 10, CAST(0x0000A8EF01030F96 AS DateTime), CAST(0x0000A8EF00D58CCF AS DateTime), N'root                                              ', 1, 50000)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (20, 6, CAST(0x0000A8EF01093CF4 AS DateTime), CAST(0x0000A8EF0109370E AS DateTime), N'root                                              ', 1, 90000)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (21, 6, CAST(0x0000A8F00024A63E AS DateTime), CAST(0x0000A8EF01098683 AS DateTime), N'root                                              ', 1, 50000)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (24, 12, CAST(0x0000A8F000245004 AS DateTime), CAST(0x0000A8F00022709F AS DateTime), N'root                                              ', 1, 30000)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (25, 6, NULL, CAST(0x0000A8F0002633CA AS DateTime), N'root                                              ', 0, 0)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (26, 5, CAST(0x0000A8F00096581D AS DateTime), CAST(0x0000A8F00090310A AS DateTime), N'root                                              ', 1, 45000)
INSERT [dbo].[Bill] ([MaBill], [MaBan], [TimeThanhToan], [TimeDatHang], [MaNV], [TinhTrang], [Tien]) VALUES (27, 4, NULL, CAST(0x0000A8F000960EA1 AS DateTime), N'root                                              ', 0, 0)
/****** Object:  Trigger [AuditUpdateTaiKhoan]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditUpdateTaiKhoan]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditUpdateTaiKhoan] 
	ON [dbo].[TaiKhoan]
	FOR update
	AS
	insert into TaiKhoan_Aud select *,''I'',getdate() From deleted
'
GO
/****** Object:  Trigger [AuditUpdateNuocUong]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditUpdateNuocUong]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditUpdateNuocUong]
ON [dbo].[NuocUong]
	FOR Update
	AS
	insert into NuocUong_Aud select *,''U'',getdate() From deleted
'
GO
/****** Object:  Table [dbo].[BillInfo]    Script Date: 06/03/2018 16:17:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BillInfo]') AND type in (N'U'))
BEGIN
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
END
GO
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (23, 8, 11, 1)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (42, 19, 14, 2)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (43, 19, 13, 3)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (44, 20, 11, 9)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (45, 21, 11, 1)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (49, 24, 13, 3)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (50, 21, 14, 4)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (52, 26, 14, 1)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (53, 26, 13, 4)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (54, 25, 13, 2)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (55, 27, 13, 1)
INSERT [dbo].[BillInfo] ([id], [MaBill], [MaNuoc], [Soluong]) VALUES (56, 25, 14, 2)
/****** Object:  Trigger [AuditDeleteBill]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditDeleteBill]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditDeleteBill]
	ON [dbo].[Bill]
	FOR delete
	AS
	insert into Bill_Aud select *,''D'',getdate() From deleted
'
GO
/****** Object:  Trigger [AuditDeleteNuocUong]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditDeleteNuocUong]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditDeleteNuocUong]
ON [dbo].[NuocUong]
	FOR DELETE
	AS
	insert into NuocUong_Aud select *,''D'',getdate() From deleted
'
GO
/****** Object:  Trigger [CapNhapTTBan]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[CapNhapTTBan]'))
EXEC dbo.sp_executesql @statement = N'CREATE Trigger [dbo].[CapNhapTTBan] ON [dbo].[Bill]
For Insert, Update
as 
begin
IF UPDATE(TinhTrang) Begin
update Ban set Ban.TinhTrang = inserted.TinhTrang
from inserted where Ban.MaBan = inserted.MaBan
end

end
'
GO
/****** Object:  Trigger [AuditupdateBill]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditupdateBill]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditupdateBill]
	ON [dbo].[Bill]
	FOR update 
	AS
	insert into Bill_Aud select *,''U'',getdate() From deleted
'
GO
/****** Object:  Trigger [AuditInsertBill]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditInsertBill]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditInsertBill]
	ON [dbo].[Bill]
	FOR Insert 
	AS
	insert into Bill_Aud select *,''I'',getdate() From inserted
'
GO
/****** Object:  Trigger [AuditInsertNuocUong]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditInsertNuocUong]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditInsertNuocUong]
ON [dbo].[NuocUong]
	FOR Insert
	AS
	insert into NuocUong_Aud select *,''I'',getdate() From deleted
'
GO
/****** Object:  StoredProcedure [dbo].[delete_DoUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_DoUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[delete_DoUong] @manuoc int
as
begin
	delete from NuocUong where MaNuoc = @manuoc
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[DoanhThuTheoNgay]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DoanhThuTheoNgay]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROC [dbo].[DoanhThuTheoNgay]
as
begin
select  CONVERT(varchar, TimeThanhToan, 103)AS [Ngày] ,SUM(Tien)as [Tổng tiền] from Bill
where TinhTrang = 1
group by CONVERT(varchar, TimeThanhToan, 103)
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[is_NuocUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[is_NuocUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[is_NuocUong] @tennuoc nchar(50), @gia int
AS
insert into	NuocUong values(@tennuoc, @gia)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Sl_NuocUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sl_NuocUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Sl_NuocUong]
AS
select MaNuoc as [Mã nước], TenNuoc as [Tên nước], DVT as [Đơn vị tính], MaLoai as [Mã loại], Gia as [Đơn giá] from NuocUong
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Select_DoUong_CTS1]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Select_DoUong_CTS1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Select_DoUong_CTS1] @maloai int
AS
BEGIN
	select MaNuoc as [Mã nước], TenNuoc as [Tên nước], DVT as [Đơn vị tính], MaLoai as [Mã loại], Gia as [Đơn giá] from NuocUong

	where MaLoai = @maloai
END

' 
END
GO
/****** Object:  StoredProcedure [dbo].[Select_DoUong_CTS]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Select_DoUong_CTS]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Select_DoUong_CTS] @maloai int
AS
BEGIN
	select MaNuoc as[Mã Nước], TenNuoc as [Tên Nước], DVT as[Đơn vị tính],Gia as [Giá] from NuocUong
	where MaLoai = @maloai
END
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Is_DoUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Is_DoUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[Is_DoUong] @manuoc int, @tennuoc nvarchar(50), @DVT varchar(50), @maloai int, @gia float
AS
begin
insert into NuocUong values(@manuoc,@tennuoc,@DVT,@maloai,@gia)
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[TimKiem_DoUong1]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TimKiem_DoUong1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create PROCEDURE [dbo].[TimKiem_DoUong1] @chuoitim nvarchar(50) = null
as
begin
select MaNuoc as [Mã nước], TenNuoc as [Tên nước], DVT as [Đơn vị tính], MaLoai as [Mã loại], Gia as [Đơn giá] from NuocUong

where MaNuoc like N''%'' + @chuoitim + N''%'' or TenNuoc like N''%'' + @chuoitim + N''%'' or DVT like N''%'' + @chuoitim + N''%'' or Maloai like N''%'' + @chuoitim + N''%'' or gia like N''%'' + @chuoitim + N''%''
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[TimKiem_DoUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TimKiem_DoUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[TimKiem_DoUong] @chuoitim nvarchar(50) = null
as
begin
select MaNuoc as[Mã Nước], TenNuoc as [Tên Nước], DVT as[Đơn vị tính],Gia as [Giá] from NuocUong
where MaNuoc like N''%'' + @chuoitim + N''%'' or TenNuoc like N''%'' + @chuoitim + N''%'' or DVT like N''%'' + @chuoitim + N''%'' or Maloai like N''%'' + @chuoitim + N''%'' or gia  like N''%'' + @chuoitim + N''%''
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[thanhtoan_HD]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[thanhtoan_HD]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[thanhtoan_HD] @mabill int , @tinhtrang bit
AS
update Bill set TinhTrang = @tinhtrang
where MaBill = @mabill
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Sl_Bill]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sl_Bill]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[Sl_Bill] @maban int
AS
select Mabill from Bill
where MaBan = @maban and TinhTrang = 0
' 
END
GO
/****** Object:  StoredProcedure [dbo].[is_Bill]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[is_Bill]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[is_Bill] @mabill int ,@maban int ,@taikhoan varchar(50)
AS
insert into	Bill values(@mabill,@maban,Null,GETDATE(),@taikhoan,0,0)
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ud_Bill]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ud_Bill]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ud_Bill] @mabill int ,@maban int, @timedathang datetime, @timethanhtoan datetime, @tinhtrang bit
AS
update	Bill set MaBan = @maban,TimeDatHang = @timedathang ,TimeThanhToan = @timethanhtoan , TinhTrang = @tinhtrang
where MaBill = @mabill
' 
END
GO
/****** Object:  StoredProcedure [dbo].[tk_DoUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tk_DoUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create PROCEDURE [dbo].[tk_DoUong] @chuoitim nvarchar(50)
AS
select * from NuocUong where MaNuoc LIKE N''%'' + @chuoitim + ''%'' OR TenNuoc LIKE N''%'' + @chuoitim + ''%'' 
						  OR MaLoai LIKE N''%'' + @chuoitim + ''%'' OR Gia LIKE N''%'' + @chuoitim + ''%'' 



' 
END
GO
/****** Object:  StoredProcedure [dbo].[ud_NuocUong1]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ud_NuocUong1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[ud_NuocUong1] @manuoc int,@tennuoc nchar(50),@DVT nvarchar(50),@maloai int, @gia int
AS
update	NuocUong set TenNuoc = @tennuoc,Gia = @gia , MaLoai= @maloai , DVT = @DVT
where MaNuoc = @manuoc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ud_NuocUong]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ud_NuocUong]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create PROCEDURE [dbo].[ud_NuocUong] @manuoc int,@tennuoc nchar(50), @gia int
AS
update	NuocUong set TenNuoc = @tennuoc,Gia = @gia 
where MaNuoc = @manuoc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ud_BillThanhToan]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ud_BillThanhToan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[ud_BillThanhToan] @mabill int ,@tien float
AS
update	Bill set TimeThanhToan = GETDATE() , TinhTrang = 1, Tien = @tien 
where MaBill = @mabill

' 
END
GO
/****** Object:  StoredProcedure [dbo].[ud_BillInfo1]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ud_BillInfo1]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ud_BillInfo1] @id int , @mabill int, @soluong int
as
update BillInfo set  Soluong = @soluong , MaBill = @mabill
where id = @id 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[ud_BillInfo]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ud_BillInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[ud_BillInfo] @id int ,  @soluong int
as
update BillInfo set  Soluong = @soluong
where id = @id 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[sl_BillInfo]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sl_BillInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[sl_BillInfo] @mabill int
as
select BillInfo.id, NuocUong.MaNuoc as [Mã Nước], NuocUong.TenNuoc as [Tên Nước],BillInfo.Soluong as [Số lượng],NuocUong.Gia as [Giá] from BillInfo, NuocUong
where MaBill = @mabill AND BillInfo.MaNuoc = NuocUong.MaNuoc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[is_BillInfo]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[is_BillInfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[is_BillInfo] @mabillinfo int,@mabill int , @manuoc int, @soluong int
as
Insert into BillInfo values(@mabillinfo,@mabill,@manuoc,@soluong)
' 
END
GO
/****** Object:  Trigger [AuditUpdateBillInfo]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditUpdateBillInfo]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditUpdateBillInfo]
	ON [dbo].[BillInfo]
	FOR update 
	AS
	insert into Billinfo_Aud select *,''U'',getdate() From deleted
'
GO
/****** Object:  StoredProcedure [dbo].[delete_Billinfo]    Script Date: 06/03/2018 16:17:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[delete_Billinfo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[delete_Billinfo] @mabillinfo int
as
begin
delete from BillInfo where id = @mabillinfo
end
' 
END
GO
/****** Object:  Trigger [AuditInsertBillInfo]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditInsertBillInfo]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditInsertBillInfo]
	ON [dbo].[BillInfo]
	FOR Insert 
	AS
	insert into Billinfo_Aud select *,''I'',getdate() From inserted
'
GO
/****** Object:  Trigger [AuditDeleteBillInfo]    Script Date: 06/03/2018 16:17:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.triggers WHERE object_id = OBJECT_ID(N'[dbo].[AuditDeleteBillInfo]'))
EXEC dbo.sp_executesql @statement = N'CREATE TRIGGER [dbo].[AuditDeleteBillInfo]
	ON [dbo].[BillInfo]
	FOR delete
	AS
	insert into Billinfo_Aud select *,''D'',getdate() From deleted
'
GO
/****** Object:  Default [DF_Ban_TinhTrang]    Script Date: 06/03/2018 16:17:01 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF_Ban_TinhTrang]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ban]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Ban_TinhTrang]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Ban] ADD  CONSTRAINT [DF_Ban_TinhTrang]  DEFAULT ((0)) FOR [TinhTrang]
END


End
GO
/****** Object:  ForeignKey [FK_Bill_Ban]    Script Date: 06/03/2018 16:17:01 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bill_Ban]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bill]'))
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_Ban] FOREIGN KEY([MaBan])
REFERENCES [dbo].[Ban] ([MaBan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bill_Ban]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bill]'))
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_Ban]
GO
/****** Object:  ForeignKey [FK_Bill_User]    Script Date: 06/03/2018 16:17:01 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bill_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bill]'))
ALTER TABLE [dbo].[Bill]  WITH CHECK ADD  CONSTRAINT [FK_Bill_User] FOREIGN KEY([MaNV])
REFERENCES [dbo].[TaiKhoan] ([taikhoan])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Bill_User]') AND parent_object_id = OBJECT_ID(N'[dbo].[Bill]'))
ALTER TABLE [dbo].[Bill] CHECK CONSTRAINT [FK_Bill_User]
GO
/****** Object:  ForeignKey [FK_BillInfo_Bill]    Script Date: 06/03/2018 16:17:01 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BillInfo_Bill]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillInfo]'))
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD  CONSTRAINT [FK_BillInfo_Bill] FOREIGN KEY([MaBill])
REFERENCES [dbo].[Bill] ([MaBill])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BillInfo_Bill]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillInfo]'))
ALTER TABLE [dbo].[BillInfo] CHECK CONSTRAINT [FK_BillInfo_Bill]
GO
/****** Object:  ForeignKey [FK_BillInfo_NuocUong]    Script Date: 06/03/2018 16:17:01 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BillInfo_NuocUong]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillInfo]'))
ALTER TABLE [dbo].[BillInfo]  WITH CHECK ADD  CONSTRAINT [FK_BillInfo_NuocUong] FOREIGN KEY([MaNuoc])
REFERENCES [dbo].[NuocUong] ([MaNuoc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_BillInfo_NuocUong]') AND parent_object_id = OBJECT_ID(N'[dbo].[BillInfo]'))
ALTER TABLE [dbo].[BillInfo] CHECK CONSTRAINT [FK_BillInfo_NuocUong]
GO
/****** Object:  ForeignKey [FK_NuocUong_LoaiDoUong]    Script Date: 06/03/2018 16:17:01 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NuocUong_LoaiDoUong]') AND parent_object_id = OBJECT_ID(N'[dbo].[NuocUong]'))
ALTER TABLE [dbo].[NuocUong]  WITH CHECK ADD  CONSTRAINT [FK_NuocUong_LoaiDoUong] FOREIGN KEY([MaLoai])
REFERENCES [dbo].[LoaiDoUong] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_NuocUong_LoaiDoUong]') AND parent_object_id = OBJECT_ID(N'[dbo].[NuocUong]'))
ALTER TABLE [dbo].[NuocUong] CHECK CONSTRAINT [FK_NuocUong_LoaiDoUong]
GO
