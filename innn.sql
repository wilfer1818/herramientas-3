USE [master]
GO
/****** Object:  Database [inventariow]    Script Date: 29/08/2024 5:53:46 p. m. ******/
CREATE DATABASE [inventariow]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'inventariow', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\inventariow.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'inventariow_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\inventariow_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [inventariow] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [inventariow].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [inventariow] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [inventariow] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [inventariow] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [inventariow] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [inventariow] SET ARITHABORT OFF 
GO
ALTER DATABASE [inventariow] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [inventariow] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [inventariow] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [inventariow] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [inventariow] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [inventariow] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [inventariow] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [inventariow] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [inventariow] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [inventariow] SET  ENABLE_BROKER 
GO
ALTER DATABASE [inventariow] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [inventariow] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [inventariow] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [inventariow] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [inventariow] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [inventariow] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [inventariow] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [inventariow] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [inventariow] SET  MULTI_USER 
GO
ALTER DATABASE [inventariow] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [inventariow] SET DB_CHAINING OFF 
GO
ALTER DATABASE [inventariow] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [inventariow] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [inventariow] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [inventariow] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [inventariow] SET QUERY_STORE = OFF
GO
USE [inventariow]
GO
/****** Object:  Table [dbo].[categoria_produ]    Script Date: 29/08/2024 5:53:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria_produ](
	[ID_produ] [int] NOT NULL,
	[tipo] [nvarchar](50) NULL,
	[producto] [nvarchar](50) NULL,
	[precio] [nchar](10) NULL,
 CONSTRAINT [PK_categoria_produ] PRIMARY KEY CLUSTERED 
(
	[ID_produ] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 29/08/2024 5:53:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[ID_cliente] [int] NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[cedula] [nchar](10) NULL,
	[celular] [nchar](10) NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[ID_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[factura]    Script Date: 29/08/2024 5:53:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[factura](
	[ID_factura] [int] NOT NULL,
	[producto] [nvarchar](50) NULL,
	[precio] [nchar](10) NULL,
	[fecha_de_compla] [nchar](10) NULL,
	[nombre_complador] [nvarchar](50) NULL,
 CONSTRAINT [PK_factura] PRIMARY KEY CLUSTERED 
(
	[ID_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medios pagos]    Script Date: 29/08/2024 5:53:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medios pagos](
	[ID_pago] [int] NOT NULL,
	[efectivo] [nchar](10) NULL,
	[tarjeta] [nchar](10) NULL,
	[nombre] [nvarchar](50) NULL,
	[cedula] [nvarchar](50) NULL,
 CONSTRAINT [PK_medios pagos] PRIMARY KEY CLUSTERED 
(
	[ID_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios sistema]    Script Date: 29/08/2024 5:53:46 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios sistema](
	[ID_usuario] [int] NOT NULL,
	[ID_cliente] [nchar](10) NULL,
	[ID_personal] [nchar](10) NULL,
	[nombre] [nvarchar](50) NULL,
	[contraseña] [nvarchar](50) NULL,
 CONSTRAINT [PK_usuarios sistema] PRIMARY KEY CLUSTERED 
(
	[ID_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[categoria_produ]  WITH CHECK ADD  CONSTRAINT [FK_categoria_produ_factura] FOREIGN KEY([ID_produ])
REFERENCES [dbo].[factura] ([ID_factura])
GO
ALTER TABLE [dbo].[categoria_produ] CHECK CONSTRAINT [FK_categoria_produ_factura]
GO
ALTER TABLE [dbo].[factura]  WITH CHECK ADD  CONSTRAINT [FK_factura_clientes] FOREIGN KEY([ID_factura])
REFERENCES [dbo].[clientes] ([ID_cliente])
GO
ALTER TABLE [dbo].[factura] CHECK CONSTRAINT [FK_factura_clientes]
GO
ALTER TABLE [dbo].[medios pagos]  WITH CHECK ADD  CONSTRAINT [FK_medios pagos_clientes] FOREIGN KEY([ID_pago])
REFERENCES [dbo].[clientes] ([ID_cliente])
GO
ALTER TABLE [dbo].[medios pagos] CHECK CONSTRAINT [FK_medios pagos_clientes]
GO
ALTER TABLE [dbo].[medios pagos]  WITH CHECK ADD  CONSTRAINT [FK_medios pagos_factura] FOREIGN KEY([ID_pago])
REFERENCES [dbo].[factura] ([ID_factura])
GO
ALTER TABLE [dbo].[medios pagos] CHECK CONSTRAINT [FK_medios pagos_factura]
GO
ALTER TABLE [dbo].[usuarios sistema]  WITH CHECK ADD  CONSTRAINT [FK_usuarios sistema_clientes] FOREIGN KEY([ID_usuario])
REFERENCES [dbo].[clientes] ([ID_cliente])
GO
ALTER TABLE [dbo].[usuarios sistema] CHECK CONSTRAINT [FK_usuarios sistema_clientes]
GO
USE [master]
GO
ALTER DATABASE [inventariow] SET  READ_WRITE 
GO
