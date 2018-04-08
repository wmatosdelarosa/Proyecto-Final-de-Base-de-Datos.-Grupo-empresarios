USE [master]
GO
/****** Wagner Matos  matricula: 16-eiin-1-009 ******/

/****** Francisco Rosario matricula: 16-siin-1-141 ******/

/****** Joel Mateo matricula: 17-miin-1-077 ******/

CREATE DATABASE [Carniceria]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Carniceria', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Carniceria.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Carniceria_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\Carniceria_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Carniceria] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Carniceria].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Carniceria] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Carniceria] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Carniceria] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Carniceria] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Carniceria] SET ARITHABORT OFF 
GO
ALTER DATABASE [Carniceria] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Carniceria] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Carniceria] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Carniceria] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Carniceria] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Carniceria] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Carniceria] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Carniceria] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Carniceria] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Carniceria] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Carniceria] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Carniceria] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Carniceria] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Carniceria] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Carniceria] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Carniceria] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Carniceria] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Carniceria] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Carniceria] SET  MULTI_USER 
GO
ALTER DATABASE [Carniceria] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Carniceria] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Carniceria] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Carniceria] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Carniceria] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Carniceria]
GO
/****** Object:  Table [dbo].[Caja_registradora]    Script Date: 9/4/18 7:33:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Caja_registradora](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Piso] [int] NULL,
 CONSTRAINT [PK_Caja_registradora] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 9/4/18 7:33:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](15) NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 9/4/18 7:33:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](20) NULL,
	[Presio] [int] NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Venta]    Script Date: 9/4/18 7:33:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[Empleado] [int] NULL,
	[Producto] [int] NULL,
	[Caja] [int] NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Caja_registradora] ON 

INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (1, 1)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (2, 2)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (3, 3)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (4, 4)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (5, 5)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (6, 6)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (7, 7)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (8, 8)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (9, 9)
INSERT [dbo].[Caja_registradora] ([Codigo], [Piso]) VALUES (10, 10)
SET IDENTITY_INSERT [dbo].[Caja_registradora] OFF
SET IDENTITY_INSERT [dbo].[Empleados] ON 

INSERT [dbo].[Empleados] ([Codigo], [Nombre]) VALUES (1, N'Juan')
INSERT [dbo].[Empleados] ([Codigo], [Nombre]) VALUES (2, N'Pedro')
INSERT [dbo].[Empleados] ([Codigo], [Nombre]) VALUES (3, N'Jose')
INSERT [dbo].[Empleados] ([Codigo], [Nombre]) VALUES (4, N'Joel')
INSERT [dbo].[Empleados] ([Codigo], [Nombre]) VALUES (5, N'Maria')
INSERT [dbo].[Empleados] ([Codigo], [Nombre]) VALUES (6, N'Elia')
INSERT [dbo].[Empleados] ([Codigo], [Nombre]) VALUES (7, N'Ramon')
INSERT [dbo].[Empleados] ([Codigo], [Nombre]) VALUES (8, N'Juana')
INSERT [dbo].[Empleados] ([Codigo], [Nombre]) VALUES (9, N'Francisco')
INSERT [dbo].[Empleados] ([Codigo], [Nombre]) VALUES (10, N'Manuel')
SET IDENTITY_INSERT [dbo].[Empleados] OFF
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (1, N'Salami', 100)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (2, N'Chuleta', 200)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (3, N'Res', 45)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (4, N'Longanisa', 100)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (5, N'Chorizo', 55)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (6, N'sarchicha', 56)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (7, N'Cerdo', 190)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (8, N'Pollo', 45)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (9, N'Costillita', 110)
INSERT [dbo].[Producto] ([Codigo], [Nombre], [Presio]) VALUES (10, N'Jamon', 90)
SET IDENTITY_INSERT [dbo].[Producto] OFF
INSERT [dbo].[Venta] ([Empleado], [Producto], [Caja]) VALUES (1, 2, 4)
INSERT [dbo].[Venta] ([Empleado], [Producto], [Caja]) VALUES (2, 1, 3)
INSERT [dbo].[Venta] ([Empleado], [Producto], [Caja]) VALUES (3, 3, 1)
INSERT [dbo].[Venta] ([Empleado], [Producto], [Caja]) VALUES (4, 4, 2)
INSERT [dbo].[Venta] ([Empleado], [Producto], [Caja]) VALUES (5, 6, 5)
INSERT [dbo].[Venta] ([Empleado], [Producto], [Caja]) VALUES (6, 5, 6)
INSERT [dbo].[Venta] ([Empleado], [Producto], [Caja]) VALUES (7, 10, 7)
INSERT [dbo].[Venta] ([Empleado], [Producto], [Caja]) VALUES (8, 7, 8)
INSERT [dbo].[Venta] ([Empleado], [Producto], [Caja]) VALUES (9, 9, 10)
INSERT [dbo].[Venta] ([Empleado], [Producto], [Caja]) VALUES (10, 8, 9)
USE [master]
GO
ALTER DATABASE [Carniceria] SET  READ_WRITE 
GO
