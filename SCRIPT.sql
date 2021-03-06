USE [master]
GO
/****** Object:  Database [VlasnikDb]    Script Date: 16.5.2020. 12:16:32 ******/
CREATE DATABASE [VlasnikDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'VlasnikDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VlasnikDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'VlasnikDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\VlasnikDb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [VlasnikDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [VlasnikDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [VlasnikDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [VlasnikDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [VlasnikDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [VlasnikDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [VlasnikDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [VlasnikDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [VlasnikDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [VlasnikDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [VlasnikDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [VlasnikDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [VlasnikDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [VlasnikDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [VlasnikDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [VlasnikDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [VlasnikDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [VlasnikDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [VlasnikDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [VlasnikDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [VlasnikDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [VlasnikDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [VlasnikDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [VlasnikDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [VlasnikDb] SET RECOVERY FULL 
GO
ALTER DATABASE [VlasnikDb] SET  MULTI_USER 
GO
ALTER DATABASE [VlasnikDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [VlasnikDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [VlasnikDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [VlasnikDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [VlasnikDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'VlasnikDb', N'ON'
GO
ALTER DATABASE [VlasnikDb] SET QUERY_STORE = OFF
GO
USE [VlasnikDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 16.5.2020. 12:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vlasnik]    Script Date: 16.5.2020. 12:16:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vlasnik](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ime] [nvarchar](75) NOT NULL,
	[Prezime] [nvarchar](75) NOT NULL,
	[OIB] [nvarchar](11) NOT NULL,
	[Adresa] [nvarchar](100) NOT NULL,
	[Grad] [nvarchar](75) NOT NULL,
	[Parcele] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_Vlasnik] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200511075211_InitialCreate', N'3.1.3')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200512181138_AddedFurterValidation', N'3.1.3')
GO
SET IDENTITY_INSERT [dbo].[Vlasnik] ON 

INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (1, N'Pero', N'Perić', N'59160621988', N'Korzo 20', N'Rijeka', N'K.O. Srdoči: 10, 12/1')
INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (2, N'Mara', N'Marić', N'59190219854', N'Obala 100', N'Kraljevica', N'K.O. Kraljevica: 124')
INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (3, N'Stjepan', N'Holos', N'95205989900', N'Starci 17', N'Rijeka', N'K.O. Zamet: 11, 13, 14, 16/7')
INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (4, N'Anica', N'Klapić', N'59096910000', N'Bože Starca Jurićeva 17', N'Rijeka', N'nema')
INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (5, N'Lora', N'Lorić', N'09699633333', N'Stari Grad 7', N'Labin', N'K.O. Rabac: 1, 2, 3')
INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (6, N'Tina', N'Holos', N'72600036499', N'Obala 71', N'Kraljevica', N'K.O. Kraljevica: 100, 101/3')
INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (7, N'Ana', N'Holos', N'49106060941', N'Riva 12', N'Rijeka', N'K.O. Centar: 1')
INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (8, N'Ala', N'Balin', N'12345678910', N'Stari put 17', N'Baška', N'K.O. Baška: 24')
INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (9, N'Oliver', N'Kepp', N'57710650666', N'Nehajska 26', N'Senj', N'K.O. Gornji Stenjevec 46, 247/1')
INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (10, N'Tomislav', N'Tomac', N'72106335199', N'Stube 60', N'Bakar', N'K.O. Kraljevica: 11/1, K.O. Bakar: 136')
INSERT [dbo].[Vlasnik] ([Id], [Ime], [Prezime], [OIB], [Adresa], [Grad], [Parcele]) VALUES (11, N'Zrinka', N'Kraš', N'43197900141', N'Riva 171', N'Split', N'nema')
SET IDENTITY_INSERT [dbo].[Vlasnik] OFF
GO
USE [master]
GO
ALTER DATABASE [VlasnikDb] SET  READ_WRITE 
GO
