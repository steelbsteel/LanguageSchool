USE [SessionDB]
GO
/****** Object:  Table [dbo].[AttachedProduct]    Script Date: 20.04.2023 14:09:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttachedProduct](
	[MainProductID] [int] NOT NULL,
	[AttachedProductID] [int] NOT NULL,
 CONSTRAINT [PK_AttachedProduct] PRIMARY KEY CLUSTERED 
(
	[MainProductID] ASC,
	[AttachedProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Patronymic] [nvarchar](50) NULL,
	[Birthday] [date] NULL,
	[RegistrationDate] [datetime] NOT NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[GenderCode] [nchar](1) NOT NULL,
	[PhotoPath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ClientService]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClientService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NOT NULL,
	[ServiceID] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[Comment] [nvarchar](max) NULL,
 CONSTRAINT [PK_ClientService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentByService]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentByService](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ClientServiceID] [int] NOT NULL,
	[DocumentPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_DocumentByService] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Code] [nchar](1) NOT NULL,
	[Name] [nvarchar](10) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufacturer]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufacturer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[StartDate] [date] NULL,
 CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[MainImagePath] [nvarchar](1000) NULL,
	[IsActive] [bit] NOT NULL,
	[ManufacturerID] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductPhoto]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductPhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ProductPhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductSale]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductSale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[ClientServiceID] [int] NULL,
 CONSTRAINT [PK_ProductSale] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Cost] [money] NOT NULL,
	[DurationInSeconds] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Discount] [float] NULL,
	[MainImagePath] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Service] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicePhoto]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicePhoto](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NOT NULL,
	[PhotoPath] [nvarchar](1000) NOT NULL,
 CONSTRAINT [PK_ServicePhoto] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](30) NOT NULL,
	[Color] [nchar](6) NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TagOfClient]    Script Date: 20.04.2023 14:09:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TagOfClient](
	[ClientID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
 CONSTRAINT [PK_TagOfClient] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC,
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (1, N'Патрисия', N'Андреева', N'Валерьевна', CAST(N'1993-11-18' AS Date), CAST(N'2016-07-17T00:00:00.000' AS DateTime), N' jigsaw@aol.com', N' 7(9648)953-81-26 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (2, N'Сабрина', N'Беляева', N'Федосеевна', CAST(N'1972-07-26' AS Date), CAST(N'2017-06-14T00:00:00.000' AS DateTime), N' agapow@gmail.com', N' 7(6580)534-32-58 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (3, N'Изабелла', N'Воронова', N'Вячеславовна', CAST(N'1999-09-24' AS Date), CAST(N'2017-12-21T00:00:00.000' AS DateTime), N' kildjean@sbcglobal.net', N' 7(17)433-44-98 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (4, N'Анэля', N'Корнилова', N'Михайловна', CAST(N'1973-04-02' AS Date), CAST(N'2016-05-22T00:00:00.000' AS DateTime), N' jonathan@aol.com', N' 7(20)980-01-60 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (5, N'Любава', N'Костина', N'Авксентьевна', CAST(N'1972-07-13' AS Date), CAST(N'2016-02-26T00:00:00.000' AS DateTime), N' gordonjcp@hotmail.com', N' 7(6419)959-21-87 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (6, N'Эвелина', N'Куликова', N'Вячеславовна', CAST(N'1997-11-14' AS Date), CAST(N'2018-02-01T00:00:00.000' AS DateTime), N' ilikered@hotmail.com', N' 7(0236)682-42-78 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (7, N'Марфа', N'Мамонтова', N'Мироновна', CAST(N'1984-10-19' AS Date), CAST(N'2018-02-27T00:00:00.000' AS DateTime), N' rfoley@verizon.net', N' 7(38)095-64-18 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (8, N'Влада', N'Орлова', N'Мартыновна', CAST(N'1990-06-26' AS Date), CAST(N'2016-03-21T00:00:00.000' AS DateTime), N' rnelson@yahoo.ca', N' 7(2506)433-38-35 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (9, N'Харита', N'Попова', N'Якуновна', CAST(N'1997-12-16' AS Date), CAST(N'2016-07-05T00:00:00.000' AS DateTime), N' firstpr@verizon.net', N' 7(335)386-81-06 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (10, N'Божена', N'Суворова', N'Анатольевна', CAST(N'1981-03-09' AS Date), CAST(N'2016-01-28T00:00:00.000' AS DateTime), N' attwood@aol.com', N' 7(347)895-86-57 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (11, N'Георгина', N'Турова', N'Семёновна', CAST(N'1974-05-28' AS Date), CAST(N'2018-02-22T00:00:00.000' AS DateTime), N' yruan@optonline.net', N' 7(555)321-42-99 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (12, N'Сандра', N'Федотова', N'Владленовна', CAST(N'1985-03-29' AS Date), CAST(N'2016-11-08T00:00:00.000' AS DateTime), N' penna@verizon.net', N' 7(126)195-25-86 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (13, N'Амелия', N'Степанова', N' Робертовна', CAST(N'1970-06-06' AS Date), CAST(N'2017-09-27T00:00:00.000' AS DateTime), N' rasca@hotmail.com', N' 7(1217)441-28-42 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (14, N'Злата', N'Колобова', N' Романовна', CAST(N'1994-08-25' AS Date), CAST(N'2016-12-03T00:00:00.000' AS DateTime), N' sinkou@aol.com', N' 7(50)884-07-35 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (15, N'Магда', N'Ефимова', N' Платоновна', CAST(N'1995-08-16' AS Date), CAST(N'2017-08-01T00:00:00.000' AS DateTime), N' rbarreira@me.com', N' 7(9261)386-15-92 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (16, N'Элина', N'Дмитриева', N' Даниловна', CAST(N'1988-12-10' AS Date), CAST(N'2017-02-11T00:00:00.000' AS DateTime), N' vmalik@live.com', N' 7(787)140-48-84 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (17, N'Янита', N'Гущина', N' Федоровна', CAST(N'1999-03-02' AS Date), CAST(N'2018-02-01T00:00:00.000' AS DateTime), N' lishoy@att.net', N' 7(4544)716-68-96 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (18, N'Дэнна', N'Кузьмина', N'Витальевна', CAST(N'1993-08-24' AS Date), CAST(N'2016-03-27T00:00:00.000' AS DateTime), N' nichoj@mac.com', N' 7(9940)977-45-73 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (19, N'Амалия', N'Егорова', N' Дамировна', CAST(N'1999-09-28' AS Date), CAST(N'2016-06-30T00:00:00.000' AS DateTime), N' drezet@yahoo.com', N' 7(7486)408-12-26 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (20, N'Амалия', N'Комиссарова', N' Робертовна', CAST(N'1971-08-18' AS Date), CAST(N'2017-08-04T00:00:00.000' AS DateTime), N' jorgb@msn.com', N' 7(22)647-46-32 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (21, N'Эльмира', N'Баранова', N' Дмитриевна', CAST(N'1977-01-15' AS Date), CAST(N'2016-07-08T00:00:00.000' AS DateTime), N' jgmyers@comcast.net', N' 7(9240)643-15-50 ', N'2', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (22, N'Агафон', N'Бобров', N'Лаврентьевич', CAST(N'1995-07-29' AS Date), CAST(N'2017-05-09T00:00:00.000' AS DateTime), N' petersen@comcast.net', N' 7(2159)507-39-57 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (23, N'Вадим', N'Большаков', N'Данилович', CAST(N'1970-05-15' AS Date), CAST(N'2018-08-04T00:00:00.000' AS DateTime), N' uncle@gmail.com', N' 7(386)641-13-37 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (24, N'Людвиг', N'Волков', N'Витальевич', CAST(N'1977-12-27' AS Date), CAST(N'2016-04-27T00:00:00.000' AS DateTime), N' jrkorson@msn.com', N' 7(8459)592-05-58 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (25, N'Давид', N'Горбачёв', N'Тимурович', CAST(N'1983-05-22' AS Date), CAST(N'2018-12-17T00:00:00.000' AS DateTime), N' hedwig@att.net', N' 7(53)602-85-41 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (26, N'Матвей', N'Зуев', N'Иванович', CAST(N'1981-03-28' AS Date), CAST(N'2018-12-18T00:00:00.000' AS DateTime), N' brickbat@verizon.net', N' 7(5383)893-04-66 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (27, N'Захар', N'Игнатов', N'Павлович', CAST(N'1998-10-07' AS Date), CAST(N'2017-11-10T00:00:00.000' AS DateTime), N' dieman@icloud.com', N' 7(578)574-73-36 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (28, N'Дмитрий', N'Казаков', N'Русланович', CAST(N'1978-12-15' AS Date), CAST(N'2016-05-21T00:00:00.000' AS DateTime), N' ozawa@verizon.net', N' 7(51)682-19-40 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (29, N'Алексей', N'Лазарев', N'Богданович', CAST(N'1977-03-10' AS Date), CAST(N'2017-01-02T00:00:00.000' AS DateTime), N' claesjac@me.com', N' 7(0055)737-37-48 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (30, N'Наум', N'Морозов', N'Валерьянович', CAST(N'1985-07-04' AS Date), CAST(N'2016-05-02T00:00:00.000' AS DateTime), N' salesgeek@mac.com', N' 7(636)050-96-13 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (31, N'Глеб', N'Селиверстов', N'Максимович', CAST(N'1999-06-20' AS Date), CAST(N'2016-01-07T00:00:00.000' AS DateTime), N' jigsaw@sbcglobal.net', N' 7(20)554-28-68 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (32, N'Артур', N'Калашников', N' Юрьевич', CAST(N'1972-12-13' AS Date), CAST(N'2017-08-20T00:00:00.000' AS DateTime), N' oevans@aol.com', N' 7(147)947-47-21 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (33, N'Витольд', N'Ефремов', N' Авксентьевич', CAST(N'1975-12-02' AS Date), CAST(N'2018-04-09T00:00:00.000' AS DateTime), N' kwilliams@yahoo.ca', N' 7(93)922-14-03 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (34, N'Георгий', N'Бобылёв', N' Витальевич', CAST(N'1983-12-19' AS Date), CAST(N'2018-04-06T00:00:00.000' AS DateTime), N' csilvers@mac.com', N' 7(88)685-13-51 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (35, N'Евгений', N'Блинов', N' Мэлсович', CAST(N'1994-01-05' AS Date), CAST(N'2017-05-07T00:00:00.000' AS DateTime), N' moxfulder@outlook.com', N' 7(0852)321-82-64 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (36, N'Иосиф', N'Голубев', N' Тимофеевич', CAST(N'1982-05-06' AS Date), CAST(N'2018-08-18T00:00:00.000' AS DateTime), N' smcnabb@att.net', N' 7(78)972-73-11 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (37, N'Макар', N'Евсеев', N' Васильевич', CAST(N'1977-09-13' AS Date), CAST(N'2018-12-05T00:00:00.000' AS DateTime), N' parsimony@sbcglobal.net', N' 7(2141)077-85-70 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (38, N'Орест', N'Колобов', N' Юлианович', CAST(N'2001-07-14' AS Date), CAST(N'2017-01-01T00:00:00.000' AS DateTime), N' parkes@verizon.net', N' 7(1680)508-58-26 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (39, N'Оскар', N'Васильев', N' Богданович', CAST(N'1971-01-30' AS Date), CAST(N'2017-05-28T00:00:00.000' AS DateTime), N' miturria@verizon.net', N' 7(585)801-94-29 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (40, N'Пантелеймон', N'Блохин', N' Феликсович', CAST(N'1978-03-06' AS Date), CAST(N'2018-02-14T00:00:00.000' AS DateTime), N' balchen@comcast.net', N' 7(9524)556-48-98 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (41, N'Станислав', N'Александров', N' Эдуардович', CAST(N'1981-07-04' AS Date), CAST(N'2018-11-08T00:00:00.000' AS DateTime), N' bigmauler@aol.com', N' 7(18)164-05-12 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (42, N'Станислав', N'Андреев', N' Максович', CAST(N'1975-10-10' AS Date), CAST(N'2017-12-26T00:00:00.000' AS DateTime), N' budinger@mac.com', N' 7(02)993-91-28 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (43, N'Юстиниан', N'Агафонов', N' Олегович', CAST(N'1997-02-02' AS Date), CAST(N'2016-06-08T00:00:00.000' AS DateTime), N' staffelb@sbcglobal.net', N' 7(303)810-28-78 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (44, N'Станислав', N'Абрамов', N'Филатович', CAST(N'1989-05-18' AS Date), CAST(N'2016-12-08T00:00:00.000' AS DateTime), N' solomon@att.net', N' 7(6545)478-87-79 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (45, N'Петр', N'Калинин', N'Иванович', CAST(N'1993-09-08' AS Date), CAST(N'2016-05-26T00:00:00.000' AS DateTime), N' aschmitz@hotmail.com', N' 7(90)316-07-17 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (46, N'Варлам', N'Некрасов', N'Михайлович', CAST(N'2000-11-12' AS Date), CAST(N'2017-12-03T00:00:00.000' AS DateTime), N' dogdude@verizon.net', N' 7(019)258-06-35 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (47, N'Глеб', N'Ершов', N' Федорович', CAST(N'1970-06-14' AS Date), CAST(N'2016-09-14T00:00:00.000' AS DateTime), N' sjava@aol.com', N' 7(2608)298-40-82 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (48, N'Леонтий', N'Журавлёв', N' Яковлевич', CAST(N'2000-03-02' AS Date), CAST(N'2018-01-15T00:00:00.000' AS DateTime), N' cmdrgravy@me.com', N' 7(4403)308-56-96 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (49, N'Святослав', N'Медведев', N' Юлианович', CAST(N'1972-10-04' AS Date), CAST(N'2018-10-13T00:00:00.000' AS DateTime), N' hllam@comcast.net', N' 7(3520)435-21-20 ', N'1', N'')
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Patronymic], [Birthday], [RegistrationDate], [Email], [Phone], [GenderCode], [PhotoPath]) VALUES (50, N'Устин', N'Киселёв', N' Яковлевич', CAST(N'1985-01-08' AS Date), CAST(N'2018-06-21T00:00:00.000' AS DateTime), N' dalamb@verizon.net', N' 7(83)334-52-76 ', N'1', N'')
SET IDENTITY_INSERT [dbo].[Client] OFF
GO
SET IDENTITY_INSERT [dbo].[ClientService] ON 

INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (292, 48, 97, CAST(N'2019-11-16T00:00:00.000' AS DateTime), N'11:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (293, 33, 19, CAST(N'2019-01-11T00:00:00.000' AS DateTime), N'18:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (294, 33, 61, CAST(N'2019-12-01T00:00:00.000' AS DateTime), N'14:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (295, 33, 53, CAST(N'2019-02-11T00:00:00.000' AS DateTime), N'13:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (296, 46, 89, CAST(N'2019-09-10T00:00:00.000' AS DateTime), N'18:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (297, 38, 90, CAST(N'2019-02-12T00:00:00.000' AS DateTime), N'19:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (298, 11, 6, CAST(N'2019-04-04T00:00:00.000' AS DateTime), N'9:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (299, 31, 83, CAST(N'2019-05-15T00:00:00.000' AS DateTime), N'9:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (300, 34, 94, CAST(N'2019-01-16T00:00:00.000' AS DateTime), N'14:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (301, 10, 80, CAST(N'2019-01-16T00:00:00.000' AS DateTime), N'9:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (302, 28, 94, CAST(N'2019-03-15T00:00:00.000' AS DateTime), N'10:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (303, 5, 19, CAST(N'2019-01-31T00:00:00.000' AS DateTime), N'12:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (304, 4, 52, CAST(N'2019-11-19T00:00:00.000' AS DateTime), N'15:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (305, 29, 79, CAST(N'2019-01-10T00:00:00.000' AS DateTime), N'8:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (306, 50, 94, CAST(N'2019-04-29T00:00:00.000' AS DateTime), N'15:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (307, 2, 66, CAST(N'2019-10-12T00:00:00.000' AS DateTime), N'8:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (308, 38, 91, CAST(N'2019-02-13T00:00:00.000' AS DateTime), N'18:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (309, 29, 52, CAST(N'2019-02-01T00:00:00.000' AS DateTime), N'18:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (310, 10, 42, CAST(N'2019-11-12T00:00:00.000' AS DateTime), N'18:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (311, 12, 69, CAST(N'2019-01-11T00:00:00.000' AS DateTime), N'12:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (312, 3, 70, CAST(N'2019-03-23T00:00:00.000' AS DateTime), N'19:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (313, 2, 71, CAST(N'2019-06-23T00:00:00.000' AS DateTime), N'8:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (314, 43, 39, CAST(N'2019-05-25T00:00:00.000' AS DateTime), N'17:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (315, 12, 51, CAST(N'2019-02-18T00:00:00.000' AS DateTime), N'18:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (316, 50, 65, CAST(N'2019-07-17T00:00:00.000' AS DateTime), N'8:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (317, 50, 6, CAST(N'2019-08-06T00:00:00.000' AS DateTime), N'16:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (318, 13, 60, CAST(N'2019-12-14T00:00:00.000' AS DateTime), N'8:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (319, 26, 77, CAST(N'2019-06-28T00:00:00.000' AS DateTime), N'14:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (320, 38, 36, CAST(N'2019-06-06T00:00:00.000' AS DateTime), N'19:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (321, 11, 70, CAST(N'2019-06-07T00:00:00.000' AS DateTime), N'17:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (322, 15, 82, CAST(N'2019-04-30T00:00:00.000' AS DateTime), N'18:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (323, 4, 69, CAST(N'2019-08-30T00:00:00.000' AS DateTime), N'11:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (324, 24, 83, CAST(N'2019-05-08T00:00:00.000' AS DateTime), N'14:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (325, 7, 27, CAST(N'2019-10-27T00:00:00.000' AS DateTime), N'16:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (326, 10, 65, CAST(N'2019-01-05T00:00:00.000' AS DateTime), N'8:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (327, 26, 24, CAST(N'2019-03-04T00:00:00.000' AS DateTime), N'17:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (328, 21, 31, CAST(N'2019-09-29T00:00:00.000' AS DateTime), N'13:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (329, 23, 64, CAST(N'2019-01-22T00:00:00.000' AS DateTime), N'10:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (330, 10, 52, CAST(N'2019-12-19T00:00:00.000' AS DateTime), N'19:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (331, 18, 73, CAST(N'2019-11-15T00:00:00.000' AS DateTime), N'17:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (332, 6, 32, CAST(N'2019-07-04T00:00:00.000' AS DateTime), N'17:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (333, 31, 19, CAST(N'2019-08-06T00:00:00.000' AS DateTime), N'11:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (334, 50, 66, CAST(N'2019-11-09T00:00:00.000' AS DateTime), N'13:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (335, 11, 22, CAST(N'2019-02-16T00:00:00.000' AS DateTime), N'18:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (336, 22, 31, CAST(N'2019-03-03T00:00:00.000' AS DateTime), N'17:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (337, 47, 82, CAST(N'2019-05-22T00:00:00.000' AS DateTime), N'16:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (338, 37, 97, CAST(N'2019-07-31T00:00:00.000' AS DateTime), N'18:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (339, 34, 24, CAST(N'2019-08-29T00:00:00.000' AS DateTime), N'19:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (340, 31, 65, CAST(N'2019-10-02T00:00:00.000' AS DateTime), N'10:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (341, 36, 19, CAST(N'2019-03-16T00:00:00.000' AS DateTime), N'11:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (342, 2, 73, CAST(N'2019-08-27T00:00:00.000' AS DateTime), N'11:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (343, 1, 27, CAST(N'2019-06-13T00:00:00.000' AS DateTime), N'11:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (344, 45, 66, CAST(N'2019-08-18T00:00:00.000' AS DateTime), N'16:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (345, 17, 80, CAST(N'2019-12-26T00:00:00.000' AS DateTime), N'16:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (346, 42, 86, CAST(N'2019-11-27T00:00:00.000' AS DateTime), N'18:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (347, 41, 65, CAST(N'2019-09-06T00:00:00.000' AS DateTime), N'19:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (348, 15, 8, CAST(N'2019-09-24T00:00:00.000' AS DateTime), N'13:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (349, 18, 43, CAST(N'2019-03-01T00:00:00.000' AS DateTime), N'11:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (350, 49, 86, CAST(N'2019-09-28T00:00:00.000' AS DateTime), N'10:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (351, 14, 6, CAST(N'2019-03-20T00:00:00.000' AS DateTime), N'10:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (352, 35, 66, CAST(N'2019-11-27T00:00:00.000' AS DateTime), N'11:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (353, 28, 5, CAST(N'2019-01-23T00:00:00.000' AS DateTime), N'18:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (354, 23, 24, CAST(N'2019-10-21T00:00:00.000' AS DateTime), N'10:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (355, 16, 6, CAST(N'2019-08-11T00:00:00.000' AS DateTime), N'12:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (356, 44, 65, CAST(N'2019-01-03T00:00:00.000' AS DateTime), N'14:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (357, 29, 52, CAST(N'2019-12-31T00:00:00.000' AS DateTime), N'8:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (358, 30, 83, CAST(N'2019-08-29T00:00:00.000' AS DateTime), N'10:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (359, 47, 61, CAST(N'2019-01-03T00:00:00.000' AS DateTime), N'18:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (360, 17, 89, CAST(N'2019-04-09T00:00:00.000' AS DateTime), N'11:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (361, 23, 71, CAST(N'2019-12-31T00:00:00.000' AS DateTime), N'19:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (362, 39, 61, CAST(N'2019-10-17T00:00:00.000' AS DateTime), N'13:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (363, 15, 31, CAST(N'2019-05-17T00:00:00.000' AS DateTime), N'13:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (364, 42, 100, CAST(N'2019-11-23T00:00:00.000' AS DateTime), N'18:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (365, 35, 69, CAST(N'2019-07-10T00:00:00.000' AS DateTime), N'15:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (366, 33, 15, CAST(N'2019-06-09T00:00:00.000' AS DateTime), N'13:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (367, 22, 31, CAST(N'2019-01-09T00:00:00.000' AS DateTime), N'10:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (368, 39, 5, CAST(N'2019-08-15T00:00:00.000' AS DateTime), N'18:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (369, 20, 69, CAST(N'2019-07-15T00:00:00.000' AS DateTime), N'14:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (370, 31, 100, CAST(N'2019-12-31T00:00:00.000' AS DateTime), N'18:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (371, 18, 86, CAST(N'2019-12-22T00:00:00.000' AS DateTime), N'9:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (372, 17, 63, CAST(N'2019-12-28T00:00:00.000' AS DateTime), N'16:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (373, 29, 31, CAST(N'2019-06-26T00:00:00.000' AS DateTime), N'10:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (374, 35, 97, CAST(N'2019-04-29T00:00:00.000' AS DateTime), N'12:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (375, 38, 97, CAST(N'2019-04-13T00:00:00.000' AS DateTime), N'9:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (376, 22, 91, CAST(N'2019-01-05T00:00:00.000' AS DateTime), N'16:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (377, 49, 15, CAST(N'2019-03-25T00:00:00.000' AS DateTime), N'18:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (378, 20, 39, CAST(N'2019-11-09T00:00:00.000' AS DateTime), N'18:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (379, 27, 19, CAST(N'2019-04-07T00:00:00.000' AS DateTime), N'10:40:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (380, 48, 51, CAST(N'2019-11-11T00:00:00.000' AS DateTime), N'18:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (381, 19, 65, CAST(N'2019-01-06T00:00:00.000' AS DateTime), N'15:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (382, 45, 91, CAST(N'2019-08-20T00:00:00.000' AS DateTime), N'19:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (383, 8, 91, CAST(N'2019-04-16T00:00:00.000' AS DateTime), N'13:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (384, 23, 94, CAST(N'2019-12-22T00:00:00.000' AS DateTime), N'15:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (385, 9, 69, CAST(N'2019-01-22T00:00:00.000' AS DateTime), N'16:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (386, 36, 39, CAST(N'2019-09-04T00:00:00.000' AS DateTime), N'8:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (387, 30, 60, CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'14:50:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (388, 50, 100, CAST(N'2019-01-29T00:00:00.000' AS DateTime), N'16:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (389, 9, 57, CAST(N'2019-07-06T00:00:00.000' AS DateTime), N'11:30:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (390, 16, 8, CAST(N'2019-12-05T00:00:00.000' AS DateTime), N'10:20:00')
GO
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (391, 46, 91, CAST(N'2019-04-05T00:00:00.000' AS DateTime), N'13:20:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (392, 2, 1, CAST(N'2023-04-12T00:00:00.000' AS DateTime), N'10:10:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (393, 1, 1, CAST(N'2023-04-20T00:00:00.000' AS DateTime), N'12:19:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (394, 5, 2, CAST(N'2023-04-21T00:00:00.000' AS DateTime), N'20:00:00')
INSERT [dbo].[ClientService] ([ID], [ClientID], [ServiceID], [StartTime], [Comment]) VALUES (395, 4, 1, CAST(N'2023-04-20T16:40:00.000' AS DateTime), N'123')
SET IDENTITY_INSERT [dbo].[ClientService] OFF
GO
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (N'1', N'Мужской')
INSERT [dbo].[Gender] ([Code], [Name]) VALUES (N'2', N'Женский')
GO
SET IDENTITY_INSERT [dbo].[Service] ON 

INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (1, N'Киноклуб итальянского языка для студентов', 1760.0000, 1800, N'', NULL, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (2, N'Индивидуальный урок итальянского языка с русскоязычным преподавателем', 1330.0000, 1800, N'', 20, N'Услуги школы\Итальянский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (3, N'Индивидуальный урок английского языка с русскоязычным преподавателем', 1910.0000, 1800, N'', 10, N'Услуги школы\Английский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (4, N'Интенсивный курс с преподавателем-носителем португальского языка для компаний', 1580.0000, 1800, N'', NULL, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (5, N'Киноклуб испанского языка для студентов', 1050.0000, 2400, N'', 10, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (6, N'Урок в группе итальянского языка для взрослых', 1290.0000, 2400, N'', NULL, N'Услуги школы\Итальянский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (7, N'Подготовка к экзамену SAT', 1560.0000, 2400, N'', NULL, N'Услуги школы\Подготовка к экзамену SAT.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (8, N'Интенсивный курс французского языка с русскоязычным преподавателем для компаний', 1940.0000, 2400, N'', NULL, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (9, N'Занятие с русскоязычным репетитором испанского языка', 1450.0000, 3000, N'', 15, N'Услуги школы\Испанский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (10, N'Подготовка к экзамену ACT', 1440.0000, 3000, N'', NULL, N'Услуги школы\Подготовка к экзамену ACT.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (11, N'Киноклуб немецкого языка для студентов', 1140.0000, 3000, N'', 15, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (12, N'Занятие с репетитором-носителем французского языка', 2040.0000, 3000, N'', NULL, N'Услуги школы\Французский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (13, N'Индивидуальный урок испанского языка с русскоязычным преподавателем', 1790.0000, 3600, N'', 15, N'Услуги школы\Испанский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (14, N'Урок в группе немецкого языка для взрослых', 930.0000, 3600, N'', 5, N'Услуги школы\Немецкий язык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (15, N'Интенсивный курс португальского языка с русскоязычным преподавателем для компаний', 2010.0000, 3600, N'', 25, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (16, N'Интенсивный онлайн-курс португальского языка для компаний по Skype', 1610.0000, 4200, N'', 5, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (17, N'Киноклуб английского языка для взрослых', 1250.0000, 4200, N'', 5, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (18, N'Интенсивный курс с преподавателем-носителем французского языка для компаний', 1630.0000, 4200, N'', 15, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (19, N'Киноклуб китайского языка для взрослых', 1800.0000, 4200, N'', 25, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (20, N'Подготовка к экзамену GMAT', 1150.0000, 4200, N'', 5, N'Услуги школы\Подготовка к экзамену GMAT.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (21, N'Киноклуб итальянского языка для детей', 1480.0000, 4200, N'', NULL, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (22, N'Урок в группе японского языка для школьников', 1300.0000, 4800, N'', 5, N'Услуги школы\Японский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (23, N'Подготовка к экзамену GRE', 1300.0000, 4800, N'', 20, N'Услуги школы\Подготовка к экзамену GRE.jpeg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (24, N'Интенсивный курс японского языка с русскоязычным преподавателем для компаний', 1500.0000, 4800, N'', NULL, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (25, N'Индивидуальный урок итальянского языка с преподавателем-носителем языка', 1690.0000, 4800, N'', NULL, N'Услуги школы\Итальянский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (26, N'Урок в группе японского языка для взрослых', 1420.0000, 4800, N'', 5, N'Услуги школы\Японский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (27, N'Индивидуальный урок испанского языка с преподавателем-носителем языка', 1200.0000, 5400, N'', 10, N'Услуги школы\Испанский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (28, N'Индивидуальный онлайн-урок немецкого языка по Skype', 970.0000, 5400, N'', NULL, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (29, N'Индивидуальный урок китайского языка с преподавателем-носителем языка', 1480.0000, 5400, N'', 20, N'Услуги школы\Китайский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (30, N'Подготовка к экзамену IELTS Speaking Club', 1430.0000, 5400, N'', 20, N'Услуги школы\Подготовка к экзамену IELTS.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (31, N'Киноклуб португальского языка для детей', 1710.0000, 5400, N'', 15, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (32, N'Киноклуб французского языка для детей', 1600.0000, 5400, N'', 10, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (33, N'Занятие с русскоязычным репетитором английского языка', 1950.0000, 5400, N'', 15, N'Услуги школы\Английский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (34, N'Интенсивный курс с преподавателем-носителем испанского языка для компаний', 1660.0000, 5400, N'', NULL, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (35, N'Киноклуб китайского языка для студентов', 1990.0000, 6000, N'', NULL, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (36, N'Киноклуб немецкого языка для взрослых', 1560.0000, 6000, N'', 10, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (37, N'Урок в группе испанского языка для студентов', 1310.0000, 6000, N'', 20, N'Услуги школы\Испанский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (38, N'Киноклуб китайского языка для детей', 1120.0000, 6000, N'', 10, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (39, N'Индивидуальный урок немецкого языка с преподавателем-носителем языка', 1340.0000, 6600, N'', NULL, N'Услуги школы\Немецкий язык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (40, N'Интенсивный курс с преподавателем-носителем английского языка для компаний', 1670.0000, 6600, N'', 10, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (41, N'Урок в группе итальянского языка для студентов', 1020.0000, 6600, N'', NULL, N'Услуги школы\Итальянский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (42, N'Киноклуб итальянского языка для взрослых', 1760.0000, 6600, N'', NULL, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (43, N'Интенсивный курс итальянского языка с русскоязычным преподавателем для компаний', 900.0000, 6600, N'', NULL, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (44, N'Занятие с репетитором-носителем китайского языка', 1950.0000, 7200, N'', NULL, N'Услуги школы\Китайский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (45, N'Интенсивный онлайн-курс испанского языка для компаний по Skype', 1510.0000, 7200, N'', NULL, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (46, N'Индивидуальный урок китайского языка с русскоязычным преподавателем', 1860.0000, 7200, N'', 10, N'Услуги школы\Китайский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (47, N'Интенсивный курс с преподавателем-носителем немецкого языка для компаний', 1180.0000, 7200, N'', 20, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (48, N'Интенсивный онлайн-курс китайского языка для компаний по Skype', 1760.0000, 7200, N'', 15, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (49, N'Урок в группе французского языка для взрослых', 960.0000, 7200, N'', 15, N'Услуги школы\Французский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (50, N'Киноклуб немецкого языка для детей', 1670.0000, 7200, N'', 5, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (51, N'Урок в группе испанского языка для взрослых', 1730.0000, 1800, N'', 5, N'Услуги школы\Испанский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (52, N'Киноклуб португальского языка для студентов', 1170.0000, 1800, N'', 15, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (53, N'Урок в группе немецкого языка для школьников', 1570.0000, 1800, N'', 15, N'Услуги школы\Немецкий язык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (54, N'Занятие с русскоязычным репетитором немецкого языка', 1420.0000, 1800, N'', NULL, N'Услуги школы\Немецкий язык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (55, N'Индивидуальный урок немецкого языка с русскоязычным преподавателем', 990.0000, 1800, N'', 5, N'Услуги школы\Немецкий язык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (56, N'Киноклуб португальского языка для взрослых', 950.0000, 1800, N'', 5, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (57, N'Урок в группе французского языка для студентов', 1910.0000, 1800, N'', NULL, N'Услуги школы\Французский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (58, N'Интенсивный онлайн-курс французского языка для компаний по Skype', 1180.0000, 2400, N'', 10, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (59, N'Индивидуальный урок французского языка с преподавателем-носителем языка', 1410.0000, 2400, N'', 20, N'Услуги школы\Французский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (60, N'Интенсивный курс с преподавателем-носителем итальянского языка для компаний', 1190.0000, 2400, N'', 20, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (61, N'Урок в группе китайского языка для студентов', 2000.0000, 2400, N'', 20, N'Услуги школы\Китайский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (62, N'Занятие с русскоязычным репетитором японского языка', 1260.0000, 2400, N'', 10, N'Услуги школы\Японский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (63, N'Киноклуб английского языка для детей', 1280.0000, 2400, N'', 5, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (64, N'Урок в группе японского языка для студентов', 1860.0000, 3000, N'', NULL, N'Услуги школы\Японский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (65, N'Занятие с репетитором-носителем испанского языка', 1090.0000, 3000, N'', 5, N'Услуги школы\Испанский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (66, N'Интенсивный онлайн-курс английского языка для компаний по Skype', 1160.0000, 3000, N'', NULL, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (67, N'Урок в группе английского языка для взрослых', 1010.0000, 3000, N'', 25, N'Услуги школы\Английский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (68, N'Урок в группе китайского языка для школьников', 1180.0000, 3000, N'', 15, N'Услуги школы\Китайский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (69, N'Занятие с русскоязычным репетитором португальского языка', 1970.0000, 3000, N'', 10, N'Услуги школы\Португальский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (70, N'Занятие с репетитором-носителем японского языка', 1100.0000, 3000, N'', 25, N'Услуги школы\Японский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (71, N'Интенсивный онлайн-курс итальянского языка для компаний по Skype', 1230.0000, 4200, N'', 10, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (72, N'Урок в группе китайского языка для взрослых', 1730.0000, 4200, N'', 25, N'Услуги школы\Китайский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (73, N'Индивидуальный онлайн-урок испанского языка по Skype', 1780.0000, 4200, N'', 5, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (74, N'Индивидуальный онлайн-урок китайского языка по Skype', 1410.0000, 4200, N'', NULL, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (75, N'Интенсивный онлайн-курс немецкого языка для компаний по Skype', 1840.0000, 4200, N'', 10, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (76, N'Индивидуальный урок французского языка с русскоязычным преподавателем', 1390.0000, 4200, N'', NULL, N'Услуги школы\Французский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (77, N'Занятие с русскоязычным репетитором итальянского языка', 1620.0000, 4200, N'', 20, N'Услуги школы\Итальянский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (78, N'Урок в группе немецкого языка для студентов', 1240.0000, 4200, N'', NULL, N'Услуги школы\Немецкий язык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (79, N'Интенсивный курс с преподавателем-носителем японского языка для компаний', 1380.0000, 4200, N'', 20, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (80, N'Индивидуальный онлайн-урок японского языка по Skype', 1000.0000, 4800, N'', 20, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (81, N'Урок в группе английского языка для студентов', 960.0000, 4800, N'', 25, N'Услуги школы\Английский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (82, N'Киноклуб английского языка для студентов', 980.0000, 4800, N'', NULL, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (83, N'Интенсивный курс английского языка с русскоязычным преподавателем для компаний', 1210.0000, 4800, N'', NULL, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (84, N'Киноклуб французского языка для взрослых', 1770.0000, 5400, N'', 10, N'Услуги школы\киноклуб.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (85, N'Интенсивный курс испанского языка с русскоязычным преподавателем для компаний', 1000.0000, 5400, N'', 25, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (86, N'Урок в группе французского языка для школьников', 1970.0000, 6000, N'', NULL, N'Услуги школы\Французский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (87, N'Подготовка к экзамену TOEFL', 1070.0000, 6000, N'', 5, N'Услуги школы\Подготовка к экзамену TOEFL.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (88, N'Урок в группе итальянского языка для школьников', 1410.0000, 6000, N'', 15, N'Услуги школы\Итальянский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (89, N'Занятие с русскоязычным репетитором французского языка', 1870.0000, 6000, N'', 20, N'Услуги школы\Французский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (90, N'Индивидуальный онлайн-урок английского языка по Skype', 1880.0000, 6000, N'', NULL, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (91, N'Занятие с репетитором-носителем английского языка', 910.0000, 6600, N'', NULL, N'Услуги школы\Английский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (92, N'Урок в группе английского языка для школьников', 900.0000, 6600, N'', NULL, N'Услуги школы\Английский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (93, N'Интенсивный курс китайского языка с русскоязычным преподавателем для компаний', 1470.0000, 6600, N'', NULL, N'Услуги школы\for company.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (94, N'Занятие с русскоязычным репетитором китайского языка', 940.0000, 6600, N'', 15, N'Услуги школы\Китайский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (95, N'Занятие с репетитором-носителем итальянского языка', 1370.0000, 7200, N'', 5, N'Услуги школы\Итальянский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (96, N'Урок в группе испанского языка для школьников', 1910.0000, 7200, N'', NULL, N'Услуги школы\Испанский язык.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (97, N'Подготовка к экзамену IELTS', 1730.0000, 7200, N'', NULL, N'Услуги школы\Подготовка к экзамену IELTS.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (98, N'Занятие с репетитором-носителем немецкого языка', 1120.0000, 7200, N'', NULL, N'Услуги школы\Немецкий язык.png')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (99, N'Индивидуальный урок английского языка с преподавателем-носителем языка', 1300.0000, 7200, N'', NULL, N'Услуги школы\Английский язык.jpg')
GO
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (100, N'Индивидуальный онлайн-урок французского языка по Skype', 2010.0000, 7200, N'', NULL, N'Услуги школы\online lessons.jpg')
INSERT [dbo].[Service] ([ID], [Title], [Cost], [DurationInSeconds], [Description], [Discount], [MainImagePath]) VALUES (101, N'Изучение чытайского', 10000.0000, 10000, N'Тест', 85, N'C:\Услуги школы\Китайский язык.jpg')
SET IDENTITY_INSERT [dbo].[Service] OFF
GO
SET IDENTITY_INSERT [dbo].[ServicePhoto] ON 

INSERT [dbo].[ServicePhoto] ([ID], [ServiceID], [PhotoPath]) VALUES (1, 1, N'C:\Услуги школы\online lessons.jpg')
INSERT [dbo].[ServicePhoto] ([ID], [ServiceID], [PhotoPath]) VALUES (2, 1, N'C:\Услуги школы\Китайский язык.jpg')
SET IDENTITY_INSERT [dbo].[ServicePhoto] OFF
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product] FOREIGN KEY([MainProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product]
GO
ALTER TABLE [dbo].[AttachedProduct]  WITH CHECK ADD  CONSTRAINT [FK_AttachedProduct_Product1] FOREIGN KEY([AttachedProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[AttachedProduct] CHECK CONSTRAINT [FK_AttachedProduct_Product1]
GO
ALTER TABLE [dbo].[Client]  WITH CHECK ADD  CONSTRAINT [FK_Client_Gender] FOREIGN KEY([GenderCode])
REFERENCES [dbo].[Gender] ([Code])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Gender]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Client]
GO
ALTER TABLE [dbo].[ClientService]  WITH CHECK ADD  CONSTRAINT [FK_ClientService_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ClientService] CHECK CONSTRAINT [FK_ClientService_Service]
GO
ALTER TABLE [dbo].[DocumentByService]  WITH CHECK ADD  CONSTRAINT [FK_DocumentByService_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[DocumentByService] CHECK CONSTRAINT [FK_DocumentByService_ClientService]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY([ManufacturerID])
REFERENCES [dbo].[Manufacturer] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Manufacturer]
GO
ALTER TABLE [dbo].[ProductPhoto]  WITH CHECK ADD  CONSTRAINT [FK_ProductPhoto_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductPhoto] CHECK CONSTRAINT [FK_ProductPhoto_Product]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_ClientService] FOREIGN KEY([ClientServiceID])
REFERENCES [dbo].[ClientService] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_ClientService]
GO
ALTER TABLE [dbo].[ProductSale]  WITH CHECK ADD  CONSTRAINT [FK_ProductSale_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ID])
GO
ALTER TABLE [dbo].[ProductSale] CHECK CONSTRAINT [FK_ProductSale_Product]
GO
ALTER TABLE [dbo].[ServicePhoto]  WITH CHECK ADD  CONSTRAINT [FK_ServicePhoto_Service] FOREIGN KEY([ServiceID])
REFERENCES [dbo].[Service] ([ID])
GO
ALTER TABLE [dbo].[ServicePhoto] CHECK CONSTRAINT [FK_ServicePhoto_Service]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Client] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Client] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Client]
GO
ALTER TABLE [dbo].[TagOfClient]  WITH CHECK ADD  CONSTRAINT [FK_TagOfClient_Tag] FOREIGN KEY([TagID])
REFERENCES [dbo].[Tag] ([ID])
GO
ALTER TABLE [dbo].[TagOfClient] CHECK CONSTRAINT [FK_TagOfClient_Tag]
GO
