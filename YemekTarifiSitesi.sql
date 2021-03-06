USE [master]
GO
/****** Object:  Database [Dbo_YemekTarif]    Script Date: 19.08.2021 21:29:26 ******/
CREATE DATABASE [Dbo_YemekTarif]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dbo_YemekTarif', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLDEVELOPER\MSSQL\DATA\Dbo_YemekTarif.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dbo_YemekTarif_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLDEVELOPER\MSSQL\DATA\Dbo_YemekTarif_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dbo_YemekTarif] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dbo_YemekTarif].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dbo_YemekTarif] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dbo_YemekTarif] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dbo_YemekTarif] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dbo_YemekTarif] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dbo_YemekTarif] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET RECOVERY FULL 
GO
ALTER DATABASE [Dbo_YemekTarif] SET  MULTI_USER 
GO
ALTER DATABASE [Dbo_YemekTarif] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dbo_YemekTarif] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dbo_YemekTarif] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dbo_YemekTarif] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dbo_YemekTarif] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dbo_YemekTarif] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Dbo_YemekTarif', N'ON'
GO
ALTER DATABASE [Dbo_YemekTarif] SET QUERY_STORE = OFF
GO
USE [Dbo_YemekTarif]
GO
/****** Object:  Table [dbo].[Tbl_GununYemegi]    Script Date: 19.08.2021 21:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_GununYemegi](
	[GununYemegiID] [smallint] IDENTITY(1,1) NOT NULL,
	[GununYemegiAd] [varchar](50) NULL,
	[GununYemegiMalzeme] [varchar](500) NULL,
	[GununYemegiTarif] [varchar](max) NULL,
	[GununYemegiResim] [varchar](500) NULL,
	[GununYemegiPuan] [tinyint] NULL,
	[GununYemegiTarih] [date] NULL,
 CONSTRAINT [PK_Tbl_GununYemegi] PRIMARY KEY CLUSTERED 
(
	[GununYemegiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Hakkimizda]    Script Date: 19.08.2021 21:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Hakkimizda](
	[Metin] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 19.08.2021 21:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[KategoriID] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL,
	[KategoriAdet] [smallint] NULL,
	[KategoriResim] [varchar](100) NULL,
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Mesajlar]    Script Date: 19.08.2021 21:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Mesajlar](
	[MesajID] [int] IDENTITY(1,1) NOT NULL,
	[MesajGonderen] [varchar](50) NULL,
	[MesajBaslik] [varchar](50) NULL,
	[MesajMail] [varchar](50) NULL,
	[MesajIcerik] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Tarifler]    Script Date: 19.08.2021 21:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Tarifler](
	[TarifID] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [varchar](50) NULL,
	[TarifMalzeme] [varchar](500) NULL,
	[TarifYapilis] [varchar](max) NULL,
	[TarifResim] [varchar](100) NULL,
	[TarifSahip] [varchar](50) NULL,
	[TarifSahipMail] [varchar](50) NULL,
	[TarifDurum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Tarifler] PRIMARY KEY CLUSTERED 
(
	[TarifID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yemekler]    Script Date: 19.08.2021 21:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yemekler](
	[YemekID] [int] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](500) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekResim] [varchar](100) NULL,
	[YemekTarih] [date] NULL,
	[YemekPuan] [float] NULL,
	[KategoriID] [smallint] NULL,
	[Durum] [bit] NULL,
 CONSTRAINT [PK_Tbl_Yemekler] PRIMARY KEY CLUSTERED 
(
	[YemekID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 19.08.2021 21:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[YoneticiID] [smallint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yonetici] PRIMARY KEY CLUSTERED 
(
	[YoneticiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Yorumlar]    Script Date: 19.08.2021 21:29:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Yorumlar](
	[YorumID] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdSoyad] [varchar](50) NULL,
	[yorumMail] [varchar](50) NULL,
	[YorumTarih] [date] NULL,
	[YorumOnay] [bit] NULL,
	[YorumIcerik] [varchar](500) NULL,
	[YemekID] [int] NULL,
 CONSTRAINT [PK_Tbl_Yorumlar] PRIMARY KEY CLUSTERED 
(
	[YorumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] ON 

INSERT [dbo].[Tbl_GununYemegi] ([GununYemegiID], [GununYemegiAd], [GununYemegiMalzeme], [GununYemegiTarif], [GununYemegiResim], [GununYemegiPuan], [GununYemegiTarih]) VALUES (1, N'Mücver Kizartma', N'3 adet yesil kabak, 1 demete yakin dereotu, 2 adet yesil sogan, 1 su bardagi un, 1 adet kabartma tozu, Tuz, Karabiber, Kirmizi Toz Biber, Nane, Kimyon', N'Kabaklari rendeleyip suyunu sikarak bir kaba alalim, diger bütün yesillikleri küçük küçük keserek ayni kaba koyuyoruz. Baska bir kapta yumurtalari çirpiyoruz üzerine unu ve kabartma tozunu ekliyoruz yesillikleri ekliyoruz güzelce plastik kasikla karistiriyoruz. Teflon tavada çiçek yagi kizdiriyoruz ve kasik yardimiyla tavaya koyup kizartiyoruz. AFIYET OLSUN', NULL, 7, CAST(N'2021-08-09' AS Date))
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] OFF
GO
INSERT [dbo].[Tbl_Hakkimizda] ([Metin]) VALUES (N'Hello, my name is Kizilaslan, I am a software developer.  I can write desktop application and console application in C#.
 It is an honor for me to be able to serve you.')
GO
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (1, N'Çorbalar', 2, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (2, N'Sebze Yemekleri', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (3, N'Et Yemekleri', 1, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (4, N'Makarna Çesitleri', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (5, N'Tavuk Yemekleri', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (6, N'Pastalar', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (7, N'Içecekler', 0, NULL)
INSERT [dbo].[Tbl_Kategoriler] ([KategoriID], [KategoriAd], [KategoriAdet], [KategoriResim]) VALUES (8, N'Tatlilar', 0, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] ON 

INSERT [dbo].[Tbl_Mesajlar] ([MesajID], [MesajGonderen], [MesajBaslik], [MesajMail], [MesajIcerik]) VALUES (1, N'Mehmet Aydin', N'Site', N'mhmtaydin@gmail.com', N'Çok güzel bir siteniz var')
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] ON 

INSERT [dbo].[Tbl_Tarifler] ([TarifID], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (1, N'Mercimek Çorbasi', N'mercimek, sebze', N'deneme tarif', N'Ar-elik-K-3300-Beyaz-Mini-Telve-T-rk-Kahve-Makinesi-T-rk-Kahvesi-Hediyeli.jpg_q50.jpg', N'Sarraf Bey', N'sarraf@gmail.com', 0)
INSERT [dbo].[Tbl_Tarifler] ([TarifID], [TarifAd], [TarifMalzeme], [TarifYapilis], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (6, N'sebzeli Kusbasi', N'yarim kilo et, tuz, sogan, ekmek içi, havuç, biber, patates', N'önce sebzeleri haslayin, sonra etleri ince ince dograyip sebzeyle karistirin.', N'wp2856658.jpg', N'Ayse Öztürk', N'ayseuzturk@gmail.com', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Tarifler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] ON 

INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriID], [Durum]) VALUES (1, N'Kuru Köfte', N'    500 gram dana kiyma
    1 su bardagi kuru ekmek
    2 adet sogan
    Yarim demet maydanoz
    1 çay kasigi Karabiber
    3 çay kasigi Kimyon
    1 çay kasigi cep sodasi (karbonat)
    3 çay kasigi Tuz', N'
    Soganlari rendeleyelim.
    Maydanozu ince kiyalim.
    Bir tepsiye alalim baharat ekmek.
    Kiymasi ve tuzunu ilave edelim.
    Güzelce yoguralim. Ne kadar yogurursak o kadar lezzetli köftelerimiz olur.Istedigimiz sekli verip vaktiniz varsa buzdolabinda dinlendirelim. Dinlenmis köfteler çok daha lezzetli olur bilginize.
    Sivi yagda kizartip sicak servis yapalim.
    Afiyet olsun.
', N'~/Resimler/Kuru Köfte.jpg', CAST(N'2021-08-13' AS Date), 9.5, 3, 1)
INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriID], [Durum]) VALUES (4, N'Ezogelin Çorbasi', N'1 tatli kasigi pirinç
    1 tatli kasigi bulgur
    2 çay kasigi pul biber
    1 yemek kasigi nane
    2 dis sarimsak
    1 orta boy sogan
    1 yemek kasigi biber salçasi
    1 yemek kasigi tereyagi
    2 litreye yakin sicak su
    Tuz	', N'Ezogelin çorbasi yapmak için düdüklü tencerede önce rendelemis oldugumuz sogani ve ezmis oldugumuz sarimsagi tereyaginda kavuruyoruz. Soganlar diriligini kaybetsin yeterli yakmadan orta ateste kavuralim.
    Soganlar kavrulunca naneyi, kirmizi biberi ve salçayi ilave edip. Kavurmaya devam edelim.
    Bir iki karistirdiktan sonra yikadigimiz mercimegi, pirinci, bulguru ve tuzunu da ilave ederek karistiralim.
    Baska bir tarafta kaynamakta olan 2 litreye yakin suyu üzerine bosaltalim.
    Düdüklünün kapagini ve düdügünü kapattiktan sonra 10 dakika pisiriyoruz. Normal tencerede de yapabilirsiniz ama biraz daha geç pisecektir (yaklasik 30-40 dakika sürecektir).', NULL, CAST(N'2021-08-16' AS Date), NULL, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriID], [Durum]) VALUES (5, N'Kabak Mücveri Tarifi', N'3 adet kabak
 Yarim su bardagi un
 2-3 dal yesil sogan
 Yarim demek maydanoz
 Bir tutam dereotu
 Tuz
 Karabiber
 Pul biber', NULL, NULL, CAST(N'2021-08-16' AS Date), NULL, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([YemekID], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [KategoriID], [Durum]) VALUES (6, N'sebzeli Kusbasi', N'yarim kilo et, tuz, sogan, ekmek içi, havuç, biber, patates', N'önce sebzeleri haslayin, sonra etleri ince ince dograyip sebzeyle karistirin.', NULL, CAST(N'2021-08-19' AS Date), NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] ON 

INSERT [dbo].[Tbl_Yorumlar] ([YorumID], [YorumAdSoyad], [yorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [YemekID]) VALUES (1, N'MahsunAk', N'AkMahsun@gmail.com', CAST(N'2021-08-13' AS Date), 1, N'Yemek Çok iyi olmus', 1)
INSERT [dbo].[Tbl_Yorumlar] ([YorumID], [YorumAdSoyad], [yorumMail], [YorumTarih], [YorumOnay], [YorumIcerik], [YemekID]) VALUES (2, N'Mehmet Aydin', N'mhmtaydin@gmail.com', CAST(N'2021-08-13' AS Date), 0, N'Yagini çok koymayin', 1)
SET IDENTITY_INSERT [dbo].[Tbl_Yorumlar] OFF
GO
ALTER TABLE [dbo].[Tbl_GununYemegi] ADD  CONSTRAINT [DF_Tbl_GununYemegi_GununYemegiTarih]  DEFAULT (getdate()) FOR [GununYemegiTarih]
GO
ALTER TABLE [dbo].[Tbl_Kategoriler] ADD  CONSTRAINT [DF_Tbl_Kategoriler_KategoriAdet]  DEFAULT ((0)) FOR [KategoriAdet]
GO
ALTER TABLE [dbo].[Tbl_Tarifler] ADD  CONSTRAINT [DF_Tbl_Tarifler_TarifDurum]  DEFAULT ((0)) FOR [TarifDurum]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_YemekTarih]  DEFAULT (getdate()) FOR [YemekTarih]
GO
ALTER TABLE [dbo].[Tbl_Yemekler] ADD  CONSTRAINT [DF_Tbl_Yemekler_Durum]  DEFAULT ((0)) FOR [Durum]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumTarih]  DEFAULT (getdate()) FOR [YorumTarih]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] ADD  CONSTRAINT [DF_Tbl_Yorumlar_YorumOnay]  DEFAULT ((0)) FOR [YorumOnay]
GO
ALTER TABLE [dbo].[Tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Tbl_Kategoriler] ([KategoriID])
GO
ALTER TABLE [dbo].[Tbl_Yemekler] CHECK CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Yorumlar]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler] FOREIGN KEY([YemekID])
REFERENCES [dbo].[Tbl_Yemekler] ([YemekID])
GO
ALTER TABLE [dbo].[Tbl_Yorumlar] CHECK CONSTRAINT [FK_Tbl_Yorumlar_Tbl_Yemekler]
GO
USE [master]
GO
ALTER DATABASE [Dbo_YemekTarif] SET  READ_WRITE 
GO
