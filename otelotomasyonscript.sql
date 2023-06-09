USE [master]
GO
/****** Object:  Database [OtelOtomasyonu]    Script Date: 9.05.2023 21:30:52 ******/
CREATE DATABASE [OtelOtomasyonu]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'OtelOtomsyonu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OtelOtomsyonu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'OtelOtomsyonu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\OtelOtomsyonu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [OtelOtomasyonu] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [OtelOtomasyonu].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [OtelOtomasyonu] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET ARITHABORT OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [OtelOtomasyonu] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [OtelOtomasyonu] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET  DISABLE_BROKER 
GO
ALTER DATABASE [OtelOtomasyonu] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [OtelOtomasyonu] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [OtelOtomasyonu] SET  MULTI_USER 
GO
ALTER DATABASE [OtelOtomasyonu] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [OtelOtomasyonu] SET DB_CHAINING OFF 
GO
ALTER DATABASE [OtelOtomasyonu] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [OtelOtomasyonu] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [OtelOtomasyonu] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [OtelOtomasyonu] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [OtelOtomasyonu] SET QUERY_STORE = OFF
GO
USE [OtelOtomasyonu]
GO
/****** Object:  User [ua]    Script Date: 9.05.2023 21:30:52 ******/
CREATE USER [ua] FOR LOGIN [ua] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Hizmetler]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hizmetler](
	[HizmetId] [int] NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Hizmetler] PRIMARY KEY CLUSTERED 
(
	[HizmetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kampanyalar]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kampanyalar](
	[KampanyaId] [int] NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Kampanyalar] PRIMARY KEY CLUSTERED 
(
	[KampanyaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kasa]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kasa](
	[KasaId] [int] NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](50) NULL,
	[Aktif] [bit] NULL,
 CONSTRAINT [PK_Kasa] PRIMARY KEY CLUSTERED 
(
	[KasaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[KategoriId] [int] NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Tanim] [nvarchar](500) NULL,
	[Resim] [image] NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriId] [int] NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Sehir] [nvarchar](50) NULL,
	[Ulke] [nvarchar](50) NULL,
	[PostaKodu] [nvarchar](50) NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[MusteriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odalar]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odalar](
	[OdaId] [int] NOT NULL,
	[OdaTurID] [int] NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](50) NULL,
	[Aktif] [nvarchar](50) NULL,
 CONSTRAINT [PK_Odalar] PRIMARY KEY CLUSTERED 
(
	[OdaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdaOzellikleri]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdaOzellikleri](
	[OdaId] [int] NOT NULL,
	[OzelliklerId] [int] NOT NULL,
	[Deger] [nvarchar](50) NULL,
 CONSTRAINT [PK_OdaOzellikleri] PRIMARY KEY CLUSTERED 
(
	[OdaId] ASC,
	[OzelliklerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OdaTurleri]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OdaTurleri](
	[OdaTurleriId] [int] NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](50) NULL,
	[Aktif] [nvarchar](50) NULL,
 CONSTRAINT [PK_OdaTurleri] PRIMARY KEY CLUSTERED 
(
	[OdaTurleriId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ozellikler]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ozellikler](
	[OzelliklerId] [int] NOT NULL,
	[Adi] [nvarchar](50) NULL,
	[Aciklama] [nvarchar](50) NULL,
	[Aktif] [nvarchar](50) NULL,
 CONSTRAINT [PK_Ozellikler] PRIMARY KEY CLUSTERED 
(
	[OzelliklerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[PersonelId] [int] NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
	[Unvan] [nvarchar](50) NULL,
	[İseBaslamaTarihi] [datetime] NULL,
	[DogumTarihi] [datetime] NULL,
	[TcNo] [nvarchar](11) NULL,
	[TelNo] [nvarchar](50) NULL,
	[Sehir] [nvarchar](50) NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rezervasyonİslemleri]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rezervasyonİslemleri](
	[İslemId] [int] NOT NULL,
	[Ad] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rezervasyonİslemleri] PRIMARY KEY CLUSTERED 
(
	[İslemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SatisDetay]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SatisDetay](
	[SatisId] [int] NOT NULL,
	[PersonelId] [int] NOT NULL,
	[KasaId] [int] NOT NULL,
	[BirimFiyat] [int] NULL,
	[İndirim] [int] NULL,
	[Miktar] [int] NULL,
 CONSTRAINT [PK_SatisDetay] PRIMARY KEY CLUSTERED 
(
	[SatisId] ASC,
	[PersonelId] ASC,
	[KasaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Satislar]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Satislar](
	[SatisId] [int] NOT NULL,
	[SatisTarihi] [nvarchar](50) NULL,
	[PersonelId] [int] NULL,
	[MusteriId] [int] NULL,
	[Bolge] [nvarchar](50) NULL,
	[UrunId] [int] NULL,
 CONSTRAINT [PK_Satislar] PRIMARY KEY CLUSTERED 
(
	[SatisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikciler]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikciler](
	[TedarikciId] [int] NOT NULL,
	[SirketAdi] [nvarchar](50) NULL,
	[SirketNo] [nvarchar](50) NULL,
	[Ulke] [nvarchar](50) NULL,
	[Bolge] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tedarikciler] PRIMARY KEY CLUSTERED 
(
	[TedarikciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 9.05.2023 21:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunId] [int] NOT NULL,
	[TedarikciId] [int] NULL,
	[Adi] [nvarchar](50) NULL,
	[Fiyati] [int] NULL,
	[KategoriId] [int] NULL,
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[UrunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Odalar]  WITH CHECK ADD  CONSTRAINT [FK_Odalar_OdaTurleri] FOREIGN KEY([OdaTurID])
REFERENCES [dbo].[OdaTurleri] ([OdaTurleriId])
GO
ALTER TABLE [dbo].[Odalar] CHECK CONSTRAINT [FK_Odalar_OdaTurleri]
GO
ALTER TABLE [dbo].[OdaOzellikleri]  WITH CHECK ADD  CONSTRAINT [FK_OdaOzellikleri_Odalar] FOREIGN KEY([OdaId])
REFERENCES [dbo].[Odalar] ([OdaId])
GO
ALTER TABLE [dbo].[OdaOzellikleri] CHECK CONSTRAINT [FK_OdaOzellikleri_Odalar]
GO
ALTER TABLE [dbo].[OdaOzellikleri]  WITH CHECK ADD  CONSTRAINT [FK_OdaOzellikleri_Ozellikler] FOREIGN KEY([OzelliklerId])
REFERENCES [dbo].[Ozellikler] ([OzelliklerId])
GO
ALTER TABLE [dbo].[OdaOzellikleri] CHECK CONSTRAINT [FK_OdaOzellikleri_Ozellikler]
GO
ALTER TABLE [dbo].[SatisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatisDetay_Kasa] FOREIGN KEY([KasaId])
REFERENCES [dbo].[Kasa] ([KasaId])
GO
ALTER TABLE [dbo].[SatisDetay] CHECK CONSTRAINT [FK_SatisDetay_Kasa]
GO
ALTER TABLE [dbo].[SatisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatisDetay_Personeller] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[Personeller] ([PersonelId])
GO
ALTER TABLE [dbo].[SatisDetay] CHECK CONSTRAINT [FK_SatisDetay_Personeller]
GO
ALTER TABLE [dbo].[SatisDetay]  WITH CHECK ADD  CONSTRAINT [FK_SatisDetay_Satislar] FOREIGN KEY([SatisId])
REFERENCES [dbo].[Satislar] ([SatisId])
GO
ALTER TABLE [dbo].[SatisDetay] CHECK CONSTRAINT [FK_SatisDetay_Satislar]
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Musteriler] FOREIGN KEY([MusteriId])
REFERENCES [dbo].[Musteriler] ([MusteriId])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Musteriler]
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Personeller] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[Personeller] ([PersonelId])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Personeller]
GO
ALTER TABLE [dbo].[Satislar]  WITH CHECK ADD  CONSTRAINT [FK_Satislar_Urunler] FOREIGN KEY([UrunId])
REFERENCES [dbo].[Urunler] ([UrunId])
GO
ALTER TABLE [dbo].[Satislar] CHECK CONSTRAINT [FK_Satislar_Urunler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Kategoriler] FOREIGN KEY([KategoriId])
REFERENCES [dbo].[Kategoriler] ([KategoriId])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Kategoriler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_Urunler_Tedarikciler] FOREIGN KEY([TedarikciId])
REFERENCES [dbo].[Tedarikciler] ([TedarikciId])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_Urunler_Tedarikciler]
GO
USE [master]
GO
ALTER DATABASE [OtelOtomasyonu] SET  READ_WRITE 
GO
