USE [master]
GO
/****** Object:  Database [testejava]    Script Date: 12/11/2023 7:54:08 AM ******/
CREATE DATABASE [testejava]
GO
ALTER DATABASE [testejava] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [testejava].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [testejava] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [testejava] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [testejava] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [testejava] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [testejava] SET ARITHABORT OFF 
GO
ALTER DATABASE [testejava] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [testejava] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [testejava] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [testejava] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [testejava] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [testejava] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [testejava] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [testejava] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [testejava] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [testejava] SET  ENABLE_BROKER 
GO
ALTER DATABASE [testejava] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [testejava] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [testejava] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [testejava] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [testejava] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [testejava] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [testejava] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [testejava] SET RECOVERY FULL 
GO
ALTER DATABASE [testejava] SET  MULTI_USER 
GO
ALTER DATABASE [testejava] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [testejava] SET DB_CHAINING OFF 
GO
ALTER DATABASE [testejava] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [testejava] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [testejava] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [testejava] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'testejava', N'ON'
GO
ALTER DATABASE [testejava] SET QUERY_STORE = OFF
GO
USE [testejava]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 12/11/2023 7:54:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ClientId] [smallint] NOT NULL,
	[ClientName] [nchar](20) NOT NULL,
	[ClientAddress] [nvarchar](1024) NOT NULL,
	[ClientCategoryCode] [nchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ClientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stats]    Script Date: 12/11/2023 7:54:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stats](
	[StatsCode] [nchar](20) NOT NULL,
	[StatsCount] [decimal](10, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatsCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatsLog]    Script Date: 12/11/2023 7:54:09 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatsLog](
	[StatsCode] [nchar](20) NOT NULL,
	[StatsTimestamp] [datetime2](3) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StatsCode] ASC,
	[StatsTimestamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Client] ([ClientId], [ClientName], [ClientAddress], [ClientCategoryCode]) VALUES (1, N'Teste               ', N'Teste', N'Teste            ')
GO
INSERT [dbo].[Stats] ([StatsCode], [StatsCount]) VALUES (N'Core.ClientAPI      ', CAST(42 AS Decimal(10, 0)))
GO
ALTER TABLE [dbo].[StatsLog]  WITH CHECK ADD  CONSTRAINT [ISTATSLOG1] FOREIGN KEY([StatsCode])
REFERENCES [dbo].[Stats] ([StatsCode])
GO
ALTER TABLE [dbo].[StatsLog] CHECK CONSTRAINT [ISTATSLOG1]
GO
USE [master]
GO
ALTER DATABASE [testejava] SET  READ_WRITE 
GO
