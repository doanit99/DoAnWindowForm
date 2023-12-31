USE [QLNhanSu]
GO
/****** Object:  Table [dbo].[LoaiSach]    Script Date: 11/2/2023 4:01:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSach](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblChuVu]    Script Date: 11/2/2023 4:01:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChuVu](
	[ID_ChucVu] [int] IDENTITY(1,1) NOT NULL,
	[Ma_ChucVu] [nvarchar](50) NOT NULL,
	[Ten_ChucVu] [nvarchar](50) NOT NULL,
	[Ghi_Chu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblChuVu] PRIMARY KEY CLUSTERED 
(
	[ID_ChucVu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDuAn]    Script Date: 11/2/2023 4:01:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDuAn](
	[Id_Da] [int] IDENTITY(1,1) NOT NULL,
	[Ma_Da] [nvarchar](50) NOT NULL,
	[Ten_Da] [nvarchar](50) NOT NULL,
	[SoNV_Da] [int] NOT NULL,
	[Mota_Da] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_tblDuAn_1] PRIMARY KEY CLUSTERED 
(
	[Id_Da] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNhanVien]    Script Date: 11/2/2023 4:01:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNhanVien](
	[ID_NhanVien] [int] IDENTITY(1,1) NOT NULL,
	[Ma_ChucVu] [nvarchar](50) NOT NULL,
	[Ma_PhongBan] [nvarchar](50) NOT NULL,
	[Hinh] [image] NULL,
	[Ho_Ten] [nvarchar](50) NULL,
	[Ngay_Sinh] [nvarchar](50) NULL,
	[Gioi_Tinh] [nvarchar](50) NULL,
	[Que_Quan] [nvarchar](50) NULL,
	[So_CMT] [nvarchar](50) NULL,
	[Luong] [float] NULL,
	[So_DienThoai] [nvarchar](50) NULL,
	[Ngay_Tao] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblNhanVien2] PRIMARY KEY CLUSTERED 
(
	[ID_NhanVien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPhongBan]    Script Date: 11/2/2023 4:01:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhongBan](
	[ID_PhongBan] [int] IDENTITY(1,1) NOT NULL,
	[Ma_PhongBan] [nvarchar](50) NOT NULL,
	[Ten_PhongBan] [nvarchar](50) NOT NULL,
	[Dia_Chi] [nvarchar](50) NOT NULL,
	[Ghi_chu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblPhongBan] PRIMARY KEY CLUSTERED 
(
	[ID_PhongBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 11/2/2023 4:01:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[Id_Tkhoan] [int] IDENTITY(1,1) NOT NULL,
	[Ten_TKhoan] [nvarchar](50) NOT NULL,
	[Mat_Khau] [nvarchar](50) NOT NULL,
	[Loai_TKhoan] [int] NOT NULL,
 CONSTRAINT [PK_tblTaiKhoan] PRIMARY KEY CLUSTERED 
(
	[Id_Tkhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThanhVien]    Script Date: 11/2/2023 4:01:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThanhVien](
	[MaTV] [int] IDENTITY(1,1) NOT NULL,
	[TenDN] [nvarchar](200) NOT NULL,
	[MatKhau] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
