USE [master]
GO
/****** Object:  Database [Kursova_Opatskyi]    Script Date: 21.12.2018 8:45:00 ******/
CREATE DATABASE [Kursova_Opatskyi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kursova_Opatskyi', FILENAME = N'C:\Users\Любко\Kursova_Opatskyi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kursova_Opatskyi_log', FILENAME = N'C:\Users\Любко\Kursova_Opatskyi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Kursova_Opatskyi] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kursova_Opatskyi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kursova_Opatskyi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kursova_Opatskyi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kursova_Opatskyi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Kursova_Opatskyi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kursova_Opatskyi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Kursova_Opatskyi] SET  MULTI_USER 
GO
ALTER DATABASE [Kursova_Opatskyi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kursova_Opatskyi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kursova_Opatskyi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kursova_Opatskyi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kursova_Opatskyi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Kursova_Opatskyi] SET QUERY_STORE = OFF
GO
USE [Kursova_Opatskyi]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Kursova_Opatskyi]
GO
/****** Object:  Table [dbo].[car_list]    Script Date: 21.12.2018 8:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[car_list](
	[car_id] [int] NOT NULL,
	[state] [nvarchar](50) NOT NULL,
	[location] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_car_list] PRIMARY KEY CLUSTERED 
(
	[state] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cars]    Script Date: 21.12.2018 8:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cars](
	[car_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[driver] [int] NOT NULL,
 CONSTRAINT [PK_cars] PRIMARY KEY CLUSTERED 
(
	[car_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[drivers]    Script Date: 21.12.2018 8:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drivers](
	[driv_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
	[category] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_drivers] PRIMARY KEY CLUSTERED 
(
	[driv_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[garage]    Script Date: 21.12.2018 8:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[garage](
	[garage_id] [int] NOT NULL,
	[fastened_car] [int] NOT NULL,
	[mechanics] [int] NOT NULL,
	[berth] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_garage] PRIMARY KEY CLUSTERED 
(
	[garage_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mechanics]    Script Date: 21.12.2018 8:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mechanics](
	[mech_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
 CONSTRAINT [PK_mechanics] PRIMARY KEY CLUSTERED 
(
	[mech_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[secretary]    Script Date: 21.12.2018 8:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[secretary](
	[sec_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[lastname] [nvarchar](50) NOT NULL,
	[age] [int] NOT NULL,
 CONSTRAINT [PK_secretary] PRIMARY KEY CLUSTERED 
(
	[sec_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tours]    Script Date: 21.12.2018 8:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tours](
	[tour_id] [int] NOT NULL,
	[tour_name] [nvarchar](50) NOT NULL,
	[tour_state] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_tours] PRIMARY KEY CLUSTERED 
(
	[tour_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unit]    Script Date: 21.12.2018 8:45:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unit](
	[mechanic_id] [int] NULL,
	[secretary_id] [int] NULL,
	[driver_id] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[car_list] ([car_id], [state], [location]) VALUES (2, N'не справна', N'Тусстань - Бортники')
INSERT [dbo].[car_list] ([car_id], [state], [location]) VALUES (3, N'спарвна', N'Тернопіль - Грушка')
INSERT [dbo].[car_list] ([car_id], [state], [location]) VALUES (1, N'Справна', N'Галич - Ворохта')
INSERT [dbo].[cars] ([car_id], [name], [driver]) VALUES (1, N'ВАЗ', 1)
INSERT [dbo].[cars] ([car_id], [name], [driver]) VALUES (2, N'ГАЗ', 2)
INSERT [dbo].[cars] ([car_id], [name], [driver]) VALUES (3, N'ЛАЗ', 3)
INSERT [dbo].[drivers] ([driv_id], [name], [lastname], [age], [category]) VALUES (1, N'Василь', N'Климончук', 45, N'B1, C1, C, CE')
INSERT [dbo].[drivers] ([driv_id], [name], [lastname], [age], [category]) VALUES (2, N'Гаврило', N'Гонта', 26, N'B')
INSERT [dbo].[drivers] ([driv_id], [name], [lastname], [age], [category]) VALUES (3, N'Іван', N'Марко', 32, N'B1, C1, C, D')
INSERT [dbo].[garage] ([garage_id], [fastened_car], [mechanics], [berth]) VALUES (1, 1, 3, N'Справна')
INSERT [dbo].[garage] ([garage_id], [fastened_car], [mechanics], [berth]) VALUES (2, 2, 2, N'справна')
INSERT [dbo].[garage] ([garage_id], [fastened_car], [mechanics], [berth]) VALUES (3, 3, 1, N'не справна')
INSERT [dbo].[mechanics] ([mech_id], [name], [lastname], [age]) VALUES (1, N'Василь', N'Процюк', 26)
INSERT [dbo].[mechanics] ([mech_id], [name], [lastname], [age]) VALUES (2, N'Микола', N'Козленко', 33)
INSERT [dbo].[mechanics] ([mech_id], [name], [lastname], [age]) VALUES (3, N'Любомир', N'Петелюк', 20)
INSERT [dbo].[secretary] ([sec_id], [name], [lastname], [age]) VALUES (1, N'Марія', N'Бутько', 26)
INSERT [dbo].[tours] ([tour_id], [tour_name], [tour_state]) VALUES (1, N'Галич - Ворохта', N'заплановано')
INSERT [dbo].[tours] ([tour_id], [tour_name], [tour_state]) VALUES (3, N'Тернопіль - Грушка', N'відбулося')
INSERT [dbo].[tours] ([tour_id], [tour_name], [tour_state]) VALUES (2, N'Тусстань - Бортники', N'заплановано')
INSERT [dbo].[unit] ([mechanic_id], [secretary_id], [driver_id]) VALUES (1, 1, 1)
INSERT [dbo].[unit] ([mechanic_id], [secretary_id], [driver_id]) VALUES (2, NULL, 2)
INSERT [dbo].[unit] ([mechanic_id], [secretary_id], [driver_id]) VALUES (3, NULL, 3)
ALTER TABLE [dbo].[car_list]  WITH CHECK ADD  CONSTRAINT [FK_car_list_cars] FOREIGN KEY([car_id])
REFERENCES [dbo].[cars] ([car_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[car_list] CHECK CONSTRAINT [FK_car_list_cars]
GO
ALTER TABLE [dbo].[car_list]  WITH CHECK ADD  CONSTRAINT [FK_car_list_tours] FOREIGN KEY([location])
REFERENCES [dbo].[tours] ([tour_name])
GO
ALTER TABLE [dbo].[car_list] CHECK CONSTRAINT [FK_car_list_tours]
GO
ALTER TABLE [dbo].[cars]  WITH CHECK ADD  CONSTRAINT [FK_cars_drivers] FOREIGN KEY([driver])
REFERENCES [dbo].[drivers] ([driv_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cars] CHECK CONSTRAINT [FK_cars_drivers]
GO
ALTER TABLE [dbo].[garage]  WITH CHECK ADD  CONSTRAINT [FK_garage_car_list] FOREIGN KEY([berth])
REFERENCES [dbo].[car_list] ([state])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[garage] CHECK CONSTRAINT [FK_garage_car_list]
GO
ALTER TABLE [dbo].[unit]  WITH CHECK ADD  CONSTRAINT [FK_unit_drivers] FOREIGN KEY([driver_id])
REFERENCES [dbo].[drivers] ([driv_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[unit] CHECK CONSTRAINT [FK_unit_drivers]
GO
ALTER TABLE [dbo].[unit]  WITH CHECK ADD  CONSTRAINT [FK_unit_mechanics] FOREIGN KEY([mechanic_id])
REFERENCES [dbo].[mechanics] ([mech_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[unit] CHECK CONSTRAINT [FK_unit_mechanics]
GO
ALTER TABLE [dbo].[unit]  WITH CHECK ADD  CONSTRAINT [FK_unit_secretary] FOREIGN KEY([secretary_id])
REFERENCES [dbo].[secretary] ([sec_id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[unit] CHECK CONSTRAINT [FK_unit_secretary]
GO
USE [master]
GO
ALTER DATABASE [Kursova_Opatskyi] SET  READ_WRITE 
GO
