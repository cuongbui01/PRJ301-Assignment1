USE [master]
GO
/****** Object:  Database [Assignment]    Script Date: 6/28/2022 1:09:31 AM ******/
CREATE DATABASE [Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Assignment] SET QUERY_STORE = OFF
GO
USE [Assignment]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[aId] [int] IDENTITY(1,1) NOT NULL,
	[userName] [nvarchar](250) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[displayName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[aId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[attendId] [int] IDENTITY(1,1) NOT NULL,
	[studentId] [int] NOT NULL,
	[status] [bit] NULL,
	[comment] [nvarchar](250) NULL,
 CONSTRAINT [PK_Attendance] PRIMARY KEY CLUSTERED 
(
	[attendId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AttendSession]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttendSession](
	[attendId] [int] NOT NULL,
	[sessionId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[studentId] [int] NULL,
	[groupId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[groupId] [int] IDENTITY(1,1) NOT NULL,
	[groupName] [nvarchar](250) NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[groupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupLecture]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupLecture](
	[groupId] [int] NOT NULL,
	[lectureId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupRoom]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupRoom](
	[groupId] [int] NOT NULL,
	[roomId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupSession]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupSession](
	[groupId] [int] NULL,
	[sessionId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupSlot]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupSlot](
	[groupId] [int] NOT NULL,
	[slotId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupSubject]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupSubject](
	[groupId] [int] NOT NULL,
	[subjectId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[lectureId] [int] IDENTITY(1,1) NOT NULL,
	[lectureName] [nvarchar](50) NOT NULL,
	[lectureCode] [nvarchar](50) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NULL,
	[address] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[lectureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[roomId] [int] IDENTITY(1,1) NOT NULL,
	[roomName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[roomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[sessionId] [int] IDENTITY(1,1) NOT NULL,
	[sessionDate] [date] NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[sessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[slotId] [int] IDENTITY(1,1) NOT NULL,
	[slotName] [nvarchar](50) NOT NULL,
	[startTime] [time](7) NOT NULL,
	[endTime] [time](7) NOT NULL,
 CONSTRAINT [PK_Slot] PRIMARY KEY CLUSTERED 
(
	[slotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[studentId] [int] IDENTITY(1,1) NOT NULL,
	[rollNumber] [nvarchar](250) NOT NULL,
	[fullName] [nvarchar](250) NOT NULL,
	[gender] [bit] NOT NULL,
	[dob] [date] NOT NULL,
	[image] [nvarchar](250) NOT NULL,
	[address] [nvarchar](250) NOT NULL,
	[phoneNumber] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[studentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 6/28/2022 1:09:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[subjectId] [int] IDENTITY(1,1) NOT NULL,
	[subjectCode] [nvarchar](250) NOT NULL,
	[subjectName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[subjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Accounts] ON 

INSERT [dbo].[Accounts] ([aId], [userName], [password], [displayName]) VALUES (1, N'Assignmentbq', N'123', N'Heluu Assignment Quang Bui')
INSERT [dbo].[Accounts] ([aId], [userName], [password], [displayName]) VALUES (2, N'mra', N'1234', N'Heluu Mra')
SET IDENTITY_INSERT [dbo].[Accounts] OFF
GO
SET IDENTITY_INSERT [dbo].[Attendance] ON 

INSERT [dbo].[Attendance] ([attendId], [studentId], [status], [comment]) VALUES (1, 1, 1, NULL)
INSERT [dbo].[Attendance] ([attendId], [studentId], [status], [comment]) VALUES (2, 2, 1, NULL)
INSERT [dbo].[Attendance] ([attendId], [studentId], [status], [comment]) VALUES (3, 3, 1, NULL)
INSERT [dbo].[Attendance] ([attendId], [studentId], [status], [comment]) VALUES (4, 4, 1, NULL)
SET IDENTITY_INSERT [dbo].[Attendance] OFF
GO
INSERT [dbo].[AttendSession] ([attendId], [sessionId]) VALUES (1, 1)
INSERT [dbo].[AttendSession] ([attendId], [sessionId]) VALUES (2, 2)
INSERT [dbo].[AttendSession] ([attendId], [sessionId]) VALUES (3, 3)
INSERT [dbo].[AttendSession] ([attendId], [sessionId]) VALUES (4, 4)
GO
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (1, 1)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (2, 1)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (3, 1)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (4, 1)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (5, 1)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (6, 1)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (7, 1)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (8, 1)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (9, 2)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (10, 2)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (11, 2)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (11, 4)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (12, 2)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (12, 3)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (12, 6)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (13, 2)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (13, 6)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (14, 2)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (14, 6)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (15, 2)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (15, 5)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (15, 6)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (16, 3)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (17, 2)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (17, 3)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (17, 6)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (18, 3)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (19, 3)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (19, 5)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (20, 3)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (21, 3)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (22, 3)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (22, 4)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (24, 4)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (25, 4)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (26, 4)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (26, 5)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (27, 4)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (28, 5)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (29, 5)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (29, 6)
INSERT [dbo].[Enroll] ([studentId], [groupId]) VALUES (30, 6)
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([groupId], [groupName]) VALUES (1, N'SE1620')
INSERT [dbo].[Group] ([groupId], [groupName]) VALUES (2, N'SE1621')
INSERT [dbo].[Group] ([groupId], [groupName]) VALUES (3, N'SE1622')
INSERT [dbo].[Group] ([groupId], [groupName]) VALUES (4, N'SE1623')
INSERT [dbo].[Group] ([groupId], [groupName]) VALUES (5, N'SE1624')
INSERT [dbo].[Group] ([groupId], [groupName]) VALUES (6, N'SE1625')
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
INSERT [dbo].[GroupRoom] ([groupId], [roomId]) VALUES (1, 1)
INSERT [dbo].[GroupRoom] ([groupId], [roomId]) VALUES (2, 2)
GO
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 1)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 2)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 3)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 4)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 5)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 8)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 9)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 10)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 11)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 12)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 15)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 16)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 17)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 18)
INSERT [dbo].[GroupSession] ([groupId], [sessionId]) VALUES (1, 19)
GO
INSERT [dbo].[GroupSlot] ([groupId], [slotId]) VALUES (1, 1)
INSERT [dbo].[GroupSlot] ([groupId], [slotId]) VALUES (1, 2)
INSERT [dbo].[GroupSlot] ([groupId], [slotId]) VALUES (1, 3)
GO
INSERT [dbo].[GroupSubject] ([groupId], [subjectId]) VALUES (1, 1)
INSERT [dbo].[GroupSubject] ([groupId], [subjectId]) VALUES (1, 2)
INSERT [dbo].[GroupSubject] ([groupId], [subjectId]) VALUES (1, 3)
GO
SET IDENTITY_INSERT [dbo].[Lecture] ON 

INSERT [dbo].[Lecture] ([lectureId], [lectureName], [lectureCode], [gender], [dob], [address]) VALUES (1, N'Nguyễn Thúy Hường', N'HuongNT', 0, CAST(N'1989-06-20' AS Date), N'Hà N?i')
INSERT [dbo].[Lecture] ([lectureId], [lectureName], [lectureCode], [gender], [dob], [address]) VALUES (2, N'Trần Đình Tiến', N'TienTD', 1, CAST(N'1989-06-20' AS Date), N'Hà N?i')
INSERT [dbo].[Lecture] ([lectureId], [lectureName], [lectureCode], [gender], [dob], [address]) VALUES (3, N'Ngô Tùng Sơn', N'SonNT', 1, CAST(N'1989-06-20' AS Date), N'Hà N?i')
INSERT [dbo].[Lecture] ([lectureId], [lectureName], [lectureCode], [gender], [dob], [address]) VALUES (4, N'Đỗ Minh Thu', N'ThuDM', 0, CAST(N'1989-06-20' AS Date), N'Hà N?i')
INSERT [dbo].[Lecture] ([lectureId], [lectureName], [lectureCode], [gender], [dob], [address]) VALUES (5, N'Trần Đình Trí', N'TriTD', 1, CAST(N'1989-06-20' AS Date), N'Hà N?i')
SET IDENTITY_INSERT [dbo].[Lecture] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([roomId], [roomName]) VALUES (1, N'BE-213    ')
INSERT [dbo].[Room] ([roomId], [roomName]) VALUES (2, N'DE-303    ')
INSERT [dbo].[Room] ([roomId], [roomName]) VALUES (3, N'DE-202    ')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Session] ON 

INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (1, CAST(N'2022-05-30' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (2, CAST(N'2022-05-31' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (3, CAST(N'2022-06-01' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (4, CAST(N'2022-06-02' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (5, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (6, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (7, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (8, CAST(N'2022-06-06' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (9, CAST(N'2022-06-07' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (10, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (11, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (12, CAST(N'2022-06-10' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (13, CAST(N'2022-06-11' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (14, CAST(N'2022-06-12' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (15, CAST(N'2022-06-13' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (16, CAST(N'2022-06-14' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (17, CAST(N'2022-06-15' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (18, CAST(N'2022-06-16' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (19, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (20, CAST(N'2022-06-18' AS Date))
INSERT [dbo].[Session] ([sessionId], [sessionDate]) VALUES (21, CAST(N'2022-06-19' AS Date))
SET IDENTITY_INSERT [dbo].[Session] OFF
GO
SET IDENTITY_INSERT [dbo].[Slot] ON 

INSERT [dbo].[Slot] ([slotId], [slotName], [startTime], [endTime]) VALUES (1, N'Slot 1', CAST(N'07:30:00' AS Time), CAST(N'09:00:00' AS Time))
INSERT [dbo].[Slot] ([slotId], [slotName], [startTime], [endTime]) VALUES (2, N'Slot 2', CAST(N'09:10:00' AS Time), CAST(N'10:40:00' AS Time))
INSERT [dbo].[Slot] ([slotId], [slotName], [startTime], [endTime]) VALUES (3, N'Slot 3', CAST(N'10:50:00' AS Time), CAST(N'12:20:00' AS Time))
INSERT [dbo].[Slot] ([slotId], [slotName], [startTime], [endTime]) VALUES (4, N'Slot 4', CAST(N'12:50:00' AS Time), CAST(N'14:20:00' AS Time))
INSERT [dbo].[Slot] ([slotId], [slotName], [startTime], [endTime]) VALUES (5, N'Slot 5', CAST(N'14:30:00' AS Time), CAST(N'16:00:00' AS Time))
INSERT [dbo].[Slot] ([slotId], [slotName], [startTime], [endTime]) VALUES (6, N'Slot 6', CAST(N'16:10:00' AS Time), CAST(N'17:40:00' AS Time))
SET IDENTITY_INSERT [dbo].[Slot] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (1, N'HE150907', N'Bùi Quang Cường', 1, CAST(N'2001-01-10' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0962813919')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (2, N'HE159978', N'Thành Hữu Ngân Giang', 0, CAST(N'2001-03-04' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0977865123')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (3, N'HE156632', N'Nguyễn Phúc Hưng', 1, CAST(N'2001-09-08' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0988362776')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (4, N'HE150907', N'Nguyễn Trà My', 0, CAST(N'2001-09-03' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0332031245')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (5, N'HE159983', N'Phạm Hồng Phước', 1, CAST(N'2001-02-12' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0976541234')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (6, N'HE157651', N'Phạm Hồng Hạnh', 0, CAST(N'2001-09-18' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0334567888')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (7, N'HE157878', N'Hà Anh Tuấm', 1, CAST(N'2001-12-11' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0334987123')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (8, N'HE155346', N'Ha Thu An', 0, CAST(N'2000-12-05' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0933456999')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (9, N'HE153366', N'Đỗ Anh Dũng', 1, CAST(N'1999-07-03' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0978666333')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (10, N'HE159981', N'Bùi Quỳnh Như', 0, CAST(N'2000-07-12' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0978659999')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (11, N'HE151892', N'Nguyễn Thu Trà', 0, CAST(N'2001-05-08' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0955123476')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (12, N'HE150039', N'Đào Mỹ Anh', 0, CAST(N'2001-01-02' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0977643812')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (13, N'HE150102', N'Lê Thùy Trang', 0, CAST(N'2002-03-09' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0934567822')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (14, N'HE150892', N'Vũ Ngọc Ánh', 0, CAST(N'1999-02-04' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0977445321')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (15, N'HE150081', N'Phạm Thu Hương', 0, CAST(N'2001-07-02' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0334145672')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (16, N'HE147791', N'Đỗ Thúy Hường', 0, CAST(N'2001-08-03' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0966321478')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (17, N'HE150762', N'Đào Trọng Tiến', 1, CAST(N'2001-01-15' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0334561783')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (18, N'HE150984', N'Ngô Viết Cảnh', 1, CAST(N'2001-03-19' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0914667543')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (19, N'HE160809', N'Phạm Anh Vinh', 1, CAST(N'2000-09-01' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0334555624')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (20, N'HE161032', N'Chu Nguyệt Anh', 0, CAST(N'2001-04-07' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0978788677')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (21, N'HE156789', N'Nguyễn Đình Sang', 1, CAST(N'2001-09-03' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0334789888')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (22, N'HE145677', N'Phạm Thế Dũng', 1, CAST(N'2001-01-04' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0956123461')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (23, N'HE156681', N'Nguyễn Khánh Phương', 1, CAST(N'2001-12-05' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0337861233')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (24, N'HE154971', N'Ngô Bá Chung', 1, CAST(N'1999-12-21' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0337666512')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (25, N'HE153351', N'Nguyễn Thế Huân', 1, CAST(N'2001-12-04' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0334789876')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (26, N'HE150803', N'Phạm Duy Minh', 1, CAST(N'2001-10-17' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0989786542')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (27, N'HE150017', N'Trần Anh Hiếu', 1, CAST(N'2001-09-01' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0332187987')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (28, N'HE155987', N'Đào Tiến Trung', 1, CAST(N'2001-07-15' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0979666583')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (29, N'HE160542', N'Phạm Anh Thư', 1, CAST(N'2000-06-25' AS Date), N'assets/img/anhnam.jpg', N'Hà N?i', N'0988556919')
INSERT [dbo].[Student] ([studentId], [rollNumber], [fullName], [gender], [dob], [image], [address], [phoneNumber]) VALUES (30, N'HE150476', N'Nguyễn Thị Ngọc', 0, CAST(N'2001-03-16' AS Date), N'assets/img/anhnu.jpg', N'Hà N?i', N'0988312766')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[Subject] ON 

INSERT [dbo].[Subject] ([subjectId], [subjectCode], [subjectName]) VALUES (1, N'PRJ301', N'Java Web Application Development')
INSERT [dbo].[Subject] ([subjectId], [subjectCode], [subjectName]) VALUES (2, N'WED201c', N'Web Design')
INSERT [dbo].[Subject] ([subjectId], [subjectCode], [subjectName]) VALUES (3, N'PRN211', N'Basic Cross-Platform Application Programming With .NET')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD  CONSTRAINT [FK_Attendance_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([studentId])
GO
ALTER TABLE [dbo].[Attendance] CHECK CONSTRAINT [FK_Attendance_Student]
GO
ALTER TABLE [dbo].[AttendSession]  WITH CHECK ADD  CONSTRAINT [FK_AttendSession_Attendance] FOREIGN KEY([attendId])
REFERENCES [dbo].[Attendance] ([attendId])
GO
ALTER TABLE [dbo].[AttendSession] CHECK CONSTRAINT [FK_AttendSession_Attendance]
GO
ALTER TABLE [dbo].[AttendSession]  WITH CHECK ADD  CONSTRAINT [FK_AttendSession_Session] FOREIGN KEY([sessionId])
REFERENCES [dbo].[Session] ([sessionId])
GO
ALTER TABLE [dbo].[AttendSession] CHECK CONSTRAINT [FK_AttendSession_Session]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([groupId])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Group]
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD  CONSTRAINT [FK_Enroll_Student] FOREIGN KEY([studentId])
REFERENCES [dbo].[Student] ([studentId])
GO
ALTER TABLE [dbo].[Enroll] CHECK CONSTRAINT [FK_Enroll_Student]
GO
ALTER TABLE [dbo].[GroupLecture]  WITH CHECK ADD  CONSTRAINT [FK_GroupLecture_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([groupId])
GO
ALTER TABLE [dbo].[GroupLecture] CHECK CONSTRAINT [FK_GroupLecture_Group]
GO
ALTER TABLE [dbo].[GroupLecture]  WITH CHECK ADD  CONSTRAINT [FK_GroupLecture_Lecture] FOREIGN KEY([lectureId])
REFERENCES [dbo].[Lecture] ([lectureId])
GO
ALTER TABLE [dbo].[GroupLecture] CHECK CONSTRAINT [FK_GroupLecture_Lecture]
GO
ALTER TABLE [dbo].[GroupRoom]  WITH CHECK ADD  CONSTRAINT [FK_GroupRoom_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([groupId])
GO
ALTER TABLE [dbo].[GroupRoom] CHECK CONSTRAINT [FK_GroupRoom_Group]
GO
ALTER TABLE [dbo].[GroupRoom]  WITH CHECK ADD  CONSTRAINT [FK_GroupRoom_Room] FOREIGN KEY([roomId])
REFERENCES [dbo].[Room] ([roomId])
GO
ALTER TABLE [dbo].[GroupRoom] CHECK CONSTRAINT [FK_GroupRoom_Room]
GO
ALTER TABLE [dbo].[GroupSession]  WITH CHECK ADD  CONSTRAINT [FK_GroupSession_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([groupId])
GO
ALTER TABLE [dbo].[GroupSession] CHECK CONSTRAINT [FK_GroupSession_Group]
GO
ALTER TABLE [dbo].[GroupSession]  WITH CHECK ADD  CONSTRAINT [FK_GroupSession_Session] FOREIGN KEY([sessionId])
REFERENCES [dbo].[Session] ([sessionId])
GO
ALTER TABLE [dbo].[GroupSession] CHECK CONSTRAINT [FK_GroupSession_Session]
GO
ALTER TABLE [dbo].[GroupSlot]  WITH CHECK ADD  CONSTRAINT [FK_GroupSlot_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([groupId])
GO
ALTER TABLE [dbo].[GroupSlot] CHECK CONSTRAINT [FK_GroupSlot_Group]
GO
ALTER TABLE [dbo].[GroupSlot]  WITH CHECK ADD  CONSTRAINT [FK_GroupSlot_Slot] FOREIGN KEY([slotId])
REFERENCES [dbo].[Slot] ([slotId])
GO
ALTER TABLE [dbo].[GroupSlot] CHECK CONSTRAINT [FK_GroupSlot_Slot]
GO
ALTER TABLE [dbo].[GroupSubject]  WITH CHECK ADD  CONSTRAINT [FK_GroupSubject_Group] FOREIGN KEY([groupId])
REFERENCES [dbo].[Group] ([groupId])
GO
ALTER TABLE [dbo].[GroupSubject] CHECK CONSTRAINT [FK_GroupSubject_Group]
GO
ALTER TABLE [dbo].[GroupSubject]  WITH CHECK ADD  CONSTRAINT [FK_GroupSubject_Subject] FOREIGN KEY([subjectId])
REFERENCES [dbo].[Subject] ([subjectId])
GO
ALTER TABLE [dbo].[GroupSubject] CHECK CONSTRAINT [FK_GroupSubject_Subject]
GO
USE [master]
GO
ALTER DATABASE [Assignment] SET  READ_WRITE 
GO
