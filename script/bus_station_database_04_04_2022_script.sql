USE [master]
GO
/****** Object:  Database [bus_station_database_04_04_2022]    Script Date: 18.04.2022 4:39:52 ******/
CREATE DATABASE [bus_station_database_04_04_2022]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'bus_station_database_04_04_2022', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bus_station_database_04_04_2022.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'bus_station_database_04_04_2022_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\bus_station_database_04_04_2022_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [bus_station_database_04_04_2022].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET ARITHABORT OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET  DISABLE_BROKER 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET RECOVERY FULL 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET  MULTI_USER 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET DB_CHAINING OFF 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'bus_station_database_04_04_2022', N'ON'
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET QUERY_STORE = OFF
GO
USE [bus_station_database_04_04_2022]
GO
/****** Object:  Table [dbo].[bus]    Script Date: 18.04.2022 4:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bus](
	[id_bus] [int] NOT NULL,
	[model] [nvarchar](max) NOT NULL,
	[license_plate] [nvarchar](max) NOT NULL,
	[number_of_seats] [int] NOT NULL,
 CONSTRAINT [PK_bus] PRIMARY KEY CLUSTERED 
(
	[id_bus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dispatcher]    Script Date: 18.04.2022 4:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dispatcher](
	[id_dispatcher] [int] NOT NULL,
	[first_name] [nvarchar](max) NOT NULL,
	[last_name] [nvarchar](max) NOT NULL,
	[middle_name] [nvarchar](max) NULL,
	[birthdate] [nvarchar](max) NOT NULL,
	[age] [int] NOT NULL,
	[passport] [float] NOT NULL,
 CONSTRAINT [PK_dispatcher] PRIMARY KEY CLUSTERED 
(
	[id_dispatcher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[driver]    Script Date: 18.04.2022 4:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[driver](
	[id_driver] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](max) NOT NULL,
	[last_name] [nvarchar](max) NOT NULL,
	[middle_name] [nvarchar](max) NULL,
	[birthdate] [nvarchar](max) NOT NULL,
	[age] [int] NOT NULL,
	[passport] [float] NOT NULL,
 CONSTRAINT [PK_driver] PRIMARY KEY CLUSTERED 
(
	[id_driver] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[route]    Script Date: 18.04.2022 4:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[route](
	[id_route] [int] NOT NULL,
	[point_of_departure] [nvarchar](max) NOT NULL,
	[point_of_destination] [nvarchar](max) NOT NULL,
	[id_bus] [int] NOT NULL,
	[id_driver] [int] NOT NULL,
	[departure_time] [nvarchar](max) NOT NULL,
	[arrival_time] [nvarchar](max) NOT NULL,
	[places_left] [int] NOT NULL,
	[number] [int] NULL,
	[price] [real] NOT NULL,
 CONSTRAINT [PK_route] PRIMARY KEY CLUSTERED 
(
	[id_route] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ticket]    Script Date: 18.04.2022 4:39:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[id_ticket] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [nvarchar](max) NOT NULL,
	[last_name] [nvarchar](max) NOT NULL,
	[middle_name] [nvarchar](max) NULL,
	[id_route] [int] NOT NULL,
	[id_dispatcher] [int] NOT NULL,
 CONSTRAINT [PK_ticket] PRIMARY KEY CLUSTERED 
(
	[id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (1, N'Scania-ЛиАЗ Cruise', N'а975ух', 70)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (2, N'Scania-ЛиАЗ VOYAGE
', N'е945мр', 60)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (3, N'Scania-ЛиАЗ VOYAGE
', N'т355оу', 60)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (4, N'Scania-ЛиАЗ VOYAGE
', N'н734ук', 60)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (5, N'Scania-ЛиАЗ VOYAGE
', N'р656нм', 60)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (6, N'Scania-ЛиАЗ VOYAGE
', N'р011ас', 60)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (7, N'ЛиАЗ-5293', N'к111ае', 25)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (8, N'ЛиАЗ-5293', N'х863ва', 25)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (9, N'ЛиАЗ-6213', N'с411се', 37)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (10, N'ЛиАЗ-5292', N'е832вк', 32)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (11, N'ЛиАЗ-5292', N'к203ро', 32)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (12, N'ЛиАЗ-5292', N'т680вт', 32)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (13, N'ЛиАЗ-5292', N'у684кр', 32)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (14, N'ЛиАЗ-5292', N'у632вн', 32)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (15, N'ЛиАЗ-5292', N'к572мх', 32)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (16, N'Scania-ЛиАЗ Cruise', N'е734вт', 70)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (17, N'Scania-ЛиАЗ VOYAGE
', N'к301вт', 60)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (18, N'Scania-ЛиАЗ VOYAGE
', N'х122нр', 60)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (19, N'ГАЗ-A64R42', N'с393кв', 19)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (20, N'ГАЗ-A64R42', N'а732вр', 19)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (21, N'ГАЗ-A64R42', N'е410рт', 19)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (22, N'ГАЗ-A64R42', N'о191ос', 19)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (23, N'ГАЗ-A64R42', N'е894рс', 19)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (24, N'ГАЗ-A64R42', N'р004та', 19)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (25, N'ГАЗ-A64R42', N'а953ом', 19)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (26, N'ГАЗ-A64R42', N'у958ро', 19)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (27, N'Mercedes-Benz Citaro', N'с184ту', 35)
INSERT [dbo].[bus] ([id_bus], [model], [license_plate], [number_of_seats]) VALUES (28, N'Mercedes-Benz Citaro', N'т118се', 35)
GO
INSERT [dbo].[dispatcher] ([id_dispatcher], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (1, N'Елена', N'Атаманенко', N'Александровна', N'23.06.1980', 41, 4153654816)
INSERT [dbo].[dispatcher] ([id_dispatcher], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (2, N'Марианна', N'Якуничева', N'Давидовна', N'03.10.1976', 45, 4880231019)
INSERT [dbo].[dispatcher] ([id_dispatcher], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (3, N'Ольга', N'Жилина', N'Николаевна', N'28.09.1995', 26, 4880231019)
INSERT [dbo].[dispatcher] ([id_dispatcher], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (4, N'Ева', N'Кубышкина', N'Ивановна', N'28.04.1991', 30, 4162891499)
INSERT [dbo].[dispatcher] ([id_dispatcher], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (5, N'Таисия', N'Судакова', N'Романовна', N'09.06.1969', 52, 4043241841)
INSERT [dbo].[dispatcher] ([id_dispatcher], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (6, N'Настасья', N'Помелова', N'Адамовна', N'20.04.1984', 37, 4946593392)
GO
SET IDENTITY_INSERT [dbo].[driver] ON 

INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (1, N'Юрий', N'Базанов', N'Юрьевич', N'02.09.1962', 59, 4769770739)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (2, N'Венедикт', N'Голубовский', N'Федорович', N'16.09.1969', 52, 4530373080)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (3, N'Никифор', N'Коржаков', N'Маркович', N'23.08.1972', 49, 4562107860)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (4, N'Герасим', N'Солдатов', N'Севастьянович', N'03.05.1964', 57, 4339887268)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (5, N'Арсений', N'Бендлин', N'Филиппович', N'16.10.1978', 43, 4472672154)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (6, N'Федор', N'Якубович', N'Лукьевич', N'07.03.1971', 51, 4790350743)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (7, N'Трофим', N'Курпатов', N'Ефремович', N'28.09.1972', 49, 4318852371)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (8, N'Иннокентий', N'Таттар', N'Александрович', N'09.10.1981', 40, 4141361081)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (9, N'Яков', N'Лобанов', N'Денисович', N'24.09.1988', 33, 4650865187)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (10, N'Юлиан', N'Родиков', N'Леонтьевич', N'18.03.1992', 30, 4334715401)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (11, N'Филипп', N'Каргин', N'Леонтьевич', N'23.03.1989', 33, 4597539656)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (12, N'Егор', N'Сидоров', N'Трофимович', N'14.04.1995', 26, 4432739068)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (13, N'Макар', N'Набатов', N'Валерьевич', N'14.09.1980', 41, 4127225441)
INSERT [dbo].[driver] ([id_driver], [first_name], [last_name], [middle_name], [birthdate], [age], [passport]) VALUES (14, N'Гавриил', N'Нечаев', N'Викторович', N'18.01.1980', 42, 4942755622)
SET IDENTITY_INSERT [dbo].[driver] OFF
GO
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (1, N'Куровское', N'Орехово-Зуево', 1, 2, N'06:25', N'07:10', 70, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (2, N'Куровское', N'Орехово-Зуево', 4, 7, N'07:20', N'08:15', 60, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (3, N'Куровское', N'Орехово-Зуево', 8, 5, N'08:30', N'09:20', 25, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (4, N'Куровское', N'Орехово-Зуево', 20, 3, N'09:40', N'10:40', 19, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (5, N'Куровское', N'Орехово-Зуево', 1, 2, N'10:15', N'11:10', 70, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (6, N'Куровское', N'Орехово-Зуево', 4, 7, N'11:20', N'12:05', 60, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (7, N'Куровское', N'Орехово-Зуево', 8, 5, N'12:30', N'13:15', 25, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (8, N'Куровское', N'Орехово-Зуево', 20, 3, N'13:42', N'14:30', 19, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (9, N'Куровское', N'Орехово-Зуево', 1, 2, N'14:25', N'15:10', 70, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (10, N'Куровское', N'Орехово-Зуево', 4, 7, N'15:40', N'16:25', 60, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (11, N'Куровское', N'Орехово-Зуево', 8, 5, N'16:30', N'17:15', 25, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (12, N'Куровское', N'Орехово-Зуево', 20, 3, N'17:35', N'18:20', 19, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (13, N'Куровское', N'Орехово-Зуево', 1, 2, N'18:40', N'19:30', 70, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (14, N'Куровское', N'Орехово-Зуево', 4, 7, N'19:35', N'20:20', 60, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (15, N'Куровское', N'Орехово-Зуево', 8, 5, N'20:30', N'21:15', 25, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (16, N'Куровское', N'Орехово-Зуево', 20, 3, N'21:00', N'21:45', 19, 22, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (17, N'Куровское', N'Давыдово', 2, 6, N'05:23', N'05:33', 60, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (18, N'Куровское', N'Давыдово', 27, 8, N'05:45', N'05:55', 35, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (19, N'Куровское', N'Давыдово', 28, 9, N'06:25', N'06:35', 35, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (20, N'Куровское', N'Давыдово', 2, 6, N'07:00', N'07:10', 60, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (21, N'Куровское', N'Давыдово', 27, 8, N'07:50', N'08:00', 35, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (22, N'Куровское', N'Давыдово', 28, 9, N'08:35', N'08:45', 35, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (23, N'Куровское', N'Давыдово', 2, 6, N'08:55', N'09:05', 60, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (24, N'Куровское', N'Давыдово', 27, 8, N'09:40', N'09:50', 35, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (25, N'Куровское', N'Давыдово', 28, 9, N'10:20', N'10:30', 35, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (26, N'Куровское', N'Давыдово', 2, 6, N'10:45', N'10:55', 60, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (27, N'Куровское', N'Давыдово', 27, 8, N'11:20', N'11:30', 35, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (28, N'Куровское', N'Давыдово', 28, 9, N'11:55', N'12:10', 35, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (29, N'Куровское', N'Давыдово', 2, 6, N'12:15', N'12:25', 60, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (30, N'Куровское', N'Давыдово', 27, 8, N'12:35', N'12:45', 35, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (31, N'Куровское', N'Давыдово', 28, 9, N'13:15', N'13:25', 35, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (32, N'Куровское', N'Давыдово', 6, 1, N'13:45', N'13:55', 60, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (33, N'Куровское', N'Давыдово', 26, 4, N'14:20', N'14:30', 19, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (34, N'Куровское', N'Давыдово', 9, 10, N'14:45', N'14:55', 37, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (35, N'Куровское', N'Давыдово', 6, 1, N'15:20', N'15:30', 60, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (36, N'Куровское', N'Давыдово', 26, 4, N'15:55', N'16:05', 19, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (37, N'Куровское', N'Давыдово', 9, 10, N'16:25', N'16:35', 37, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (38, N'Куровское', N'Давыдово', 6, 1, N'16:45', N'16:55', 60, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (39, N'Куровское', N'Давыдово', 26, 4, N'17:10', N'17:20', 19, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (40, N'Куровское', N'Давыдово', 9, 10, N'17:45', N'17:55', 37, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (41, N'Куровское', N'Давыдово', 6, 1, N'18:30', N'18:40', 60, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (42, N'Куровское', N'Давыдово', 26, 4, N'19:05', N'19:15', 19, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (43, N'Куровское', N'Давыдово', 9, 10, N'19:45', N'19:55', 37, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (44, N'Куровское', N'Давыдово', 6, 1, N'20:10', N'20:25', 60, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (45, N'Куровское', N'Давыдово', 26, 4, N'21:25', N'21:35', 19, 33, 45)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (46, N'Куровское', N'Егорьевск', 18, 11, N'06:35', N'07:15', 70, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (47, N'Куровское', N'Егорьевск', 14, 12, N'07:45', N'08:40', 32, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (48, N'Куровское', N'Егорьевск', 17, 13, N'09:10', N'10:05', 60, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (49, N'Куровское', N'Егорьевск', 5, 14, N'10:25', N'11:20', 60, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (50, N'Куровское', N'Егорьевск', 18, 11, N'11:20', N'12:15', 70, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (51, N'Куровское', N'Егорьевск', 14, 12, N'11:55', N'12:35', 32, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (52, N'Куровское', N'Егорьевск', 17, 13, N'13:20', N'14:15', 60, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (53, N'Куровское', N'Егорьевск', 5, 14, N'15:35', N'16:30', 60, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (54, N'Куровское', N'Егорьевск', 18, 11, N'16:40', N'17:35', 70, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (55, N'Куровское', N'Егорьевск', 14, 12, N'17:55', N'18:50', 32, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (56, N'Куровское', N'Егорьевск', 17, 13, N'19:45', N'20:40', 60, 47, 60)
INSERT [dbo].[route] ([id_route], [point_of_departure], [point_of_destination], [id_bus], [id_driver], [departure_time], [arrival_time], [places_left], [number], [price]) VALUES (57, N'Куровское', N'Егорьевск', 5, 14, N'20:50', N'21:45', 60, 47, 60)
GO
SET IDENTITY_INSERT [dbo].[ticket] ON 

INSERT [dbo].[ticket] ([id_ticket], [first_name], [last_name], [middle_name], [id_route], [id_dispatcher]) VALUES (8, N'Святослав', N'Хренов', N'Валерьевич', 4, 1)
INSERT [dbo].[ticket] ([id_ticket], [first_name], [last_name], [middle_name], [id_route], [id_dispatcher]) VALUES (9, N'Егор', N'Лунёв', N'Валерьевич', 7, 1)
SET IDENTITY_INSERT [dbo].[ticket] OFF
GO
ALTER TABLE [dbo].[route]  WITH CHECK ADD  CONSTRAINT [FK_route_bus] FOREIGN KEY([id_bus])
REFERENCES [dbo].[bus] ([id_bus])
GO
ALTER TABLE [dbo].[route] CHECK CONSTRAINT [FK_route_bus]
GO
ALTER TABLE [dbo].[route]  WITH CHECK ADD  CONSTRAINT [FK_route_driver] FOREIGN KEY([id_driver])
REFERENCES [dbo].[driver] ([id_driver])
GO
ALTER TABLE [dbo].[route] CHECK CONSTRAINT [FK_route_driver]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_dispatcher] FOREIGN KEY([id_dispatcher])
REFERENCES [dbo].[dispatcher] ([id_dispatcher])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_dispatcher]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [FK_ticket_route] FOREIGN KEY([id_route])
REFERENCES [dbo].[route] ([id_route])
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [FK_ticket_route]
GO
USE [master]
GO
ALTER DATABASE [bus_station_database_04_04_2022] SET  READ_WRITE 
GO
