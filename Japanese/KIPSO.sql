USE [master]
GO
/****** Object:  Database [KIPSO]    Script Date: 5/8/2022 9:32:56 PM ******/
CREATE DATABASE [KIPSO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KIPSO', FILENAME = N'/var/opt/mssql/data/KIPSO.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KIPSO_log', FILENAME = N'/var/opt/mssql/data/KIPSO_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [KIPSO] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KIPSO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KIPSO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KIPSO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KIPSO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KIPSO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KIPSO] SET ARITHABORT OFF 
GO
ALTER DATABASE [KIPSO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KIPSO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KIPSO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KIPSO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KIPSO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KIPSO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KIPSO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KIPSO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KIPSO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KIPSO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [KIPSO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KIPSO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KIPSO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KIPSO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KIPSO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KIPSO] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [KIPSO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KIPSO] SET RECOVERY FULL 
GO
ALTER DATABASE [KIPSO] SET  MULTI_USER 
GO
ALTER DATABASE [KIPSO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KIPSO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KIPSO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KIPSO] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KIPSO] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KIPSO] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'KIPSO', N'ON'
GO
ALTER DATABASE [KIPSO] SET QUERY_STORE = OFF
GO
USE [KIPSO]
GO
/****** Object:  Table [dbo].[CapDo]    Script Date: 5/8/2022 9:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CapDo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CapDo] [nvarchar](5) NULL,
 CONSTRAINT [PK_CapDo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CSKH]    Script Date: 5/8/2022 9:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CSKH](
	[Email] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[IDKhoaHoc] [int] NULL,
 CONSTRAINT [PK__LienHe__A9D105359DF9D21E] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 5/8/2022 9:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmailNguoiDung] [nvarchar](50) NULL,
	[IDKhoaHoc] [int] NULL,
	[DonGia] [bigint] NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 5/8/2022 9:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKhoaHoc] [int] NULL,
	[HoTen] [nvarchar](20) NULL,
	[DanhGia] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoahoc]    Script Date: 5/8/2022 9:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoahoc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenKhoaHoc] [nvarchar](50) NULL,
	[IDCapDo] [int] NULL,
	[DonGia] [bigint] NULL,
 CONSTRAINT [PK__Khoahoc__CED638A6D1F8EAE3] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 5/8/2022 9:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](4) NULL,
	[NgaySinh] [date] NULL,
	[SDT] [int] NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Video]    Script Date: 5/8/2022 9:32:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Video](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDKhoaHoc] [int] NULL,
	[IDYoutube] [nvarchar](20) NULL,
	[Ten] [nchar](1000) NULL,
 CONSTRAINT [PK_Video] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CapDo] ON 

INSERT [dbo].[CapDo] ([ID], [CapDo]) VALUES (1, N'N5')
INSERT [dbo].[CapDo] ([ID], [CapDo]) VALUES (2, N'N4')
INSERT [dbo].[CapDo] ([ID], [CapDo]) VALUES (3, N'N3')
INSERT [dbo].[CapDo] ([ID], [CapDo]) VALUES (4, N'N2')
INSERT [dbo].[CapDo] ([ID], [CapDo]) VALUES (5, N'N1')
SET IDENTITY_INSERT [dbo].[CapDo] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([ID], [EmailNguoiDung], [IDKhoaHoc], [DonGia]) VALUES (4, N'cdangiu@gmail.com', 2, 3000000)
INSERT [dbo].[DonHang] ([ID], [EmailNguoiDung], [IDKhoaHoc], [DonGia]) VALUES (5, N'cdangiu@gmail.com', 2, 3000000)
INSERT [dbo].[DonHang] ([ID], [EmailNguoiDung], [IDKhoaHoc], [DonGia]) VALUES (6, N'cdangiu@gmail.com', 6, 8000000)
INSERT [dbo].[DonHang] ([ID], [EmailNguoiDung], [IDKhoaHoc], [DonGia]) VALUES (7, N'cdangiu@gmail.com', 5, 7000000)
INSERT [dbo].[DonHang] ([ID], [EmailNguoiDung], [IDKhoaHoc], [DonGia]) VALUES (8, NULL, 2, 3000000)
INSERT [dbo].[DonHang] ([ID], [EmailNguoiDung], [IDKhoaHoc], [DonGia]) VALUES (9, N'cdangiu@gmail.com', 3, 4500000)
INSERT [dbo].[DonHang] ([ID], [EmailNguoiDung], [IDKhoaHoc], [DonGia]) VALUES (1009, NULL, 6, 8000000)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[Feedback] ON 

INSERT [dbo].[Feedback] ([ID], [IDKhoaHoc], [HoTen], [DanhGia]) VALUES (3, 2, N'Nhat Lam', N'A very good course. They have a very structured way of teaching. I like that they slowly introduce the kandji with the hiragana on the whiteboard along the way, and that they have english subtitles with the Japanese speakers. ありがとうございます!')
INSERT [dbo].[Feedback] ([ID], [IDKhoaHoc], [HoTen], [DanhGia]) VALUES (9, 3, N'Super Idol', N'A very good course. I like that they slowly introduce the kandji with the hiragana on the whiteboard along the way, and that they have english subtitles with the Japanese speakers. ありがとうございます!')
INSERT [dbo].[Feedback] ([ID], [IDKhoaHoc], [HoTen], [DanhGia]) VALUES (10, 4, N'Xmen', N'Amazing! Tons of information. All lessons were conducted well. Videos and audios are high quality.')
INSERT [dbo].[Feedback] ([ID], [IDKhoaHoc], [HoTen], [DanhGia]) VALUES (11, 5, N'Adele', N'A very good course. woww!')
INSERT [dbo].[Feedback] ([ID], [IDKhoaHoc], [HoTen], [DanhGia]) VALUES (12, 6, N'Alex', N'Clab')
INSERT [dbo].[Feedback] ([ID], [IDKhoaHoc], [HoTen], [DanhGia]) VALUES (13, 2, N'Inner', N'Well palce')
INSERT [dbo].[Feedback] ([ID], [IDKhoaHoc], [HoTen], [DanhGia]) VALUES (1003, 6, N'No Name', N'I love that')
INSERT [dbo].[Feedback] ([ID], [IDKhoaHoc], [HoTen], [DanhGia]) VALUES (1004, 5, N'C Dang Iu', N'Huhu, So difficult 😥')
INSERT [dbo].[Feedback] ([ID], [IDKhoaHoc], [HoTen], [DanhGia]) VALUES (1005, 6, N'C Chum Chim', N'Yeahhhhhhhh. Finish!')
INSERT [dbo].[Feedback] ([ID], [IDKhoaHoc], [HoTen], [DanhGia]) VALUES (1006, 2, N'Chiêu', N'Hiiiii')
SET IDENTITY_INSERT [dbo].[Feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Khoahoc] ON 

INSERT [dbo].[Khoahoc] ([ID], [TenKhoaHoc], [IDCapDo], [DonGia]) VALUES (2, N'JLPT N5', 1, 3000000)
INSERT [dbo].[Khoahoc] ([ID], [TenKhoaHoc], [IDCapDo], [DonGia]) VALUES (3, N'JLPT N4', 2, 4500000)
INSERT [dbo].[Khoahoc] ([ID], [TenKhoaHoc], [IDCapDo], [DonGia]) VALUES (4, N'JLPT N3', 3, 6000000)
INSERT [dbo].[Khoahoc] ([ID], [TenKhoaHoc], [IDCapDo], [DonGia]) VALUES (5, N'JLPT N2', 4, 7000000)
INSERT [dbo].[Khoahoc] ([ID], [TenKhoaHoc], [IDCapDo], [DonGia]) VALUES (6, N'JLPT N1', 5, 8000000)
SET IDENTITY_INSERT [dbo].[Khoahoc] OFF
GO
INSERT [dbo].[NguoiDung] ([HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [Password]) VALUES (N'Nguyễn Lê Anh Minh', N'Nam', CAST(N'2022-05-14' AS Date), 946672181, N'admin@gmail.com', N'12345')
INSERT [dbo].[NguoiDung] ([HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [Password]) VALUES (N'Mai Thùy Chiêu', N'Nữ', CAST(N'2001-01-15' AS Date), 987654345, N'cdangiu@gmail.com', N'123456')
INSERT [dbo].[NguoiDung] ([HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [Password]) VALUES (N'Mai Thùy Chiêu', N'Nữ', CAST(N'2022-01-31' AS Date), 963779109, N'chieuthuymaijenny@gmail.com', N'Chieu@12345')
INSERT [dbo].[NguoiDung] ([HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [Password]) VALUES (N'Lê Kim Quốc Chung', N'Nam', CAST(N'2001-09-23' AS Date), 905310889, N'chung@gmail.com', N'123456')
INSERT [dbo].[NguoiDung] ([HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [Password]) VALUES (N'Đỗ Như Quỳnh', N'Nữ', CAST(N'2001-07-19' AS Date), 931547777, N'quynh@gmail.com', N'123456')
INSERT [dbo].[NguoiDung] ([HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [Password]) VALUES (N'Nguyễn Thanh Thảo', N'Nữ', CAST(N'2001-07-19' AS Date), 998845611, N'thao@gmail.com', N'123456')
INSERT [dbo].[NguoiDung] ([HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [Password]) VALUES (N'Nguyễn Hồ Anh Thư', N'Nữ', CAST(N'2001-07-30' AS Date), 899512300, N'thu@gmail.com', N'123456')
INSERT [dbo].[NguoiDung] ([HoTen], [GioiTinh], [NgaySinh], [SDT], [Email], [Password]) VALUES (N'Vũ Thị Việt Trinh', N'Nữ', CAST(N'2001-11-22' AS Date), 987654322, N'trinh@gmail.com', N'123456')
GO
SET IDENTITY_INSERT [dbo].[Video] ON 

INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1, 2, N'bFRNEAd7DVE', N'N5 lesson 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (5, 2, N'_RoCKtbZYu0', N'N5 kanji                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (6, 2, N'Frfy8wZH1_k', N'N5 vocabularies                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (7, 2, N'2k03zTHNWBA', N'N5 vacabularies lesson 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (8, 2, N'x9pixMubs8A', N'N5 hiragana katakana                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (9, 2, N'5lQnIXkKiAs', N'N5 minna lesson 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (10, 2, N'7NCnZOeGf7c', N'N5 minna lesson 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (11, 2, N'WcJCnWiPpUI', N'N5 minna lesson 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (12, 2, N'MUwCxZcExCQ', N'N5 minna lesson 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (13, 2, N'EsTHwd_WYso', N'N5 minna lesson 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1005, 3, N'zY4fJ6QUlA0', N'N4 grammar                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1006, 3, N'PxlMfW6kuwY', N'N4 grammar part 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1007, 3, N'D1sS8lXCp-w', N'N4 grammar part 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1008, 3, N'wbGEzjl1mF8', N'N4 reading                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1009, 3, N'eps0tAdhXVg', N'N4 test                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1010, 4, N'BAsZBhdpc5w', N'N3 Kanji lesson 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1011, 4, N'EdGgG-1gsws', N'N3 Kanji lesson 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1012, 4, N'ZpUMCGSaAn4', N'N3 kanji lesson 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1013, 4, N'Zw_PKB9Kdq4', N'N3 Kanji lesson 4                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1014, 4, N'9DepHfmfKK8', N'N3 Kanji lesson 5                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1015, 4, N'UlgXxlp30Ps', N'N3 Grammar lesson 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1016, 4, N'fl_85o-se8E', N'N3 Grammar lesson 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1017, 4, N'qHMmIp9tIjo', N'N3 Grammar lesson 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1018, 4, N'_Tmm3XBtXEs', N'N3 Listening lesson 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1019, 4, N'mnc9A4DcwIo', N'N3 Listening lesson 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1020, 4, N'smA56MoX6uA', N'N3 Listening lesson 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1021, 5, N'-wXXd5Apk8w', N'N2 Vocabularies                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1022, 5, N'FpANxu4mLiE&t', N'N2 Grammar                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1023, 5, N'w3q-5MBuAOo', N'N2 Kanji                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1024, 5, N'It7lEtUqy3g', N'N2 Listening                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1025, 5, N'ial5Xrzd8nY', N'N2 Grammar lesson 1                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1031, 5, N'VEYQpMaEiUs', N'N2 Grammar lesson 2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1032, 5, N'Y84D78BeWls', N'N2 Grammar lesson 3                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1033, 6, N'ajBubbtyCyQ', N'N1 Vocabularies                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1034, 6, N'fvXFJ7Kk0yE', N'N1 Reading                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1035, 6, N'nt3eHvJueRM', N'N1 Grammar                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1036, 6, N'uOZl_-MCT2A', N'N1 Kanji                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ')
INSERT [dbo].[Video] ([ID], [IDKhoaHoc], [IDYoutube], [Ten]) VALUES (1037, 6, N'T9ceGn5uaXI', N'N1 Test                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ')
SET IDENTITY_INSERT [dbo].[Video] OFF
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_Khoahoc] FOREIGN KEY([IDKhoaHoc])
REFERENCES [dbo].[Khoahoc] ([ID])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_Khoahoc]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_NguoiDung] FOREIGN KEY([EmailNguoiDung])
REFERENCES [dbo].[NguoiDung] ([Email])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_NguoiDung]
GO
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_Feedback_Khoahoc] FOREIGN KEY([IDKhoaHoc])
REFERENCES [dbo].[Khoahoc] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_Feedback_Khoahoc]
GO
ALTER TABLE [dbo].[Khoahoc]  WITH CHECK ADD  CONSTRAINT [FK_Khoahoc_CapDo] FOREIGN KEY([IDCapDo])
REFERENCES [dbo].[CapDo] ([ID])
GO
ALTER TABLE [dbo].[Khoahoc] CHECK CONSTRAINT [FK_Khoahoc_CapDo]
GO
ALTER TABLE [dbo].[Video]  WITH CHECK ADD  CONSTRAINT [FK_Video_Khoahoc] FOREIGN KEY([IDKhoaHoc])
REFERENCES [dbo].[Khoahoc] ([ID])
GO
ALTER TABLE [dbo].[Video] CHECK CONSTRAINT [FK_Video_Khoahoc]
GO
USE [master]
GO
ALTER DATABASE [KIPSO] SET  READ_WRITE 
GO
