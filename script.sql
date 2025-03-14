USE [master]
GO
/****** Object:  Database [PartnerBD]    Script Date: 11.03.2025 16:12:16 ******/
CREATE DATABASE [PartnerBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PartnerBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PartnerBD.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PartnerBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PartnerBD_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PartnerBD] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PartnerBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PartnerBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PartnerBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PartnerBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PartnerBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PartnerBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [PartnerBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PartnerBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PartnerBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PartnerBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PartnerBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PartnerBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PartnerBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PartnerBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PartnerBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PartnerBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PartnerBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PartnerBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PartnerBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PartnerBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PartnerBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PartnerBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PartnerBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PartnerBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PartnerBD] SET  MULTI_USER 
GO
ALTER DATABASE [PartnerBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PartnerBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PartnerBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PartnerBD] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PartnerBD] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PartnerBD] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PartnerBD] SET QUERY_STORE = OFF
GO
USE [PartnerBD]
GO
/****** Object:  Table [dbo].[Area]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Area] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Directors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Index]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Index](
	[ID] [int] NOT NULL,
	[NumIndex] [int] NOT NULL,
 CONSTRAINT [PK_Index] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material_Type]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material_Type](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProcentBraka] [decimal](19, 2) NOT NULL,
 CONSTRAINT [PK_Material_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partner_Product]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partner_Product](
	[ID] [int] NOT NULL,
	[IDProduct] [int] NOT NULL,
	[IDPartner] [int] NOT NULL,
	[ProductCount] [int] NOT NULL,
	[SaleDate] [date] NOT NULL,
 CONSTRAINT [PK_Partner_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[ID] [int] NOT NULL,
	[IDPartnerType] [int] NOT NULL,
	[PartnerName] [nvarchar](50) NOT NULL,
	[IDDirector] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[PhoneNumber] [nvarchar](50) NOT NULL,
	[IDIndex] [int] NOT NULL,
	[IDArea] [int] NOT NULL,
	[IDCity] [int] NOT NULL,
	[IDStreet] [int] NOT NULL,
	[HouseNum] [int] NOT NULL,
	[INN] [nvarchar](50) NOT NULL,
	[Rating] [int] NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[ID] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL,
	[IDProductType] [int] NOT NULL,
	[ProductName] [nvarchar](100) NOT NULL,
	[Articl] [nvarchar](50) NOT NULL,
	[MinPriceForPartner] [decimal](19, 2) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[ID] [int] NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[ProductTypeKoeff] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 11.03.2025 16:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Area] ([ID], [Name]) VALUES (1, N'Архангельская')
INSERT [dbo].[Area] ([ID], [Name]) VALUES (2, N'Белгородская')
INSERT [dbo].[Area] ([ID], [Name]) VALUES (3, N'Кемеровская')
INSERT [dbo].[Area] ([ID], [Name]) VALUES (4, N'Ленинградская')
INSERT [dbo].[Area] ([ID], [Name]) VALUES (5, N'Московская')
GO
INSERT [dbo].[City] ([ID], [Name]) VALUES (1, N'Приморск')
INSERT [dbo].[City] ([ID], [Name]) VALUES (2, N'Реутов')
INSERT [dbo].[City] ([ID], [Name]) VALUES (3, N'Северодвинск')
INSERT [dbo].[City] ([ID], [Name]) VALUES (4, N'Старый Оскол')
INSERT [dbo].[City] ([ID], [Name]) VALUES (5, N'Юрга')
GO
INSERT [dbo].[Directors] ([ID], [Name], [Login], [Password]) VALUES (1, N'Воробьева Екатерина Валерьевна', N'qq', N'qq12')
INSERT [dbo].[Directors] ([ID], [Name], [Login], [Password]) VALUES (2, N'Иванова Александра Ивановна', N'hh', N'hh12')
INSERT [dbo].[Directors] ([ID], [Name], [Login], [Password]) VALUES (3, N'Петров Василий Петрович', N'rr', N'rr12')
INSERT [dbo].[Directors] ([ID], [Name], [Login], [Password]) VALUES (4, N'Соловьев Андрей Николаевич', N'yy', N'yy12')
INSERT [dbo].[Directors] ([ID], [Name], [Login], [Password]) VALUES (5, N'Степанов Степан Сергеевич', N'xx', N'xx12')
GO
INSERT [dbo].[Index] ([ID], [NumIndex]) VALUES (1, 143960)
INSERT [dbo].[Index] ([ID], [NumIndex]) VALUES (2, 164500)
INSERT [dbo].[Index] ([ID], [NumIndex]) VALUES (3, 188910)
INSERT [dbo].[Index] ([ID], [NumIndex]) VALUES (4, 309500)
INSERT [dbo].[Index] ([ID], [NumIndex]) VALUES (5, 652050)
GO
INSERT [dbo].[Material_Type] ([ID], [Name], [ProcentBraka]) VALUES (1, N'Тип материала 1', CAST(0.10 AS Decimal(19, 2)))
INSERT [dbo].[Material_Type] ([ID], [Name], [ProcentBraka]) VALUES (2, N'Тип материала 2', CAST(0.95 AS Decimal(19, 2)))
INSERT [dbo].[Material_Type] ([ID], [Name], [ProcentBraka]) VALUES (3, N'Тип материала 3', CAST(0.28 AS Decimal(19, 2)))
INSERT [dbo].[Material_Type] ([ID], [Name], [ProcentBraka]) VALUES (4, N'Тип материала 4', CAST(0.55 AS Decimal(19, 2)))
INSERT [dbo].[Material_Type] ([ID], [Name], [ProcentBraka]) VALUES (5, N'Тип материала 5', CAST(0.34 AS Decimal(19, 2)))
GO
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[Partner_Product] ([ID], [IDProduct], [IDPartner], [ProductCount], [SaleDate]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
GO
INSERT [dbo].[Partners] ([ID], [IDPartnerType], [PartnerName], [IDDirector], [Email], [PhoneNumber], [IDIndex], [IDArea], [IDCity], [IDStreet], [HouseNum], [INN], [Rating]) VALUES (1, 1, N'База Строитель', 2, N'aleksandraivanova@ml.ru', N'+7(493) 123 45 67', 5, 3, 5, 1, 15, N'2222455179', 7)
INSERT [dbo].[Partners] ([ID], [IDPartnerType], [PartnerName], [IDDirector], [Email], [PhoneNumber], [IDIndex], [IDArea], [IDCity], [IDStreet], [HouseNum], [INN], [Rating]) VALUES (2, 1, N'МонтажПро', 5, N'stepanov@stepan.ru', N'+7(912) 888 33 33', 4, 2, 4, 3, 122, N'5552431140', 10)
INSERT [dbo].[Partners] ([ID], [IDPartnerType], [PartnerName], [IDDirector], [Email], [PhoneNumber], [IDIndex], [IDArea], [IDCity], [IDStreet], [HouseNum], [INN], [Rating]) VALUES (3, 3, N'Паркет 29', 3, N'vppetrov@vl.ru', N'+7(987) 123 56 78', 2, 1, 3, 5, 18, N'3333888520', 7)
INSERT [dbo].[Partners] ([ID], [IDPartnerType], [PartnerName], [IDDirector], [Email], [PhoneNumber], [IDIndex], [IDArea], [IDCity], [IDStreet], [HouseNum], [INN], [Rating]) VALUES (4, 2, N'Ремонт и отделка', 1, N'ekaterina.vorobeva@ml.ru', N'+7(444) 222 33 11', 1, 5, 2, 4, 51, N'1111520857', 5)
INSERT [dbo].[Partners] ([ID], [IDPartnerType], [PartnerName], [IDDirector], [Email], [PhoneNumber], [IDIndex], [IDArea], [IDCity], [IDStreet], [HouseNum], [INN], [Rating]) VALUES (5, 4, N'Стройсервис', 4, N'ansolovev@st.ru', N'+7(812) 223 32 00', 3, 4, 1, 2, 21, N'4440391035', 7)
GO
INSERT [dbo].[PartnerType] ([ID], [Type]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([ID], [Type]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([ID], [Type]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerType] ([ID], [Type]) VALUES (4, N'ПАО')
GO
INSERT [dbo].[Product] ([ID], [IDProductType], [ProductName], [Articl], [MinPriceForPartner]) VALUES (1, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', N'8858958', CAST(7330.99 AS Decimal(19, 2)))
INSERT [dbo].[Product] ([ID], [IDProductType], [ProductName], [Articl], [MinPriceForPartner]) VALUES (2, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', N'7750282', CAST(1799.33 AS Decimal(19, 2)))
INSERT [dbo].[Product] ([ID], [IDProductType], [ProductName], [Articl], [MinPriceForPartner]) VALUES (3, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', N'7028748', CAST(3890.41 AS Decimal(19, 2)))
INSERT [dbo].[Product] ([ID], [IDProductType], [ProductName], [Articl], [MinPriceForPartner]) VALUES (4, 3, N'Паркетная доска Ясень темный однополосная 14 мм', N'8758385', CAST(4456.90 AS Decimal(19, 2)))
INSERT [dbo].[Product] ([ID], [IDProductType], [ProductName], [Articl], [MinPriceForPartner]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', N'5012543', CAST(5450.59 AS Decimal(19, 2)))
GO
INSERT [dbo].[ProductType] ([ID], [Type], [ProductTypeKoeff]) VALUES (1, N'Ламинат', CAST(2.35 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ID], [Type], [ProductTypeKoeff]) VALUES (2, N'Массивная доска', CAST(5.15 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ID], [Type], [ProductTypeKoeff]) VALUES (3, N'Паркетная доска', CAST(4.34 AS Decimal(18, 2)))
INSERT [dbo].[ProductType] ([ID], [Type], [ProductTypeKoeff]) VALUES (4, N'Пробковое покрытие', CAST(1.50 AS Decimal(18, 2)))
GO
INSERT [dbo].[Street] ([ID], [Name]) VALUES (1, N'Лесная')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (2, N'Парковая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (3, N'Рабочая')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (4, N'Свободы')
INSERT [dbo].[Street] ([ID], [Name]) VALUES (5, N'Строителей')
GO
ALTER TABLE [dbo].[Partner_Product]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Product_Partners] FOREIGN KEY([IDPartner])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[Partner_Product] CHECK CONSTRAINT [FK_Partner_Product_Partners]
GO
ALTER TABLE [dbo].[Partner_Product]  WITH CHECK ADD  CONSTRAINT [FK_Partner_Product_Product] FOREIGN KEY([IDProduct])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[Partner_Product] CHECK CONSTRAINT [FK_Partner_Product_Product]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Area] FOREIGN KEY([IDArea])
REFERENCES [dbo].[Area] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Area]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_City] FOREIGN KEY([IDCity])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_City]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Directors] FOREIGN KEY([IDDirector])
REFERENCES [dbo].[Directors] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Directors]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Index] FOREIGN KEY([IDIndex])
REFERENCES [dbo].[Index] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Index]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerType] FOREIGN KEY([IDPartnerType])
REFERENCES [dbo].[PartnerType] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerType]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Street] FOREIGN KEY([IDStreet])
REFERENCES [dbo].[Street] ([ID])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Street]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductType] FOREIGN KEY([IDProductType])
REFERENCES [dbo].[ProductType] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductType]
GO
USE [master]
GO
ALTER DATABASE [PartnerBD] SET  READ_WRITE 
GO
