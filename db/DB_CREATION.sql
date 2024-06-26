USE [sena]
GO
ALTER TABLE [dbo].[USUARIOS] DROP CONSTRAINT [FK__USUARIOS__rol_us__6C190EBB]
GO
ALTER TABLE [dbo].[PRODUCTOS_VENDIDOS] DROP CONSTRAINT [FK__PRODUCTOS__id_ve__6754599E]
GO
ALTER TABLE [dbo].[PRODUCTOS_VENDIDOS] DROP CONSTRAINT [FK__PRODUCTOS__id_pr__68487DD7]
GO
ALTER TABLE [dbo].[PRODUCTOS_VENDIDOS] DROP CONSTRAINT [FK__PRODUCTOS__id_de__693CA210]
GO
ALTER TABLE [dbo].[PRODUCTOS_CARRITO] DROP CONSTRAINT [FK__PRODUCTOS__id_pr__72C60C4A]
GO
ALTER TABLE [dbo].[PRODUCTOS_CARRITO] DROP CONSTRAINT [FK__PRODUCTOS__id_ca__71D1E811]
GO
ALTER TABLE [dbo].[INVENTARIO] DROP CONSTRAINT [FK__INVENTARI__id_pr__628FA481]
GO
ALTER TABLE [dbo].[CARRITO] DROP CONSTRAINT [FK__CARRITO__id_usua__6EF57B66]
GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 8/05/2024 4:15:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENTA]') AND type in (N'U'))
DROP TABLE [dbo].[VENTA]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 8/05/2024 4:15:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[USUARIOS]') AND type in (N'U'))
DROP TABLE [dbo].[USUARIOS]
GO
/****** Object:  Table [dbo].[ROLES]    Script Date: 8/05/2024 4:15:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ROLES]') AND type in (N'U'))
DROP TABLE [dbo].[ROLES]
GO
/****** Object:  Table [dbo].[PRODUCTOS_VENDIDOS]    Script Date: 8/05/2024 4:15:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCTOS_VENDIDOS]') AND type in (N'U'))
DROP TABLE [dbo].[PRODUCTOS_VENDIDOS]
GO
/****** Object:  Table [dbo].[PRODUCTOS_CARRITO]    Script Date: 8/05/2024 4:15:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCTOS_CARRITO]') AND type in (N'U'))
DROP TABLE [dbo].[PRODUCTOS_CARRITO]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 8/05/2024 4:15:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PRODUCTOS]') AND type in (N'U'))
DROP TABLE [dbo].[PRODUCTOS]
GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 8/05/2024 4:15:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INVENTARIO]') AND type in (N'U'))
DROP TABLE [dbo].[INVENTARIO]
GO
/****** Object:  Table [dbo].[DESCUENTOS]    Script Date: 8/05/2024 4:15:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DESCUENTOS]') AND type in (N'U'))
DROP TABLE [dbo].[DESCUENTOS]
GO
/****** Object:  Table [dbo].[CARRITO]    Script Date: 8/05/2024 4:15:09 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CARRITO]') AND type in (N'U'))
DROP TABLE [dbo].[CARRITO]
GO
USE [master]
GO
/****** Object:  Database [sena]    Script Date: 8/05/2024 4:15:09 p. m. ******/
DROP DATABASE [sena]
GO
/****** Object:  Database [sena]    Script Date: 8/05/2024 4:15:09 p. m. ******/
CREATE DATABASE [sena]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sena', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\sena.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'sena_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\sena_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [sena] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sena].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sena] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sena] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sena] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sena] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sena] SET ARITHABORT OFF 
GO
ALTER DATABASE [sena] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sena] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sena] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sena] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sena] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sena] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sena] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sena] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sena] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sena] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sena] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sena] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sena] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sena] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sena] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sena] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sena] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sena] SET RECOVERY FULL 
GO
ALTER DATABASE [sena] SET  MULTI_USER 
GO
ALTER DATABASE [sena] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sena] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sena] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sena] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [sena] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [sena] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'sena', N'ON'
GO
ALTER DATABASE [sena] SET QUERY_STORE = ON
GO
ALTER DATABASE [sena] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [sena]
GO
/****** Object:  Table [dbo].[CARRITO]    Script Date: 8/05/2024 4:15:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CARRITO](
	[id_carrito] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_carrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DESCUENTOS]    Script Date: 8/05/2024 4:15:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESCUENTOS](
	[id_descuento] [int] IDENTITY(1,1) NOT NULL,
	[desc_descuento] [nvarchar](max) NULL,
	[fec_creado] [datetime] NULL,
	[creado_por] [int] NULL,
	[val_desc] [float] NULL,
	[fec_ini] [datetime] NULL,
	[fec_fin] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_descuento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[INVENTARIO]    Script Date: 8/05/2024 4:15:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[INVENTARIO](
	[id_item] [int] IDENTITY(1,1) NOT NULL,
	[id_producto] [int] NULL,
	[fec_creado] [datetime] NULL,
	[creado_por] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 8/05/2024 4:15:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[nom_producto] [nvarchar](max) NULL,
	[desc_producto] [nvarchar](max) NULL,
	[marca_producto] [nvarchar](500) NULL,
	[modelo_producto] [nvarchar](500) NULL,
	[val_producto] [float] NULL,
	[fec_creado] [datetime] NULL,
	[creado_por] [int] NULL,
	[img_url] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS_CARRITO]    Script Date: 8/05/2024 4:15:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS_CARRITO](
	[id_item] [int] IDENTITY(1,1) NOT NULL,
	[id_carrito] [int] NULL,
	[id_producto] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS_VENDIDOS]    Script Date: 8/05/2024 4:15:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS_VENDIDOS](
	[id_item] [int] IDENTITY(1,1) NOT NULL,
	[id_venta] [int] NULL,
	[id_producto] [int] NULL,
	[id_descuento] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_item] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROLES]    Script Date: 8/05/2024 4:15:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROLES](
	[id_rol] [int] IDENTITY(1,1) NOT NULL,
	[desc_rol] [nvarchar](100) NULL,
	[fec_creado] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 8/05/2024 4:15:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[id_usuario] [int] IDENTITY(1,1) NOT NULL,
	[nom_usuario] [nvarchar](max) NULL,
	[cod_usuario] [int] NULL,
	[email_usuario] [nvarchar](max) NULL,
	[contraseña_usuario] [nvarchar](max) NULL,
	[direccion_usuario] [nvarchar](max) NULL,
	[tel_usuario] [nvarchar](100) NULL,
	[rol_usuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VENTA]    Script Date: 8/05/2024 4:15:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VENTA](
	[id_venta] [int] IDENTITY(1,1) NOT NULL,
	[fec_venta] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PRODUCTOS] ON 

INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (1, N'Smartphone', N'Teléfono móvil con pantalla táctil y capacidades de Internet', N'Samsung', N'Galaxy S21', 899990, CAST(N'2024-03-25T00:00:00.000' AS DateTime), 1, N'https://th.bing.com/th/id/R.e26cf50ebe1474493b4614f052a561a7?rik=ei5JzKR8chkvUw&pid=ImgRaw&r=0')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (2, N'Laptop', N'Computadora portátil con procesador Intel Core i7 y pantalla de 15 pulgadas', N'Dell', N'XPS 15', 1299990, CAST(N'2024-03-25T00:00:00.000' AS DateTime), 2, N'https://www.notebookcheck.net/fileadmin/Notebooks/News/_nc3/xs9530t_cnb_00055rf110_bk.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (3, N'Smart TV', N'Televisor con capacidad de conexión a Internet y resolución 4K', N'LG', N'OLED65C1', 1499990, CAST(N'2024-03-25T00:00:00.000' AS DateTime), 3, N'https://www.dolby.com/siteassets/xf-products/tvs/lg-c1-oled-tv/2021_oled48c1aub_1.png?width=1440&mode=crop&heightratio=0.5625')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (4, N'Tablet', N'Dispositivo portátil con pantalla táctil y sistema operativo Android', N'Apple', N'iPad Pro', 799990, CAST(N'2024-03-25T00:00:00.000' AS DateTime), 4, N'https://www.tecmobile.com.br/wp-content/uploads/2022/03/ipad-pro-21pol-5gen.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (5, N'Smartwatch', N'Reloj inteligente con monitor de ritmo cardíaco y GPS integrado', N'Fitbit', N'Versa 3', 199990, CAST(N'2024-03-25T00:00:00.000' AS DateTime), 5, N'https://th.bing.com/th/id/OIP.ftkRwJ1A9CpmwipXOafNygHaHa?rs=1&pid=ImgDetMain')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (6, N'Cámara DSLR', N'Cámara digital con lente intercambiable y sensor de alta resolución', N'Canon', N'EOS Rebel T7', 599990, CAST(N'2024-03-25T00:00:00.000' AS DateTime), 6, N'https://th.bing.com/th/id/R.1337eee0994abecafc00c0ce3e4ecba8?rik=sXdJlHsM%2bBHjWw&pid=ImgRaw&r=0')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (7, N'Auriculares inalámbricos', N'Auriculares con conectividad Bluetooth y cancelación de ruido activa', N'Sony', N'WH-1000XM4', 349990, CAST(N'2024-03-25T00:00:00.000' AS DateTime), 7, N'https://www.sony.com/is/image/gwtprod/a623e0ac346dea68e59c279e05221b59?fmt=png-alpha&wid=515&hei=515&trf=trim')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (8, N'Consola de videojuegos', N'Sistema de entretenimiento con capacidad de jugar videojuegos en alta definición', N'Microsoft', N'Xbox Series X', 499990, CAST(N'2024-03-25T00:00:00.000' AS DateTime), 8, N'https://c2.lestechnophiles.com/images.frandroid.com/wp-content/uploads/2020/09/microsoft-xbox-series-s-frandroid-2020.png?resize=350')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (9, N'Altavoz inteligente', N'Dispositivo con asistente virtual integrado para reproducción de música y control del hogar', N'Amazon', N'Echo (4th Gen)', 99990, CAST(N'2024-03-25T00:00:00.000' AS DateTime), 9, N'https://automatednow.com/images/detailed/3/Echo_Dot_4th_Gen_White_950_zyqo-ih.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (10, N'Impresora multifuncional', N'Dispositivo que imprime, escanea', N'HP', N'OfficeJet Pro 9015', 199990, CAST(N'2024-03-25T00:00:00.000' AS DateTime), 10, N'https://crdms.images.consumerreports.org/f_auto,w_600/prod/products/cr/models/398284-all-in-one-printers-hp-officejet-pro-9015-10007084.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (11, N'Auriculares inalámbricos con cancelación de ruido', N'Auriculares Bluetooth con tecnología de cancelación de ruido activa', N'Sony', N'WH-1000XM4', 349990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 1, N'https://cosonyb2c.vtexassets.com/arquivos/ids/352765/wh1000xm4L-1.jpg?v=637673971750170000')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (12, N'Tablet con pantalla táctil de 10 pulgadas', N'Tablet con pantalla Retina de 10.9 pulgadas y chip A14 Bionic', N'Apple', N'iPad Air (2022)', 699990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 2, N'https://www.att.com/scmsassets/global/devices/tablets/apple/apple-ipad-air-5th-gen-_2022_/carousel/purple/Purple-1.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (13, N'Cámara digital con sensor de 24 megapíxeles', N'Cámara DSLR con sensor CMOS de formato completo y grabación de video 8K', N'Canon', N'EOS R5', 2799990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 3, N'https://i1.adis.ws/i/canon/eos-r5_front_rf24-105mmf4lisusm_32c26ad194234d42b3cd9e582a21c99b')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (14, N'Reloj inteligente con monitor de frecuencia cardíaca', N'Reloj deportivo con GPS y resistencia al agua', N'Garmin', N'Forerunner 945', 549990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 1, N'https://ph.garmin.com/m/ph/g/products/Forerunner945-black-image-01.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (15, N'Altavoz Bluetooth portátil resistente al agua', N'Altavoz inalámbrico con batería de larga duración', N'JBL', N'Charge 5', 199990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 2, N'https://www.jbl.com.co/dw/image/v2/AAUJ_PRD/on/demandware.static/-/Sites-masterCatalog_Harman/default/dw68c39957/JBL_CHARGE5_WIFI_HERO%20_LEFT_37890_x3.png?sw=537&sfrm=png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (16, N'Impresora multifunción con conectividad Wi-Fi', N'Impresora láser con escáner y copiadora integrados', N'HP', N'LaserJet Pro MFP M227fdw', 269990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 3, N'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05288908.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (17, N'Teclado mecánico para gaming con retroiluminación RGB', N'Teclado mecánico con switches Cherry MX y reposamuñecas', N'Corsair', N'K95 RGB Platinum XT', 179990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 1, N'https://assets.corsair.com/image/upload/f_auto,q_auto/v1/akamai/pdp/k95-rgb-xt/images/k95_rgb_xt_front.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (18, N'Mochila para portátil de 15 pulgadas con puerto USB', N'Mochila resistente al agua con compartimento acolchado para laptop', N'SwissGear', N'SA1923', 79990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 2, N'https://tottoco.vteximg.com.br/arquivos/ids/161247-292-292/SKYNET-1320G-N01_A.png?v=636472200715300000')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (19, N'Router Wi-Fi 6 de doble banda para redes domésticas', N'Router inalámbrico con tecnología MU-MIMO y velocidad de hasta 6000 Mbps', N'TP-Link', N'Archer AX6000', 499990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 3, N'https://tecnokefren.com/wp-content/uploads/2021/08/ARCHERAX6000-h.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (20, N'Monitor de 27 pulgadas con resolución 4K y HDR', N'Monitor IPS con frecuencia de actualización de 144Hz y tiempo de respuesta de 1ms', N'LG', N'27UL850-W', 499990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 1, N'https://media.croma.com/image/upload/v1683209601/Croma%20Assets/Computers%20Peripherals/Monitor/Images/263397_4_i6saea.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (21, N'Refrigerador de doble puerta con dispensador de agua', N'Refrigerador de acero inoxidable con sistema de enfriamiento inteligente', N'Samsung', N'RF27T5501SG', 1999990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 2, N'https://images.samsung.com/is/image/samsung/mx-french-door-rf27t5501sg-rf27t5501sg-em-frontblack-thumb-299315752')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (22, N'Aspiradora robot con mapeo inteligente de la casa', N'Aspiradora automática con tecnología de navegación láser', N'iRobot', N'Roomba i7+', 899990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 3, N'https://res-2.cloudinary.com/grover/image/upload/v1686582235/mf8wd8wz0cv5t9l1cu33.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (23, N'Silla de escritorio ergonómica con soporte lumbar', N'Silla de oficina ajustable con reposabrazos y respaldo reclinable', N'Herman Miller', N'Aeron Remastered', 1199990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 1, N'https://newstar.sg/cdn/shop/products/WhatsApp_Image_2021-08-02_at_12.26.31_PM-removebg-preview_1024x1024.png?v=1709690975')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (24, N'Batería externa de 20000 mAh con carga rápida', N'Powerbank con puerto USB-C y tecnología de carga rápida Power Delivery', N'Anker', N'PowerCore+ 26800 PD', 89990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 2, N'https://shareefcorner.sa/pub/media/catalog/product/cache/82d05cd6abfc8fcfb8bdbf5accf96e1b/b/1/b1376k11_1__1.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (25, N'Horno eléctrico con función de convección y grill', N'Horno empotrable con capacidad de 60 litros y control digital', N'Bosch', N'HBG675BB1', 399990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 3, N'https://media3.bosch-home.com/Product_Shots/1600x900/MCSA00766727_411060_HBG672BB1F_def.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (26, N'Máquina de café automática con molinillo integrado', N'Cafetera espresso con sistema de preparación de leche automático', N'De''Longhi', N'Magnifica S', 449990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 1, N'https://assets.mmsrg.com/isr/166325/c1/-/ASSET_MMS_96585590/fee_786_587_png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (27, N'Barra de sonido Dolby Atmos con subwoofer inalámbrico', N'Sistema de audio envolvente con tecnología de audio 3D', N'Sony', N'HT-G700', 599990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 2, N'https://www.sony.co.in/image/e6b1cb62d9484aabfe6bebdbd0fa5709?fmt=png-alpha&wid=900&hei=800')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (28, N'Cortadora de césped eléctrica con batería recargable', N'Cortacésped inalámbrico con ajuste de altura de corte', N'Greenworks', N'Pro 80V', 279990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 3, N'https://greenworkstools.ca/cdn/shop/files/4_06bdf49d-7138-4217-8835-806cc2423989_800x.png?v=1712168690')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (29, N'Lámpara de escritorio LED con control táctil', N'Lámpara de mesa regulable con puerto de carga USB', N'TaoTronics', N'TT-DL13', 29990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 1, N'https://bluetek.co.za/wp-content/uploads/2021/11/TT-DL13-B_2.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (30, N'Cocina de inducción con cuatro quemadores y control táctil', N'Placa de cocina con función de bloqueo de seguridad y temporizador', N'Beko', N'HII64400AT', 219990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 2, N'https://www.beko.com/content/dam/germany-de-aem/germany-de-aemProductCatalog/product-images/7757182903-HII-64400-AT/7757182903-LO1-20140909-131553.png/jcr:content/renditions/cq5dam.web.1280.1280.png')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (31, N'Smartwatch deportivo con seguimiento de actividad física', N'Reloj inteligente con monitor de sueño y resistencia al agua', N'Fitbit', N'Versa 3', 349990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 3, N'https://s13emagst.akamaized.net/products/67066/67065104/images/res_8f597c6b37a932ba89cbdc5e326bba6a.png?width=300&height=300&hash=DF68DFF4C1B4B40940E84B247239BCEC')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (32, N'Licuadora de alta potencia con vaso de vidrio', N'Batidora con motor de 1200W y cuchillas de acero inoxidable', N'Oster', N'BRLY07-Z00-050', 79990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 1, N'https://s13emagst.akamaized.net/products/67066/67065104/images/res_8f597c6b37a932ba89cbdc5e326bba6a.png?width=300&height=300&hash=DF68DFF4C1B4B40940E84B247239BCEC')
INSERT [dbo].[PRODUCTOS] ([id_producto], [nom_producto], [desc_producto], [marca_producto], [modelo_producto], [val_producto], [fec_creado], [creado_por], [img_url]) VALUES (33, N'Cámara de seguridad para exteriores con visión nocturna', N'Cámara IP resistente a la intemperie con detección de movimiento', N'Arlo', N'Pro 4', 349990, CAST(N'2024-03-26T00:00:00.000' AS DateTime), 2, N'https://www1.djicdn.com/dps/645555df83f504bb5375e7e962aac9f0.webp')
SET IDENTITY_INSERT [dbo].[PRODUCTOS] OFF
GO
ALTER TABLE [dbo].[CARRITO]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[USUARIOS] ([id_usuario])
GO
ALTER TABLE [dbo].[INVENTARIO]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[PRODUCTOS_CARRITO]  WITH CHECK ADD FOREIGN KEY([id_carrito])
REFERENCES [dbo].[CARRITO] ([id_carrito])
GO
ALTER TABLE [dbo].[PRODUCTOS_CARRITO]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[PRODUCTOS_VENDIDOS]  WITH CHECK ADD FOREIGN KEY([id_descuento])
REFERENCES [dbo].[DESCUENTOS] ([id_descuento])
GO
ALTER TABLE [dbo].[PRODUCTOS_VENDIDOS]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[PRODUCTOS_VENDIDOS]  WITH CHECK ADD FOREIGN KEY([id_venta])
REFERENCES [dbo].[VENTA] ([id_venta])
GO
ALTER TABLE [dbo].[USUARIOS]  WITH CHECK ADD FOREIGN KEY([rol_usuario])
REFERENCES [dbo].[ROLES] ([id_rol])
GO
USE [master]
GO
ALTER DATABASE [sena] SET  READ_WRITE 
GO
