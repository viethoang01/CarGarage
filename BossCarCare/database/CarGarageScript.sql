USE [CarGarage]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/22/2022 16:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Account]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Account] ON
INSERT [dbo].[Account] ([id], [name], [password]) VALUES (1, N'hoangnvliu@gmail.com', N'cubi9xld123')
INSERT [dbo].[Account] ([id], [name], [password]) VALUES (44, N'031001liu@gmail.com', N'Cubi9xld123')
INSERT [dbo].[Account] ([id], [name], [password]) VALUES (45, N'Admin', N'Admin')
INSERT [dbo].[Account] ([id], [name], [password]) VALUES (46, N'hoangnvhe151236@fpt.edu.vn', N'cubi9xld123')
INSERT [dbo].[Account] ([id], [name], [password]) VALUES (47, N'hoangnvhe@fpt.edu.vn', N'Cubi9xld123')
INSERT [dbo].[Account] ([id], [name], [password]) VALUES (48, N'hoaiantran@gmail.com', N'Cubi9xld123')
INSERT [dbo].[Account] ([id], [name], [password]) VALUES (49, N'hoaiantran@gmail.com', N'Cubi9xld')
INSERT [dbo].[Account] ([id], [name], [password]) VALUES (50, N'hoaiantran@gmail.com', N'Cubi9xld123')
INSERT [dbo].[Account] ([id], [name], [password]) VALUES (51, N'hoaiantran001@gmail.com', N'Cubi9xld123')
INSERT [dbo].[Account] ([id], [name], [password]) VALUES (52, N'vietanh03@gmail.com', N'Cubi9xld123')
SET IDENTITY_INSERT [dbo].[Account] OFF
/****** Object:  Table [dbo].[Categories]    Script Date: 03/22/2022 16:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categories]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NULL,
 CONSTRAINT [PK_cate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([id], [name]) VALUES (1, N'Honda')
INSERT [dbo].[Categories] ([id], [name]) VALUES (2, N'Toyota')
INSERT [dbo].[Categories] ([id], [name]) VALUES (3, N'Mercedes-benz')
INSERT [dbo].[Categories] ([id], [name]) VALUES (4, N'Lexus')
INSERT [dbo].[Categories] ([id], [name]) VALUES (5, N'Ford')
INSERT [dbo].[Categories] ([id], [name]) VALUES (6, N'Hyundai')
INSERT [dbo].[Categories] ([id], [name]) VALUES (7, N'Porsche')
INSERT [dbo].[Categories] ([id], [name]) VALUES (8, N'KIA')
INSERT [dbo].[Categories] ([id], [name]) VALUES (9, N'Mazda')
INSERT [dbo].[Categories] ([id], [name]) VALUES (10, N'VinFast')
SET IDENTITY_INSERT [dbo].[Categories] OFF
/****** Object:  Table [dbo].[Messages]    Script Date: 03/22/2022 16:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Messages]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Messages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fromid] [int] NULL,
	[toid] [int] NULL,
	[content] [varchar](250) NULL,
	[time] [datetime] NULL,
	[isread] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Messages] ON
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (1, 1, 45, N'Toi can ho tro', CAST(0x0000AE5600F875C5 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (2, 45, 1, N'Boss Car xin chao ban', CAST(0x0000AE5600F8A375 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (3, 45, 1, N'Boss Car co the giup gi cho ban a', CAST(0x0000AE5600F8B5FF AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (4, 1, 45, N'VinFast VF7 con hang khong vay a', CAST(0x0000AE5600F8E6DF AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (5, 45, 1, N'Da con a', CAST(0x0000AE5600F8FBD1 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (6, 44, 45, N'Hom nay garage co mo cua khong vay a', CAST(0x0000AE5600FB0887 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (7, 45, 44, N'Thua a hom nay co a', CAST(0x0000AE5600FB2E9D AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (8, 44, 45, N'Vay hom nay toi se ghe garage luc 3h30 chieu', CAST(0x0000AE5600FB66A6 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (9, 1, 45, N'oke toi hieu roi', CAST(0x0000AE560145586C AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (10, 45, 1, N'da vang a', CAST(0x0000AE56014A8374 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (11, 44, 45, N'Mai toi co the ghe qua garage khong ?', CAST(0x0000AE5601747A29 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (12, 44, 45, N'Mai toi co the ghe qua garage khong ?', CAST(0x0000AE560174869F AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (13, 44, 45, N'alo', CAST(0x0000AE560174DB80 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (14, 1, 45, N'Mai toi co the ghe qua garage khong ?', CAST(0x0000AE5601757FD4 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (15, 1, 45, N'alo', CAST(0x0000AE5601758AB3 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (16, 44, 45, N'chuc mung ngay moi', CAST(0x0000AE570116851E AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (17, 46, 45, N'chuc mung ngay moi', CAST(0x0000AE57011BBC57 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (18, 46, 45, N'chuc mung ngay moi', CAST(0x0000AE57011DA18C AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (19, 46, 45, N'Mai toi co the ghe qua garage khong ?', CAST(0x0000AE57011F63CE AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (20, 45, 45, N'da duoc, hen gap lai quy khach ngay mai a', CAST(0x0000AE5701202606 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (21, 45, 45, N'da duoc, hen gap lai quy khach ngay mai a', CAST(0x0000AE570143CD97 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (23, 46, 45, N'giup toi voi a', CAST(0x0000AE570148EBA9 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (25, 45, 46, N'da vang, Boss Car co the giup gi cho quy khach khong a', CAST(0x0000AE5701529CF2 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (26, 45, 1, N'da duoc, hen gap lai quy khach ngay mai a', CAST(0x0000AE570153B228 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (27, 45, 44, N'da vang cam on quy khach', CAST(0x0000AE570155C8DE AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (28, 44, 45, N'Boss Car con con Lux 1.2 doi dau khong a', CAST(0x0000AE57015625A9 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (29, 45, 1, N'chuc quy khach buoi toi vui ve', CAST(0x0000AE570156DE36 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (30, 1, 45, N'Cam on Boss Car', CAST(0x0000AE57015715F9 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (31, 1, 45, N'Hello Duy', CAST(0x0000AE57015996BE AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (32, 45, 1, N'Vao Game', CAST(0x0000AE570159B5BB AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (33, 1, 45, N'da duoc, hen gap lai quy khach ngay mai a', CAST(0x0000AE5800C2D9A5 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (36, 48, 48, N'Mai toi co the ghe qua garage khong ?', CAST(0x0000AE58011BB2EB AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (37, 48, 48, N'Mai toi co the ghe qua garage khong ?', CAST(0x0000AE58011BBA3F AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (38, 48, 45, N'Mai toi co the ghe qua garage khong ?', CAST(0x0000AE58011E6C81 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (39, 45, 45, N'da duoc, hen gap lai quy khach ngay mai a', CAST(0x0000AE58011E9A5A AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (40, 52, 45, N'chuc mung ngay moi', CAST(0x0000AE580121B5BD AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (41, 45, 52, N'da vang, Boss Car co the giup gi cho quy khach khong a', CAST(0x0000AE580121CD53 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (42, 1, 45, N'alo', CAST(0x0000AE59009D521C AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (43, 1, 45, N'chuc mung ngay moi', CAST(0x0000AE5B00B12459 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (44, 45, 48, N'Da vang, hen gap lai quy khanh ngay mai', CAST(0x0000AE60008BBAE9 AS DateTime), 0)
INSERT [dbo].[Messages] ([id], [fromid], [toid], [content], [time], [isread]) VALUES (45, 45, 52, N'xin chÃ o quÃ½ khÃ¡ch', CAST(0x0000AE6000A5BDB1 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Messages] OFF
/****** Object:  Table [dbo].[BookingInvoice]    Script Date: 03/22/2022 16:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookingInvoice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BookingInvoice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Accid] [int] NULL,
	[namecustomer] [nvarchar](150) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[email] [varchar](150) NOT NULL,
	[date_of_booking] [date] NOT NULL,
	[date_maintenance] [date] NULL,
	[carname] [varchar](50) NULL,
	[km] [int] NULL,
	[bienso] [varchar](15) NULL,
	[dichvu] [varchar](150) NULL,
	[gio] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[BookingInvoice] ON
INSERT [dbo].[BookingInvoice] ([id], [Accid], [namecustomer], [phone], [email], [date_of_booking], [date_maintenance], [carname], [km], [bienso], [dichvu], [gio]) VALUES (2, 1, N'Hoai An Tran', N'0988903540', N'hoaiantran@gmail.com', CAST(0xAC430B00 AS Date), CAST(0xAF430B00 AS Date), N'CR-V', 100, N'18D101234', N'baoduong,', N'16:23')
INSERT [dbo].[BookingInvoice] ([id], [Accid], [namecustomer], [phone], [email], [date_of_booking], [date_maintenance], [carname], [km], [bienso], [dichvu], [gio]) VALUES (8, 1, N'Hoang Viet', N'0988903540', N'hoangnvliu@gmail.com', CAST(0xAD430B00 AS Date), CAST(0xAF430B00 AS Date), N'CR-V', 123, N'18D101234', N'baoduong,', N'17:35')
INSERT [dbo].[BookingInvoice] ([id], [Accid], [namecustomer], [phone], [email], [date_of_booking], [date_maintenance], [carname], [km], [bienso], [dichvu], [gio]) VALUES (9, 1, N'Luong Gia Bao', N'0988903540', N'hoangnvliu@gmail.com', CAST(0xAD430B00 AS Date), CAST(0xAF430B00 AS Date), N'CR-V', 123, N'18D101234', N'baoduong,', N'16:36')
INSERT [dbo].[BookingInvoice] ([id], [Accid], [namecustomer], [phone], [email], [date_of_booking], [date_maintenance], [carname], [km], [bienso], [dichvu], [gio]) VALUES (10, 1, N'Nguyen Viet Hoang', N'0988903540', N'hoangnvliu@gmail.com', CAST(0xAD430B00 AS Date), CAST(0xAF430B00 AS Date), N'VinFast VF7', 123, N'18D101234', N'baoduong,suachuachung', N'02:36')
INSERT [dbo].[BookingInvoice] ([id], [Accid], [namecustomer], [phone], [email], [date_of_booking], [date_maintenance], [carname], [km], [bienso], [dichvu], [gio]) VALUES (11, 1, N'Hoang Viet', N'1234567890', N'123@gmail.com', CAST(0xAD430B00 AS Date), CAST(0xB8430B00 AS Date), N'123', 123, N'123456789', N'baoduong', N'16:36')
INSERT [dbo].[BookingInvoice] ([id], [Accid], [namecustomer], [phone], [email], [date_of_booking], [date_maintenance], [carname], [km], [bienso], [dichvu], [gio]) VALUES (12, 1, N'Hoang Viet', N'0988903540', N'123@gmail.com', CAST(0xAD430B00 AS Date), CAST(0xB7430B00 AS Date), N'VinFast', 123, N'123456789', N'baoduong', N'15:40')
INSERT [dbo].[BookingInvoice] ([id], [Accid], [namecustomer], [phone], [email], [date_of_booking], [date_maintenance], [carname], [km], [bienso], [dichvu], [gio]) VALUES (13, 1, N'Hoai An ', N'0988903540', N'hoangnvliu@gmail.com', CAST(0xAD430B00 AS Date), CAST(0xB6430B00 AS Date), N'123', 123, N'123456789', N'baoduong,', N'15:42')
SET IDENTITY_INSERT [dbo].[BookingInvoice] OFF
/****** Object:  Table [dbo].[Cars]    Script Date: 03/22/2022 16:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cars]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cars](
	[name] [varchar](150) NULL,
	[info] [varchar](150) NULL,
	[img] [varchar](150) NULL,
	[price] [float] NULL,
	[current] [bit] NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
	[color] [varchar](50) NULL,
	[categoryid] [int] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cars] ON
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'I10', N'4 cho', N'images/image-removebg-preview (6).png', 400000, 0, 8, N'white7', 6)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'City', N'4 cho sendan', N'images/image-removebg-preview (7).png', 500000, 0, 9, N'red', 1)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'Rio', N'4 cho sendan', N'images/image-removebg-preview (8).png', 500000, 0, 10, N'blue', 8)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'K3', N'4 cho sendan', N'images/image-removebg-preview (9).png', 400000, 0, 11, N'red', 8)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'Mazda 3', N'4 cho sendan', N'images/image-removebg-preview (1).png', 400000, 0, 12, N'red', 9)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'Mazda 6', N'4 cho sendan', N'images/image-removebg-preview (10).png', 800000, 0, 13, N'black', 9)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'Civic', N'4 cho sendan', N'images/image-removebg-preview (2).png', 900000, 0, 14, N'red', 1)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'Rondo AT', N'7 cho', N'images/image-removebg-preview (3).png', 600000, 0, 15, N'white', 8)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'INNOVA', N'7 cho', N'images/image-removebg-preview (4).png', 800000, 0, 16, N'gray', 2)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'CR-V 1.5 ', N'sendan', N'images/image-removebg-preview.png', 800000, 0, 17, N'white', 1)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'VF7', N'sendan', N'images/vinfast-vf7_100822965_m-removebg.png', 1000000, 0, 18, N'white', 10)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'LUX SA2.0', N'SUV', N'images/image-removebg-preview (5).png', 1000000, 0, 19, N'white', 10)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'abc', N'4 cho', N'', 500000, 0, 20, N'white', NULL)
INSERT [dbo].[Cars] ([name], [info], [img], [price], [current], [id], [color], [categoryid]) VALUES (N'abc', N'4 cho', N'324751a7-20211119_072841-removebg-preview.png', 500000, 0, 21, N'white', NULL)
SET IDENTITY_INSERT [dbo].[Cars] OFF
/****** Object:  Table [dbo].[CarRentalInvoice]    Script Date: 03/22/2022 16:42:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CarRentalInvoice]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CarRentalInvoice](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[carid] [int] NOT NULL,
	[Accid] [int] NULL,
	[songaythue] [int] NULL,
	[donvi] [varchar](50) NULL,
	[namecustomer] [nvarchar](150) NOT NULL,
	[CMND] [varchar](150) NOT NULL,
	[phone] [varchar](50) NOT NULL,
	[email] [varchar](150) NOT NULL,
	[code_gioithieu] [varchar](150) NULL,
	[date_of_hire] [date] NOT NULL,
	[start_date_of_hire] [date] NOT NULL,
	[end_date_of_hire] [date] NOT NULL,
	[totalmoney] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CarRentalInvoice] ON
INSERT [dbo].[CarRentalInvoice] ([id], [carid], [Accid], [songaythue], [donvi], [namecustomer], [CMND], [phone], [email], [code_gioithieu], [date_of_hire], [start_date_of_hire], [end_date_of_hire], [totalmoney]) VALUES (9, 12, 46, 4, N'canhan', N'Bao Anh Nguyen', N'123456789123', N'0988903540', N'baoanhnguyen@gmail.com', N'', CAST(0xB3430B00 AS Date), CAST(0xB4430B00 AS Date), CAST(0xB8430B00 AS Date), 1600000.0000)
INSERT [dbo].[CarRentalInvoice] ([id], [carid], [Accid], [songaythue], [donvi], [namecustomer], [CMND], [phone], [email], [code_gioithieu], [date_of_hire], [start_date_of_hire], [end_date_of_hire], [totalmoney]) VALUES (10, 19, 52, 4, N'canhan', N'Viet Anh Tran', N'123456789123', N'0988903540', N'vietanh@gmail.com', N'ccccccsssss', CAST(0xB3430B00 AS Date), CAST(0xB5430B00 AS Date), CAST(0xB9430B00 AS Date), 4000000.0000)
INSERT [dbo].[CarRentalInvoice] ([id], [carid], [Accid], [songaythue], [donvi], [namecustomer], [CMND], [phone], [email], [code_gioithieu], [date_of_hire], [start_date_of_hire], [end_date_of_hire], [totalmoney]) VALUES (11, 10, 48, 4, N'canhan', N'Tran Hoai An', N'123456789123', N'0988903540', N'tranhoaian@gmail.com', N'd#123@123', CAST(0xB3430B00 AS Date), CAST(0xB4430B00 AS Date), CAST(0xB8430B00 AS Date), 2000000.0000)
SET IDENTITY_INSERT [dbo].[CarRentalInvoice] OFF
/****** Object:  Default [DF__BookingIn__date___300424B4]    Script Date: 03/22/2022 16:42:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__BookingIn__date___300424B4]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookingInvoice]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__BookingIn__date___300424B4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[BookingInvoice] ADD  DEFAULT (getdate()) FOR [date_of_booking]
END


End
GO
/****** Object:  Default [DF__CarRental__date___286302EC]    Script Date: 03/22/2022 16:42:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__CarRental__date___286302EC]') AND parent_object_id = OBJECT_ID(N'[dbo].[CarRentalInvoice]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__CarRental__date___286302EC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[CarRentalInvoice] ADD  DEFAULT (getdate()) FOR [date_of_hire]
END


End
GO
/****** Object:  Default [DF__Messages__time__3B75D760]    Script Date: 03/22/2022 16:42:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Messages__time__3B75D760]') AND parent_object_id = OBJECT_ID(N'[dbo].[Messages]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Messages__time__3B75D760]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Messages] ADD  DEFAULT (getdate()) FOR [time]
END


End
GO
/****** Object:  Default [DF__Messages__isread__3C69FB99]    Script Date: 03/22/2022 16:42:50 ******/
IF Not EXISTS (SELECT * FROM sys.default_constraints WHERE object_id = OBJECT_ID(N'[dbo].[DF__Messages__isread__3C69FB99]') AND parent_object_id = OBJECT_ID(N'[dbo].[Messages]'))
Begin
IF NOT EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF__Messages__isread__3C69FB99]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Messages] ADD  DEFAULT ((0)) FOR [isread]
END


End
GO
/****** Object:  ForeignKey [fk_id_Acc_Booking]    Script Date: 03/22/2022 16:42:50 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_id_Acc_Booking]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookingInvoice]'))
ALTER TABLE [dbo].[BookingInvoice]  WITH CHECK ADD  CONSTRAINT [fk_id_Acc_Booking] FOREIGN KEY([Accid])
REFERENCES [dbo].[Account] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_id_Acc_Booking]') AND parent_object_id = OBJECT_ID(N'[dbo].[BookingInvoice]'))
ALTER TABLE [dbo].[BookingInvoice] CHECK CONSTRAINT [fk_id_Acc_Booking]
GO
/****** Object:  ForeignKey [fk_car_Invoice]    Script Date: 03/22/2022 16:42:50 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_car_Invoice]') AND parent_object_id = OBJECT_ID(N'[dbo].[CarRentalInvoice]'))
ALTER TABLE [dbo].[CarRentalInvoice]  WITH CHECK ADD  CONSTRAINT [fk_car_Invoice] FOREIGN KEY([carid])
REFERENCES [dbo].[Cars] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_car_Invoice]') AND parent_object_id = OBJECT_ID(N'[dbo].[CarRentalInvoice]'))
ALTER TABLE [dbo].[CarRentalInvoice] CHECK CONSTRAINT [fk_car_Invoice]
GO
/****** Object:  ForeignKey [fk_id_Acc_Invoice]    Script Date: 03/22/2022 16:42:50 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_id_Acc_Invoice]') AND parent_object_id = OBJECT_ID(N'[dbo].[CarRentalInvoice]'))
ALTER TABLE [dbo].[CarRentalInvoice]  WITH CHECK ADD  CONSTRAINT [fk_id_Acc_Invoice] FOREIGN KEY([Accid])
REFERENCES [dbo].[Account] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_id_Acc_Invoice]') AND parent_object_id = OBJECT_ID(N'[dbo].[CarRentalInvoice]'))
ALTER TABLE [dbo].[CarRentalInvoice] CHECK CONSTRAINT [fk_id_Acc_Invoice]
GO
/****** Object:  ForeignKey [FK_Car]    Script Date: 03/22/2022 16:42:50 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Car]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cars]'))
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Car] FOREIGN KEY([categoryid])
REFERENCES [dbo].[Categories] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Car]') AND parent_object_id = OBJECT_ID(N'[dbo].[Cars]'))
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Car]
GO
/****** Object:  ForeignKey [FK__Messages__fromid__3D5E1FD2]    Script Date: 03/22/2022 16:42:50 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Messages__fromid__3D5E1FD2]') AND parent_object_id = OBJECT_ID(N'[dbo].[Messages]'))
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([fromid])
REFERENCES [dbo].[Account] ([id])
GO
/****** Object:  ForeignKey [FK__Messages__toid__3E52440B]    Script Date: 03/22/2022 16:42:50 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK__Messages__toid__3E52440B]') AND parent_object_id = OBJECT_ID(N'[dbo].[Messages]'))
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([toid])
REFERENCES [dbo].[Account] ([id])
GO
