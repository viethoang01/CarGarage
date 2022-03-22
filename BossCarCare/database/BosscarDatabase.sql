USE [master]
GO
/****** Object:  Database [ListCar]    Script Date: 03/22/2022 09:42:03 ******/
CREATE DATABASE [ListCar] ON  PRIMARY 
( NAME = N'ListCar', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ListCar.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ListCar_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\ListCar_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ListCar] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ListCar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ListCar] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [ListCar] SET ANSI_NULLS OFF
GO
ALTER DATABASE [ListCar] SET ANSI_PADDING OFF
GO
ALTER DATABASE [ListCar] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [ListCar] SET ARITHABORT OFF
GO
ALTER DATABASE [ListCar] SET AUTO_CLOSE ON
GO
ALTER DATABASE [ListCar] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [ListCar] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [ListCar] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [ListCar] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [ListCar] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [ListCar] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [ListCar] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [ListCar] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [ListCar] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [ListCar] SET  ENABLE_BROKER
GO
ALTER DATABASE [ListCar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [ListCar] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [ListCar] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [ListCar] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [ListCar] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [ListCar] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [ListCar] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [ListCar] SET  READ_WRITE
GO
ALTER DATABASE [ListCar] SET RECOVERY SIMPLE
GO
ALTER DATABASE [ListCar] SET  MULTI_USER
GO
ALTER DATABASE [ListCar] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [ListCar] SET DB_CHAINING OFF
GO
USE [ListCar]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 03/22/2022 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NOT NULL,
	[password] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 03/22/2022 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](150) NULL,
 CONSTRAINT [PK_cate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 03/22/2022 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookingInvoice]    Script Date: 03/22/2022 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cars]    Script Date: 03/22/2022 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CarRentalInvoice]    Script Date: 03/22/2022 09:42:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
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
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__Messages__time__3B75D760]    Script Date: 03/22/2022 09:42:05 ******/
ALTER TABLE [dbo].[Messages] ADD  DEFAULT (getdate()) FOR [time]
GO
/****** Object:  Default [DF__Messages__isread__3C69FB99]    Script Date: 03/22/2022 09:42:05 ******/
ALTER TABLE [dbo].[Messages] ADD  DEFAULT ((0)) FOR [isread]
GO
/****** Object:  Default [DF__BookingIn__date___300424B4]    Script Date: 03/22/2022 09:42:05 ******/
ALTER TABLE [dbo].[BookingInvoice] ADD  DEFAULT (getdate()) FOR [date_of_booking]
GO
/****** Object:  Default [DF__CarRental__date___286302EC]    Script Date: 03/22/2022 09:42:05 ******/
ALTER TABLE [dbo].[CarRentalInvoice] ADD  DEFAULT (getdate()) FOR [date_of_hire]
GO
/****** Object:  ForeignKey [FK__Messages__fromid__3D5E1FD2]    Script Date: 03/22/2022 09:42:05 ******/
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([fromid])
REFERENCES [dbo].[Account] ([id])
GO
/****** Object:  ForeignKey [FK__Messages__toid__3E52440B]    Script Date: 03/22/2022 09:42:05 ******/
ALTER TABLE [dbo].[Messages]  WITH CHECK ADD FOREIGN KEY([toid])
REFERENCES [dbo].[Account] ([id])
GO
/****** Object:  ForeignKey [fk_id_Acc_Booking]    Script Date: 03/22/2022 09:42:05 ******/
ALTER TABLE [dbo].[BookingInvoice]  WITH CHECK ADD  CONSTRAINT [fk_id_Acc_Booking] FOREIGN KEY([Accid])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[BookingInvoice] CHECK CONSTRAINT [fk_id_Acc_Booking]
GO
/****** Object:  ForeignKey [FK_Car]    Script Date: 03/22/2022 09:42:05 ******/
ALTER TABLE [dbo].[Cars]  WITH CHECK ADD  CONSTRAINT [FK_Car] FOREIGN KEY([categoryid])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Cars] CHECK CONSTRAINT [FK_Car]
GO
/****** Object:  ForeignKey [fk_car_Invoice]    Script Date: 03/22/2022 09:42:05 ******/
ALTER TABLE [dbo].[CarRentalInvoice]  WITH CHECK ADD  CONSTRAINT [fk_car_Invoice] FOREIGN KEY([carid])
REFERENCES [dbo].[Cars] ([id])
GO
ALTER TABLE [dbo].[CarRentalInvoice] CHECK CONSTRAINT [fk_car_Invoice]
GO
/****** Object:  ForeignKey [fk_id_Acc_Invoice]    Script Date: 03/22/2022 09:42:05 ******/
ALTER TABLE [dbo].[CarRentalInvoice]  WITH CHECK ADD  CONSTRAINT [fk_id_Acc_Invoice] FOREIGN KEY([Accid])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[CarRentalInvoice] CHECK CONSTRAINT [fk_id_Acc_Invoice]
GO
