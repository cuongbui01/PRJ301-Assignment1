USE [master]
GO
/****** Object:  Database [Assignment]    Script Date: 7/5/2022 9:45:55 PM ******/
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
ALTER DATABASE [Assignment] SET AUTO_CLOSE ON 
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
ALTER DATABASE [Assignment] SET  ENABLE_BROKER 
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
/****** Object:  Table [dbo].[Accounts]    Script Date: 7/5/2022 9:45:55 PM ******/
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
/****** Object:  Table [dbo].[CourseSchedule]    Script Date: 7/5/2022 9:45:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseSchedule](
	[TeachingScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[subjectId] [int] NULL,
	[SessionDate] [date] NULL,
	[SlotId] [int] NULL,
	[RoomId] [int] NULL,
	[Description] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[TeachingScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 7/5/2022 9:45:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[GroupId] [int] NOT NULL,
	[StudentId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Course]    Script Date: 7/5/2022 9:45:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Course](
	[GroupId] [int] NOT NULL,
	[TeachingScheduleId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 7/5/2022 9:45:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[GroupCode] [nvarchar](50) NULL,
	[GroupDescription] [nvarchar](300) NULL,
	[LectureId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 7/5/2022 9:45:55 PM ******/
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
/****** Object:  Table [dbo].[RollCallBook]    Script Date: 7/5/2022 9:45:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RollCallBook](
	[GroupId] [int] IDENTITY(1,1) NOT NULL,
	[TeachingScheduleId] [int] NULL,
	[StudentId] [int] NULL,
	[IsAbsent] [bit] NULL,
	[Comment] [nvarchar](300) NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/5/2022 9:45:55 PM ******/
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
/****** Object:  Table [dbo].[Slot]    Script Date: 7/5/2022 9:45:55 PM ******/
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
/****** Object:  Table [dbo].[Student]    Script Date: 7/5/2022 9:45:55 PM ******/
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
/****** Object:  Table [dbo].[Subject]    Script Date: 7/5/2022 9:45:55 PM ******/
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
SET IDENTITY_INSERT [dbo].[CourseSchedule] ON 

INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (1, 1, CAST(N'2011-07-23' AS Date), 1, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (4, 3, CAST(N'2011-07-26' AS Date), 1, 2, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (6, 3, CAST(N'2011-07-28' AS Date), 3, 2, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (7, 5, CAST(N'2011-07-29' AS Date), 1, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (10, 6, CAST(N'2011-08-01' AS Date), 1, 3, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (11, 6, CAST(N'2011-08-02' AS Date), 2, 3, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (12, 6, CAST(N'2011-08-03' AS Date), 3, 3, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (13, 7, CAST(N'2011-08-04' AS Date), 1, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (14, 8, CAST(N'2011-08-05' AS Date), 1, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (15, 1, CAST(N'2011-08-06' AS Date), 1, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (16, 3, CAST(N'2011-08-07' AS Date), 1, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (17, 5, CAST(N'2011-07-23' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (18, 6, CAST(N'2011-07-24' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (19, 7, CAST(N'2011-07-25' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (20, 8, CAST(N'2011-07-26' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (21, 1, CAST(N'2011-07-27' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (22, 3, CAST(N'2011-07-28' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (23, 5, CAST(N'2011-07-29' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (24, 6, CAST(N'2011-07-30' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (25, 7, CAST(N'2011-07-31' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (26, 8, CAST(N'2011-08-01' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (27, 1, CAST(N'2011-08-02' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (28, 4, CAST(N'2011-08-03' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (29, 5, CAST(N'2011-08-04' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (30, 6, CAST(N'2011-08-05' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (31, 7, CAST(N'2011-08-06' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (32, 8, CAST(N'2011-08-07' AS Date), 2, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (33, 1, CAST(N'2011-07-23' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (34, 1, CAST(N'2011-07-24' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (35, 1, CAST(N'2011-07-25' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (36, 1, CAST(N'2011-07-26' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (37, 1, CAST(N'2011-07-27' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (38, 1, CAST(N'2011-07-28' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (39, 1, CAST(N'2011-07-29' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (40, 1, CAST(N'2011-07-30' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (41, 1, CAST(N'2011-07-31' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (42, 1, CAST(N'2011-08-01' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (43, 1, CAST(N'2011-08-02' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (44, 1, CAST(N'2011-08-03' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (45, 1, CAST(N'2011-08-04' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (46, 1, CAST(N'2011-08-05' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (47, 1, CAST(N'2011-08-06' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (48, 1, CAST(N'2011-08-07' AS Date), 3, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (50, 3, CAST(N'2011-07-23' AS Date), 4, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (51, 3, CAST(N'2011-07-23' AS Date), 5, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (52, 5, CAST(N'2011-07-23' AS Date), 6, 1, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (53, 7, CAST(N'2011-07-23' AS Date), 2, 3, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (54, 6, CAST(N'2011-07-23' AS Date), 3, 3, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (55, 1, CAST(N'2011-07-23' AS Date), 4, 3, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (56, 7, CAST(N'2011-07-23' AS Date), 5, 3, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (57, 7, CAST(N'2011-07-23' AS Date), 6, 3, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (58, 5, CAST(N'2011-07-23' AS Date), 1, 3, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (59, 8, CAST(N'2011-07-23' AS Date), 1, 2, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (60, 8, CAST(N'2011-07-23' AS Date), 2, 2, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (61, 8, CAST(N'2011-07-23' AS Date), 3, 2, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (62, 9, CAST(N'2011-07-23' AS Date), 4, 2, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (63, 9, CAST(N'2011-07-23' AS Date), 5, 2, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (64, 9, CAST(N'2011-07-23' AS Date), 6, 2, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (65, 10, CAST(N'2011-07-23' AS Date), 1, 5, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (66, 10, CAST(N'2011-07-23' AS Date), 2, 5, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (67, 10, CAST(N'2011-07-23' AS Date), 3, 6, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (68, 3, CAST(N'2011-07-23' AS Date), 6, 6, NULL)
INSERT [dbo].[CourseSchedule] ([TeachingScheduleId], [subjectId], [SessionDate], [SlotId], [RoomId], [Description]) VALUES (69, 5, CAST(N'2011-07-23' AS Date), 2, 7, NULL)
SET IDENTITY_INSERT [dbo].[CourseSchedule] OFF
GO
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 1)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 2)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 3)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 4)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 5)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 6)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 7)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 8)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 9)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 10)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 11)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 12)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 13)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 14)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 15)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 16)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 17)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 18)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 19)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 20)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 21)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 22)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 23)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 24)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 25)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 26)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 27)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 28)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 29)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (1, 30)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 31)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 32)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 33)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 34)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 35)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 36)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 37)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 38)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 39)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 40)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 41)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 42)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 43)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 44)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 45)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 46)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 47)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 48)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 49)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 50)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 51)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 52)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 53)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 54)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 55)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 56)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 57)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (4, 58)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 59)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 60)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 61)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 62)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 63)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 64)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 65)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 66)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 67)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 68)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 69)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 70)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 71)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 72)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 73)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 74)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 75)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 76)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 77)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 78)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 79)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 80)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 81)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 82)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 83)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 84)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 85)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 86)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (5, 87)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 47)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 48)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 49)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 50)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 51)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 52)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 53)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 54)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 55)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 56)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 57)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 58)
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 59)
GO
INSERT [dbo].[Enroll] ([GroupId], [StudentId]) VALUES (6, 60)
GO
INSERT [dbo].[Group_Course] ([GroupId], [TeachingScheduleId]) VALUES (1, 1)
INSERT [dbo].[Group_Course] ([GroupId], [TeachingScheduleId]) VALUES (1, 7)
INSERT [dbo].[Group_Course] ([GroupId], [TeachingScheduleId]) VALUES (1, 4)
INSERT [dbo].[Group_Course] ([GroupId], [TeachingScheduleId]) VALUES (1, 6)
GO
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (1, N'SE0507', N'SE0507', 1)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (4, N'SE0508', N'SE0508', 2)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (5, N'SE0509', N'SE0509', 1)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (6, N'SE0511', N'SE0511', 3)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (7, N'SE0512', N'SE0512', 4)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (8, N'SE0510', N'SE0510', 1)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (9, N'SE0515', N'SE0515', 2)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (10, N'SE0519', N'SE0519', 1)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (11, N'!!@', N'lkjlkj', 1)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (12, N'!!@', N'lkjlkj', 2)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (1011, N'sd231@!@!', N'', 2)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (1012, N'sd231@!@!', N'èdghdsdfàd
sdfsdf', 1)
INSERT [dbo].[Groups] ([GroupId], [GroupCode], [GroupDescription], [LectureId]) VALUES (1013, N'alkdjf', N'Hahahaha', 2)
SET IDENTITY_INSERT [dbo].[Groups] OFF
GO
SET IDENTITY_INSERT [dbo].[Lecture] ON 

INSERT [dbo].[Lecture] ([lectureId], [lectureName], [lectureCode], [gender], [dob], [address]) VALUES (1, N'Nguyễn Thúy Hường', N'HuongNT', 0, CAST(N'1989-06-20' AS Date), N'Hà N?i')
INSERT [dbo].[Lecture] ([lectureId], [lectureName], [lectureCode], [gender], [dob], [address]) VALUES (2, N'Trần Đình Tiến', N'TienTD', 1, CAST(N'1989-06-20' AS Date), N'Hà N?i')
INSERT [dbo].[Lecture] ([lectureId], [lectureName], [lectureCode], [gender], [dob], [address]) VALUES (3, N'Ngô Tùng Sơn', N'SonNT', 1, CAST(N'1989-06-20' AS Date), N'Hà N?i')
INSERT [dbo].[Lecture] ([lectureId], [lectureName], [lectureCode], [gender], [dob], [address]) VALUES (4, N'Đỗ Minh Thu', N'ThuDM', 0, CAST(N'1989-06-20' AS Date), N'Hà N?i')
INSERT [dbo].[Lecture] ([lectureId], [lectureName], [lectureCode], [gender], [dob], [address]) VALUES (5, N'Trần Đình Trí', N'TriTD', 1, CAST(N'1989-06-20' AS Date), N'Hà N?i')
SET IDENTITY_INSERT [dbo].[Lecture] OFF
GO
SET IDENTITY_INSERT [dbo].[RollCallBook] ON 

INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1, 1, 1, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (2, 1, 2, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (3, 1, 3, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (4, 1, 4, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (5, 1, 5, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (6, 1, 6, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (7, 1, 7, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (8, 1, 8, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (9, 1, 9, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (10, 1, 10, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (11, 1, 11, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (12, 1, 12, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (13, 1, 13, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (14, 1, 14, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (15, 1, 15, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (16, 1, 16, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (17, 1, 17, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (18, 1, 18, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (19, 1, 19, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (20, 1, 20, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (21, 1, 21, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (22, 1, 22, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (23, 1, 23, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (24, 1, 24, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (25, 1, 25, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (26, 1, 26, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (27, 1, 27, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (28, 1, 28, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (29, 1, 29, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (30, 1, 30, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (91, 4, 1, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (92, 4, 32, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (93, 4, 33, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (94, 4, 34, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (95, 4, 35, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (96, 4, 36, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (97, 4, 37, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (98, 4, 38, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (99, 4, 39, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (100, 4, 40, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (101, 4, 41, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (102, 4, 42, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (103, 4, 43, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (104, 4, 44, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (105, 4, 45, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (106, 4, 46, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (107, 4, 47, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (108, 4, 48, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (109, 4, 49, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (110, 4, 50, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (111, 4, 51, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (112, 4, 52, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (113, 4, 53, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (114, 4, 54, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (115, 4, 55, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (116, 4, 56, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (117, 4, 57, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (118, 4, 58, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (147, 6, 1, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (148, 6, 32, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (149, 6, 33, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (150, 6, 34, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (151, 6, 35, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (152, 6, 36, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (153, 6, 37, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (154, 6, 38, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (155, 6, 39, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (156, 6, 40, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (157, 6, 41, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (158, 6, 42, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (159, 6, 43, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (160, 6, 44, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (161, 6, 45, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (162, 6, 46, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (163, 6, 47, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (164, 6, 48, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (165, 6, 49, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (166, 6, 50, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (167, 6, 51, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (168, 6, 52, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (169, 6, 53, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (170, 6, 54, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (171, 6, 55, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (172, 6, 56, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (173, 6, 57, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (174, 6, 58, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (175, 7, 1, 0, N'hoc tot')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (176, 7, 60, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (177, 7, 61, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (178, 7, 62, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (179, 7, 63, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (180, 7, 64, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (181, 7, 65, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (182, 7, 66, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (183, 7, 67, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (184, 7, 68, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (185, 7, 69, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (186, 7, 70, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (187, 7, 71, 0, N'null')
GO
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (188, 7, 72, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (189, 7, 73, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (190, 7, 74, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (191, 7, 75, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (192, 7, 76, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (193, 7, 77, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (194, 7, 78, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (195, 7, 79, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (196, 7, 80, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (197, 7, 81, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (198, 7, 82, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (199, 7, 83, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (200, 7, 84, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (201, 7, 85, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (202, 7, 86, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (203, 7, 87, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (262, 10, 147, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (263, 10, 148, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (264, 10, 149, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (265, 10, 150, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (266, 10, 151, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (267, 10, 152, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (268, 10, 153, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (269, 10, 154, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (270, 10, 155, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (271, 10, 156, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (272, 10, 157, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (273, 10, 158, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (274, 10, 159, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (275, 10, 160, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (276, 10, 161, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (277, 10, 162, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (278, 10, 163, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (279, 10, 164, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (280, 10, 165, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (281, 10, 166, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (282, 10, 167, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (283, 10, 168, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (284, 10, 169, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (285, 10, 170, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (286, 10, 171, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (287, 10, 172, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (288, 10, 173, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (289, 10, 174, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (290, 10, 175, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (291, 10, 176, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (292, 11, 147, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (293, 11, 148, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (294, 11, 149, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (295, 11, 150, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (296, 11, 151, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (297, 11, 152, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (298, 11, 153, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (299, 11, 154, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (300, 11, 155, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (301, 11, 156, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (302, 11, 157, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (303, 11, 158, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (304, 11, 159, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (305, 11, 160, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (306, 11, 161, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (307, 11, 162, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (308, 11, 163, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (309, 11, 164, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (310, 11, 165, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (311, 11, 166, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (312, 11, 167, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (313, 11, 168, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (314, 11, 169, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (315, 11, 170, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (316, 11, 171, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (317, 11, 172, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (318, 11, 173, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (319, 11, 174, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (320, 11, 175, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (321, 11, 176, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (322, 12, 147, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (323, 12, 148, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (324, 12, 149, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (325, 12, 150, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (326, 12, 151, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (327, 12, 152, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (328, 12, 153, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (329, 12, 154, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (330, 12, 155, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (331, 12, 156, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (332, 12, 157, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (333, 12, 158, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (334, 12, 159, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (335, 12, 160, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (336, 12, 161, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (337, 12, 162, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (338, 12, 163, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (339, 12, 164, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (340, 12, 165, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (341, 12, 166, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (342, 12, 167, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (343, 12, 168, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (344, 12, 169, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (345, 12, 170, 0, NULL)
GO
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (346, 12, 171, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (347, 12, 172, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (348, 12, 173, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (349, 12, 174, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (350, 12, 175, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (351, 12, 176, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (352, 13, 88, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (353, 13, 89, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (354, 13, 90, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (355, 13, 91, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (356, 13, 92, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (357, 13, 93, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (358, 13, 94, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (359, 13, 95, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (360, 13, 96, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (361, 13, 97, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (362, 13, 98, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (363, 13, 99, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (364, 13, 100, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (365, 13, 101, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (366, 13, 102, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (367, 13, 103, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (368, 13, 104, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (369, 13, 105, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (370, 13, 106, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (371, 13, 107, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (372, 13, 108, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (373, 13, 109, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (374, 13, 110, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (375, 13, 111, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (376, 13, 112, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (377, 13, 113, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (378, 13, 114, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (379, 13, 115, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (380, 13, 116, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (381, 13, 117, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (382, 14, 118, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (383, 14, 119, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (384, 14, 120, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (385, 14, 121, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (386, 14, 122, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (387, 14, 123, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (388, 14, 124, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (389, 14, 125, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (390, 14, 126, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (391, 14, 127, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (392, 14, 128, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (393, 14, 129, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (394, 14, 130, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (395, 14, 131, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (396, 14, 132, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (397, 14, 133, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (398, 14, 134, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (399, 14, 135, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (400, 14, 136, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (401, 14, 137, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (402, 14, 138, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (403, 14, 139, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (404, 14, 140, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (405, 14, 141, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (406, 14, 142, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (407, 14, 143, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (408, 14, 144, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (409, 14, 145, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (410, 14, 146, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (411, 15, 1, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (412, 15, 2, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (413, 15, 3, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (414, 15, 4, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (415, 15, 5, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (416, 15, 6, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (417, 15, 7, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (418, 15, 8, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (419, 15, 9, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (420, 15, 10, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (421, 15, 11, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (422, 15, 12, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (423, 15, 13, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (424, 15, 14, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (425, 15, 15, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (426, 15, 16, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (427, 15, 17, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (428, 15, 18, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (429, 15, 19, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (430, 15, 20, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (431, 15, 21, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (432, 15, 22, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (433, 15, 23, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (434, 15, 24, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (435, 15, 25, 1, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (436, 15, 26, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (437, 15, 27, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (438, 15, 28, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (439, 15, 29, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (440, 15, 30, 0, N'')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (441, 16, 31, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (442, 16, 32, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (443, 16, 33, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (444, 16, 34, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (445, 16, 35, 0, NULL)
GO
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (446, 16, 36, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (447, 16, 37, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (448, 16, 38, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (449, 16, 39, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (450, 16, 40, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (451, 16, 41, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (452, 16, 42, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (453, 16, 43, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (454, 16, 44, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (455, 16, 45, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (456, 16, 46, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (457, 16, 47, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (458, 16, 48, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (459, 16, 49, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (460, 16, 50, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (461, 16, 51, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (462, 16, 52, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (463, 16, 53, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (464, 16, 54, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (465, 16, 55, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (466, 16, 56, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (467, 16, 57, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (468, 16, 58, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (469, 17, 59, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (470, 17, 60, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (471, 17, 61, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (472, 17, 62, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (473, 17, 63, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (474, 17, 64, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (475, 17, 65, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (476, 17, 66, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (477, 17, 67, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (478, 17, 68, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (479, 17, 69, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (480, 17, 70, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (481, 17, 71, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (482, 17, 72, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (483, 17, 73, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (484, 17, 74, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (485, 17, 75, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (486, 17, 76, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (487, 17, 77, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (488, 17, 78, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (489, 17, 79, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (490, 17, 80, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (491, 17, 81, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (492, 17, 82, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (493, 17, 83, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (494, 17, 84, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (495, 17, 85, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (496, 17, 86, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (497, 17, 87, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (498, 18, 147, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (499, 18, 148, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (500, 18, 149, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (501, 18, 150, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (502, 18, 151, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (503, 18, 152, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (504, 18, 153, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (505, 18, 154, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (506, 18, 155, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (507, 18, 156, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (508, 18, 157, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (509, 18, 158, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (510, 18, 159, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (511, 18, 160, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (512, 18, 161, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (513, 18, 162, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (514, 18, 163, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (515, 18, 164, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (516, 18, 165, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (517, 18, 166, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (518, 18, 167, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (519, 18, 168, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (520, 18, 169, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (521, 18, 170, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (522, 18, 171, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (523, 18, 172, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (524, 18, 173, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (525, 18, 174, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (526, 18, 175, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (527, 18, 176, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (528, 19, 88, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (529, 19, 89, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (530, 19, 90, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (531, 19, 91, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (532, 19, 92, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (533, 19, 93, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (534, 19, 94, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (535, 19, 95, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (536, 19, 96, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (537, 19, 97, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (538, 19, 98, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (539, 19, 99, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (540, 19, 100, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (541, 19, 101, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (542, 19, 102, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (543, 19, 103, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (544, 19, 104, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (545, 19, 105, 0, NULL)
GO
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (546, 19, 106, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (547, 19, 107, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (548, 19, 108, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (549, 19, 109, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (550, 19, 110, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (551, 19, 111, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (552, 19, 112, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (553, 19, 113, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (554, 19, 114, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (555, 19, 115, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (556, 19, 116, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (557, 19, 117, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (558, 20, 118, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (559, 20, 119, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (560, 20, 120, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (561, 20, 121, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (562, 20, 122, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (563, 20, 123, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (564, 20, 124, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (565, 20, 125, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (566, 20, 126, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (567, 20, 127, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (568, 20, 128, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (569, 20, 129, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (570, 20, 130, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (571, 20, 131, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (572, 20, 132, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (573, 20, 133, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (574, 20, 134, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (575, 20, 135, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (576, 20, 136, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (577, 20, 137, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (578, 20, 138, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (579, 20, 139, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (580, 20, 140, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (581, 20, 141, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (582, 20, 142, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (583, 20, 143, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (584, 20, 144, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (585, 20, 145, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (586, 20, 146, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (587, 21, 1, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (588, 21, 2, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (589, 21, 3, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (590, 21, 4, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (591, 21, 5, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (592, 21, 6, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (593, 21, 7, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (594, 21, 8, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (595, 21, 9, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (596, 21, 10, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (597, 21, 11, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (598, 21, 12, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (599, 21, 13, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (600, 21, 14, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (601, 21, 15, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (602, 21, 16, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (603, 21, 17, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (604, 21, 18, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (605, 21, 19, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (606, 21, 20, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (607, 21, 21, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (608, 21, 22, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (609, 21, 23, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (610, 21, 24, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (611, 21, 25, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (612, 21, 26, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (613, 21, 27, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (614, 21, 28, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (615, 21, 29, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (616, 21, 30, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (617, 22, 31, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (618, 22, 32, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (619, 22, 33, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (620, 22, 34, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (621, 22, 35, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (622, 22, 36, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (623, 22, 37, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (624, 22, 38, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (625, 22, 39, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (626, 22, 40, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (627, 22, 41, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (628, 22, 42, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (629, 22, 43, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (630, 22, 44, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (631, 22, 45, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (632, 22, 46, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (633, 22, 47, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (634, 22, 48, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (635, 22, 49, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (636, 22, 50, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (637, 22, 51, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (638, 22, 52, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (639, 22, 53, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (640, 22, 54, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (641, 22, 55, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (642, 22, 56, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (643, 22, 57, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (644, 22, 58, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (645, 23, 59, 0, NULL)
GO
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (646, 23, 60, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (647, 23, 61, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (648, 23, 62, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (649, 23, 63, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (650, 23, 64, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (651, 23, 65, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (652, 23, 66, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (653, 23, 67, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (654, 23, 68, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (655, 23, 69, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (656, 23, 70, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (657, 23, 71, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (658, 23, 72, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (659, 23, 73, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (660, 23, 74, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (661, 23, 75, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (662, 23, 76, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (663, 23, 77, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (664, 23, 78, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (665, 23, 79, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (666, 23, 80, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (667, 23, 81, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (668, 23, 82, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (669, 23, 83, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (670, 23, 84, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (671, 23, 85, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (672, 23, 86, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (673, 23, 87, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (674, 24, 147, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (675, 24, 148, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (676, 24, 149, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (677, 24, 150, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (678, 24, 151, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (679, 24, 152, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (680, 24, 153, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (681, 24, 154, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (682, 24, 155, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (683, 24, 156, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (684, 24, 157, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (685, 24, 158, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (686, 24, 159, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (687, 24, 160, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (688, 24, 161, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (689, 24, 162, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (690, 24, 163, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (691, 24, 164, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (692, 24, 165, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (693, 24, 166, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (694, 24, 167, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (695, 24, 168, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (696, 24, 169, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (697, 24, 170, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (698, 24, 171, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (699, 24, 172, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (700, 24, 173, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (701, 24, 174, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (702, 24, 175, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (703, 24, 176, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (704, 25, 88, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (705, 25, 89, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (706, 25, 90, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (707, 25, 91, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (708, 25, 92, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (709, 25, 93, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (710, 25, 94, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (711, 25, 95, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (712, 25, 96, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (713, 25, 97, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (714, 25, 98, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (715, 25, 99, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (716, 25, 100, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (717, 25, 101, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (718, 25, 102, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (719, 25, 103, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (720, 25, 104, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (721, 25, 105, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (722, 25, 106, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (723, 25, 107, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (724, 25, 108, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (725, 25, 109, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (726, 25, 110, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (727, 25, 111, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (728, 25, 112, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (729, 25, 113, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (730, 25, 114, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (731, 25, 115, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (732, 25, 116, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (733, 25, 117, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (734, 26, 118, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (735, 26, 119, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (736, 26, 120, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (737, 26, 121, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (738, 26, 122, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (739, 26, 123, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (740, 26, 124, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (741, 26, 125, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (742, 26, 126, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (743, 26, 127, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (744, 26, 128, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (745, 26, 129, 0, N'null')
GO
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (746, 26, 130, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (747, 26, 131, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (748, 26, 132, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (749, 26, 133, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (750, 26, 134, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (751, 26, 135, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (752, 26, 136, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (753, 26, 137, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (754, 26, 138, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (755, 26, 139, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (756, 26, 140, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (757, 26, 141, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (758, 26, 142, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (759, 26, 143, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (760, 26, 144, 0, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (761, 26, 145, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (762, 26, 146, 1, N'null')
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (763, 27, 1, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (764, 27, 2, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (765, 27, 3, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (766, 27, 4, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (767, 27, 5, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (768, 27, 6, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (769, 27, 7, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (770, 27, 8, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (771, 27, 9, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (772, 27, 10, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (773, 27, 11, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (774, 27, 12, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (775, 27, 13, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (776, 27, 14, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (777, 27, 15, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (778, 27, 16, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (779, 27, 17, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (780, 27, 18, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (781, 27, 19, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (782, 27, 20, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (783, 27, 21, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (784, 27, 22, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (785, 27, 23, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (786, 27, 24, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (787, 27, 25, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (788, 27, 26, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (789, 27, 27, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (790, 27, 28, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (791, 27, 29, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (792, 27, 30, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (793, 28, 31, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (794, 28, 32, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (795, 28, 33, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (796, 28, 34, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (797, 28, 35, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (798, 28, 36, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (799, 28, 37, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (800, 28, 38, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (801, 28, 39, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (802, 28, 40, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (803, 28, 41, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (804, 28, 42, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (805, 28, 43, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (806, 28, 44, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (807, 28, 45, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (808, 28, 46, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (809, 28, 47, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (810, 28, 48, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (811, 28, 49, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (812, 28, 50, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (813, 28, 51, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (814, 28, 52, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (815, 28, 53, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (816, 28, 54, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (817, 28, 55, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (818, 28, 56, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (819, 28, 57, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (820, 28, 58, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (821, 29, 59, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (822, 29, 60, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (823, 29, 61, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (824, 29, 62, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (825, 29, 63, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (826, 29, 64, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (827, 29, 65, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (828, 29, 66, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (829, 29, 67, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (830, 29, 68, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (831, 29, 69, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (832, 29, 70, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (833, 29, 71, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (834, 29, 72, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (835, 29, 73, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (836, 29, 74, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (837, 29, 75, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (838, 29, 76, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (839, 29, 77, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (840, 29, 78, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (841, 29, 79, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (842, 29, 80, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (843, 29, 81, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (844, 29, 82, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (845, 29, 83, 0, NULL)
GO
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (846, 29, 84, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (847, 29, 85, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (848, 29, 86, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (849, 29, 87, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (850, 30, 147, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (851, 30, 148, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (852, 30, 149, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (853, 30, 150, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (854, 30, 151, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (855, 30, 152, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (856, 30, 153, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (857, 30, 154, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (858, 30, 155, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (859, 30, 156, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (860, 30, 157, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (861, 30, 158, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (862, 30, 159, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (863, 30, 160, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (864, 30, 161, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (865, 30, 162, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (866, 30, 163, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (867, 30, 164, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (868, 30, 165, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (869, 30, 166, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (870, 30, 167, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (871, 30, 168, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (872, 30, 169, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (873, 30, 170, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (874, 30, 171, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (875, 30, 172, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (876, 30, 173, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (877, 30, 174, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (878, 30, 175, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (879, 30, 176, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (880, 31, 88, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (881, 31, 89, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (882, 31, 90, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (883, 31, 91, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (884, 31, 92, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (885, 31, 93, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (886, 31, 94, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (887, 31, 95, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (888, 31, 96, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (889, 31, 97, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (890, 31, 98, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (891, 31, 99, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (892, 31, 100, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (893, 31, 101, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (894, 31, 102, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (895, 31, 103, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (896, 31, 104, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (897, 31, 105, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (898, 31, 106, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (899, 31, 107, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (900, 31, 108, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (901, 31, 109, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (902, 31, 110, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (903, 31, 111, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (904, 31, 112, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (905, 31, 113, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (906, 31, 114, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (907, 31, 115, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (908, 31, 116, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (909, 31, 117, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (910, 32, 118, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (911, 32, 119, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (912, 32, 120, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (913, 32, 121, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (914, 32, 122, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (915, 32, 123, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (916, 32, 124, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (917, 32, 125, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (918, 32, 126, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (919, 32, 127, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (920, 32, 128, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (921, 32, 129, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (922, 32, 130, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (923, 32, 131, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (924, 32, 132, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (925, 32, 133, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (926, 32, 134, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (927, 32, 135, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (928, 32, 136, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (929, 32, 137, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (930, 32, 138, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (931, 32, 139, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (932, 32, 140, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (933, 32, 141, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (934, 32, 142, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (935, 32, 143, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (936, 32, 144, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (937, 32, 145, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (938, 32, 146, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (939, 33, 1, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (940, 33, 2, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (941, 33, 3, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (942, 33, 4, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (943, 33, 5, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (944, 33, 6, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (945, 33, 7, 0, NULL)
GO
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (946, 33, 8, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (947, 33, 9, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (948, 33, 10, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (949, 33, 11, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (950, 33, 12, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (951, 33, 13, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (952, 33, 14, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (953, 33, 15, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (954, 33, 16, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (955, 33, 17, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (956, 33, 18, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (957, 33, 19, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (958, 33, 20, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (959, 33, 21, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (960, 33, 22, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (961, 33, 23, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (962, 33, 24, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (963, 33, 25, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (964, 33, 26, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (965, 33, 27, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (966, 33, 28, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (967, 33, 29, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (968, 33, 30, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (969, 34, 1, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (970, 34, 2, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (971, 34, 3, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (972, 34, 4, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (973, 34, 5, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (974, 34, 6, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (975, 34, 7, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (976, 34, 8, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (977, 34, 9, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (978, 34, 10, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (979, 34, 11, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (980, 34, 12, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (981, 34, 13, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (982, 34, 14, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (983, 34, 15, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (984, 34, 16, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (985, 34, 17, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (986, 34, 18, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (987, 34, 19, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (988, 34, 20, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (989, 34, 21, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (990, 34, 22, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (991, 34, 23, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (992, 34, 24, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (993, 34, 25, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (994, 34, 26, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (995, 34, 27, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (996, 34, 28, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (997, 34, 29, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (998, 34, 30, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (999, 35, 1, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1000, 35, 2, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1001, 35, 3, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1002, 35, 4, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1003, 35, 5, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1004, 35, 6, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1005, 35, 7, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1006, 35, 8, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1007, 35, 9, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1008, 35, 10, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1009, 35, 11, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1010, 35, 12, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1011, 35, 13, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1012, 35, 14, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1013, 35, 15, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1014, 35, 16, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1015, 35, 17, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1016, 35, 18, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1017, 35, 19, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1018, 35, 20, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1019, 35, 21, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1020, 35, 22, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1021, 35, 23, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1022, 35, 24, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1023, 35, 25, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1024, 35, 26, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1025, 35, 27, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1026, 35, 28, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1027, 35, 29, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1028, 35, 30, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1029, 36, 1, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1030, 36, 2, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1031, 36, 3, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1032, 36, 4, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1033, 36, 5, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1034, 36, 6, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1035, 36, 7, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1036, 36, 8, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1037, 36, 9, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1038, 36, 10, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1039, 36, 11, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1040, 36, 12, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1041, 36, 13, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1042, 36, 14, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1043, 36, 15, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1044, 36, 16, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1045, 36, 17, 0, NULL)
GO
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1046, 36, 18, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1047, 36, 19, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1048, 36, 20, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1049, 36, 21, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1050, 36, 22, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1051, 36, 23, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1052, 36, 24, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1053, 36, 25, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1054, 36, 26, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1055, 36, 27, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1056, 36, 28, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1057, 36, 29, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1058, 36, 30, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1059, 37, 1, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1060, 37, 2, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1061, 37, 3, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1062, 37, 4, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1063, 37, 5, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1064, 37, 6, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1065, 37, 7, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1066, 37, 8, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1067, 37, 9, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1068, 37, 10, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1069, 37, 11, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1070, 37, 12, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1071, 37, 13, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1072, 37, 14, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1073, 37, 15, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1074, 37, 16, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1075, 37, 17, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1076, 37, 18, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1077, 37, 19, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1078, 37, 20, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1079, 37, 21, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1080, 37, 22, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1081, 37, 23, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1082, 37, 24, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1083, 37, 25, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1084, 37, 26, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1085, 37, 27, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1086, 37, 28, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1087, 37, 29, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1088, 37, 30, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1089, 38, 1, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1090, 38, 2, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1091, 38, 3, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1092, 38, 4, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1093, 38, 5, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1094, 38, 6, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1095, 38, 7, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1096, 38, 8, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1097, 38, 9, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1098, 38, 10, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1099, 38, 11, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1100, 38, 12, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1101, 38, 13, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1102, 38, 14, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1103, 38, 15, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1104, 38, 16, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1105, 38, 17, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1106, 38, 18, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1107, 38, 19, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1108, 38, 20, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1109, 38, 21, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1110, 38, 22, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1111, 38, 23, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1112, 38, 24, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1113, 38, 25, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1114, 38, 26, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1115, 38, 27, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1116, 38, 28, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1117, 38, 29, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1118, 38, 30, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1119, 39, 1, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1120, 39, 2, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1121, 39, 3, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1122, 39, 4, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1123, 39, 5, 1, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1124, 39, 6, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1125, 39, 7, 0, NULL)
INSERT [dbo].[RollCallBook] ([GroupId], [TeachingScheduleId], [StudentId], [IsAbsent], [Comment]) VALUES (1126, 39, 8, 0, NULL)
SET IDENTITY_INSERT [dbo].[RollCallBook] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([roomId], [roomName]) VALUES (1, N'BE-213    ')
INSERT [dbo].[Room] ([roomId], [roomName]) VALUES (2, N'DE-303    ')
INSERT [dbo].[Room] ([roomId], [roomName]) VALUES (3, N'DE-202    ')
SET IDENTITY_INSERT [dbo].[Room] OFF
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
INSERT [dbo].[Subject] ([subjectId], [subjectCode], [subjectName]) VALUES (5, N'DBI202', N'Introduction to Databases')
INSERT [dbo].[Subject] ([subjectId], [subjectCode], [subjectName]) VALUES (6, N'LAB211', N'OOP with Java Lab')
INSERT [dbo].[Subject] ([subjectId], [subjectCode], [subjectName]) VALUES (7, N'SWP391', N'Application development project')
INSERT [dbo].[Subject] ([subjectId], [subjectCode], [subjectName]) VALUES (8, N'SWE201c', N'Introduction to Software Engineering')
SET IDENTITY_INSERT [dbo].[Subject] OFF
GO
ALTER TABLE [dbo].[CourseSchedule]  WITH CHECK ADD  CONSTRAINT [FK_CourseSchedule_CourseSchedule] FOREIGN KEY([TeachingScheduleId])
REFERENCES [dbo].[CourseSchedule] ([TeachingScheduleId])
GO
ALTER TABLE [dbo].[CourseSchedule] CHECK CONSTRAINT [FK_CourseSchedule_CourseSchedule]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_Lecture] FOREIGN KEY([LectureId])
REFERENCES [dbo].[Lecture] ([lectureId])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_Lecture]
GO
USE [master]
GO
ALTER DATABASE [Assignment] SET  READ_WRITE 
GO
