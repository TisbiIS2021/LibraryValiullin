USE [master]
GO
/****** Object:  Database [ValiullinLibrary]    Script Date: 06.03.2023 16:58:42 ******/
CREATE DATABASE [ValiullinLibrary]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ValiullinLibrary', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2021\MSSQL\DATA\ValiullinLibrary.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ValiullinLibrary_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.IS2021\MSSQL\DATA\ValiullinLibrary_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ValiullinLibrary] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ValiullinLibrary].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ValiullinLibrary] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET ARITHABORT OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ValiullinLibrary] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ValiullinLibrary] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ValiullinLibrary] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ValiullinLibrary] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ValiullinLibrary] SET  MULTI_USER 
GO
ALTER DATABASE [ValiullinLibrary] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ValiullinLibrary] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ValiullinLibrary] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ValiullinLibrary] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ValiullinLibrary] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ValiullinLibrary] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ValiullinLibrary] SET QUERY_STORE = OFF
GO
USE [ValiullinLibrary]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 06.03.2023 16:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 06.03.2023 16:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DatePublished] [date] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[GenreId] [int] NOT NULL,
	[PubliserId] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookAuthor]    Script Date: 06.03.2023 16:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookAuthor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[AuthorId] [int] NOT NULL,
 CONSTRAINT [PK_BookAuthor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BookIssue]    Script Date: 06.03.2023 16:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookIssue](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IssueDate] [date] NULL,
	[ReturnDate] [date] NULL,
	[ReaderID] [int] NULL,
	[BookId] [int] NULL,
	[EmployeeId] [int] NULL,
	[StatusId] [int] NULL,
 CONSTRAINT [PK_BookIssue] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 06.03.2023 16:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
	[PositionId] [int] NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[PhoneNumber] [nvarchar](11) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 06.03.2023 16:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 06.03.2023 16:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Position] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publisher]    Script Date: 06.03.2023 16:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publisher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Publisher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reader]    Script Date: 06.03.2023 16:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NULL,
	[Adress] [nvarchar](50) NULL,
	[PnoneNumber] [nvarchar](11) NULL,
	[DateOfBirth] [date] NULL,
 CONSTRAINT [PK_Reader] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReturnStatus]    Script Date: 06.03.2023 16:58:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReturnStatus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_ReturnStatus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Author] ON 

INSERT [dbo].[Author] ([ID], [Name]) VALUES (1, N'СУка')
INSERT [dbo].[Author] ([ID], [Name]) VALUES (2, N'Жопич')
INSERT [dbo].[Author] ([ID], [Name]) VALUES (3, N'Папич')
INSERT [dbo].[Author] ([ID], [Name]) VALUES (4, N'Мамич ')
SET IDENTITY_INSERT [dbo].[Author] OFF
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([ID], [DatePublished], [Name], [GenreId], [PubliserId]) VALUES (1, CAST(N'2000-03-21' AS Date), N'Приколы про жопу', 1, 1)
INSERT [dbo].[Book] ([ID], [DatePublished], [Name], [GenreId], [PubliserId]) VALUES (2, CAST(N'2000-03-21' AS Date), N'Пиво', 2, 1)
INSERT [dbo].[Book] ([ID], [DatePublished], [Name], [GenreId], [PubliserId]) VALUES (3, CAST(N'2000-03-21' AS Date), N'Сталин ', 3, 2)
INSERT [dbo].[Book] ([ID], [DatePublished], [Name], [GenreId], [PubliserId]) VALUES (5, CAST(N'2000-03-21' AS Date), N'Киндер сюрприз', 4, 2)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[BookAuthor] ON 

INSERT [dbo].[BookAuthor] ([ID], [BookID], [AuthorId]) VALUES (1, 1, 2)
INSERT [dbo].[BookAuthor] ([ID], [BookID], [AuthorId]) VALUES (2, 1, 3)
INSERT [dbo].[BookAuthor] ([ID], [BookID], [AuthorId]) VALUES (3, 2, 1)
INSERT [dbo].[BookAuthor] ([ID], [BookID], [AuthorId]) VALUES (5, 3, 4)
INSERT [dbo].[BookAuthor] ([ID], [BookID], [AuthorId]) VALUES (9, 5, 3)
INSERT [dbo].[BookAuthor] ([ID], [BookID], [AuthorId]) VALUES (10, 5, 4)
SET IDENTITY_INSERT [dbo].[BookAuthor] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID], [Surname], [Name], [Patronymic], [PositionId], [DateOfBirth], [PhoneNumber]) VALUES (1, N'Чурка', N'Ебаная', N'Гори в аду', 1, CAST(N'2000-03-21' AS Date), N'5424')
INSERT [dbo].[Employee] ([ID], [Surname], [Name], [Patronymic], [PositionId], [DateOfBirth], [PhoneNumber]) VALUES (2, N'Системный', N'Администратор', N'Пидорас', 2, CAST(N'2000-03-21' AS Date), N'321')
INSERT [dbo].[Employee] ([ID], [Surname], [Name], [Patronymic], [PositionId], [DateOfBirth], [PhoneNumber]) VALUES (3, N'Гнида', N'Тварь', N'Сразь', 1, CAST(N'2000-03-21' AS Date), N'14')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Genre] ON 

INSERT [dbo].[Genre] ([ID], [Name]) VALUES (1, N'Гавно')
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (2, N'Моча')
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (3, N'Сборник Анекдотов')
INSERT [dbo].[Genre] ([ID], [Name]) VALUES (4, N'Сканворды')
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([ID], [Name]) VALUES (1, N'Lib')
INSERT [dbo].[Position] ([ID], [Name]) VALUES (2, N'Adm')
SET IDENTITY_INSERT [dbo].[Position] OFF
GO
SET IDENTITY_INSERT [dbo].[Publisher] ON 

INSERT [dbo].[Publisher] ([ID], [Name]) VALUES (1, N'ДНД       ')
INSERT [dbo].[Publisher] ([ID], [Name]) VALUES (2, N'СС        ')
SET IDENTITY_INSERT [dbo].[Publisher] OFF
GO
SET IDENTITY_INSERT [dbo].[Reader] ON 

INSERT [dbo].[Reader] ([ID], [Name], [Adress], [PnoneNumber], [DateOfBirth]) VALUES (1, N'Бочаров Олег Алоизович', N'Балкон', N'1488', CAST(N'2000-03-21' AS Date))
INSERT [dbo].[Reader] ([ID], [Name], [Adress], [PnoneNumber], [DateOfBirth]) VALUES (2, N'НЕгорка', N'Вартундир', N'123', CAST(N'2000-03-21' AS Date))
INSERT [dbo].[Reader] ([ID], [Name], [Adress], [PnoneNumber], [DateOfBirth]) VALUES (3, N'Даня имбирный', N'Дупа 3 ', N'1337', CAST(N'2000-03-21' AS Date))
SET IDENTITY_INSERT [dbo].[Reader] OFF
GO
SET IDENTITY_INSERT [dbo].[ReturnStatus] ON 

INSERT [dbo].[ReturnStatus] ([id], [Name]) VALUES (1, N'Taken')
INSERT [dbo].[ReturnStatus] ([id], [Name]) VALUES (2, N'Returned')
INSERT [dbo].[ReturnStatus] ([id], [Name]) VALUES (3, N'Debt')
SET IDENTITY_INSERT [dbo].[ReturnStatus] OFF
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Genre] FOREIGN KEY([GenreId])
REFERENCES [dbo].[Genre] ([ID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Genre]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Publisher] FOREIGN KEY([PubliserId])
REFERENCES [dbo].[Publisher] ([ID])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Publisher]
GO
ALTER TABLE [dbo].[BookAuthor]  WITH CHECK ADD  CONSTRAINT [FK_BookAuthor_Author] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Author] ([ID])
GO
ALTER TABLE [dbo].[BookAuthor] CHECK CONSTRAINT [FK_BookAuthor_Author]
GO
ALTER TABLE [dbo].[BookAuthor]  WITH CHECK ADD  CONSTRAINT [FK_BookAuthor_Book] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([ID])
GO
ALTER TABLE [dbo].[BookAuthor] CHECK CONSTRAINT [FK_BookAuthor_Book]
GO
ALTER TABLE [dbo].[BookIssue]  WITH CHECK ADD  CONSTRAINT [FK_BookIssue_Book] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([ID])
GO
ALTER TABLE [dbo].[BookIssue] CHECK CONSTRAINT [FK_BookIssue_Book]
GO
ALTER TABLE [dbo].[BookIssue]  WITH CHECK ADD  CONSTRAINT [FK_BookIssue_Employee] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[BookIssue] CHECK CONSTRAINT [FK_BookIssue_Employee]
GO
ALTER TABLE [dbo].[BookIssue]  WITH CHECK ADD  CONSTRAINT [FK_BookIssue_Reader] FOREIGN KEY([ReaderID])
REFERENCES [dbo].[Reader] ([ID])
GO
ALTER TABLE [dbo].[BookIssue] CHECK CONSTRAINT [FK_BookIssue_Reader]
GO
ALTER TABLE [dbo].[BookIssue]  WITH CHECK ADD  CONSTRAINT [FK_BookIssue_ReturnStatus] FOREIGN KEY([StatusId])
REFERENCES [dbo].[ReturnStatus] ([id])
GO
ALTER TABLE [dbo].[BookIssue] CHECK CONSTRAINT [FK_BookIssue_ReturnStatus]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Position] FOREIGN KEY([PositionId])
REFERENCES [dbo].[Position] ([ID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Position]
GO
USE [master]
GO
ALTER DATABASE [ValiullinLibrary] SET  READ_WRITE 
GO
