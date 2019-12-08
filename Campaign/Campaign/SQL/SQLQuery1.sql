
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 5/20/2019 3:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 5/20/2019 3:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 5/20/2019 3:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 5/20/2019 3:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 5/20/2019 3:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 5/20/2019 3:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 5/20/2019 3:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 5/20/2019 3:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[RelatedId] [int] NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Compaign]    Script Date: 5/20/2019 3:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compaign](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CountryId] [int] NOT NULL,
	[CategoryId] [int] NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Budget] [nvarchar](max) NOT NULL,
	[Goal] [nvarchar](max) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Compaign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countr]    Script Date: 5/20/2019 3:59:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countr](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EnName] [nvarchar](max) NOT NULL,
	[ArName] [nvarchar](max) NOT NULL,
	[CreatedOnUtc] [datetime2](7) NOT NULL,
	[UpdatedOnUtc] [datetime2](7) NOT NULL,
	[Hidden] [bit] NOT NULL,
	[DisplayOrder] [int] NULL,
 CONSTRAINT [PK_Countr] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190518030140_add-table-compaign', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190519225902_update-table-category', N'2.2.3-servicing-35854')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20190519230337_update-table-category-v2', N'2.2.3-servicing-35854')
GO
SET IDENTITY_INSERT [dbo].[Category] ON 
GO
INSERT [dbo].[Category] ([Id], [Name], [CreateDate], [RelatedId]) VALUES (1, N'Technology', CAST(N'2019-05-18T13:21:48.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [CreateDate], [RelatedId]) VALUES (2, N'Sports', CAST(N'2019-05-18T13:22:16.0000000' AS DateTime2), NULL)
GO
INSERT [dbo].[Category] ([Id], [Name], [CreateDate], [RelatedId]) VALUES (3, N'Movies', CAST(N'2019-05-19T23:41:34.5760266' AS DateTime2), 8)
GO
INSERT [dbo].[Category] ([Id], [Name], [CreateDate], [RelatedId]) VALUES (4, N'Family and Relationships', CAST(N'2019-05-19T23:43:06.7574727' AS DateTime2), 4)
GO
INSERT [dbo].[Category] ([Id], [Name], [CreateDate], [RelatedId]) VALUES (5, N'Books and Literature', CAST(N'2019-05-19T23:46:01.1543678' AS DateTime2), 2)
GO
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Compaign] ON 
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (3, 58, 1, N'name2', N'200', N'Conversion', CAST(N'2019-05-18T16:15:02.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (4, 1, 2, N'name3', N'300', N'Awareness', CAST(N'2019-05-18T20:32:19.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (5, 1, 1, N'name5', N'100', N'Awareness', CAST(N'2019-05-18T20:32:19.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (6, 9, 2, N'name7', N'50', N'Awareness', CAST(N'2019-05-18T20:32:19.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (8, 9, 1, N'asdasd', N'324', N'Awareness', CAST(N'2019-05-18T20:37:20.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (10, 59, 2, N'Daved Charly Samhon', N'200', N'Awareness', CAST(N'2019-05-18T20:59:25.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (12, 2, 1, N'RZZS', N'300', N'Conversion', CAST(N'2019-05-18T21:24:21.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (13, 8, 2, N'DASD', N'150', N'Awareness', CAST(N'2019-05-18T21:26:23.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (14, 8, 1, N'DASD', N'150', N'Awareness', CAST(N'2019-05-18T21:26:23.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (15, 59, 1, N'test', N'30', N'Awareness', CAST(N'2019-05-18T22:21:18.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (17, 17, 4, N'test', N'399', N'Awareness', CAST(N'2019-05-19T23:42:16.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (18, 17, 4, N'test', N'399', N'Awareness', CAST(N'2019-05-19T23:42:16.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (19, 5, 4, N'name1', N'399', N'Conversion', CAST(N'2019-05-19T23:18:29.0000000' AS DateTime2))
GO
INSERT [dbo].[Compaign] ([Id], [CountryId], [CategoryId], [Name], [Budget], [Goal], [CreateDate]) VALUES (20, 5, 5, N'name1', N'399', N'Conversion', CAST(N'2019-05-19T23:18:29.0000000' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Compaign] OFF
GO
SET IDENTITY_INSERT [dbo].[Countr] ON 
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (1, N'Afghanistan', N'أفغانستان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (2, N'Albania', N'ألبانيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (3, N'Algeria', N'الجزائر', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (4, N'American Samoa', N'ساموا-الأمريكي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (5, N'Andorra', N'أندورا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (6, N'Angola', N'أنغولا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (7, N'Anguilla', N'أنغويلا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (8, N'Antarctica', N'أنتاركتيكا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (9, N'Antigua and Barbuda', N'أنتيغوا وبربودا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (10, N'Argentina', N'الأرجنتين', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (11, N'Armenia', N'أرمينيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (12, N'Aruba', N'أروبه', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (13, N'Australia', N'أستراليا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (14, N'Austria', N'النمسا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (15, N'Azerbaijan', N'أذربيجان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (16, N'Bahamas', N'الباهاماس', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (17, N'Bahrain', N'البحرين', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (18, N'Bangladesh', N'بنغلاديش', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (19, N'Barbados', N'بربادوس', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (20, N'Belarus', N'روسيا البيضاء', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (21, N'Belgium', N'بلجيكا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (22, N'Belize', N'بيليز', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (23, N'Benin', N'بنين', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (24, N'Bermuda', N'جزر برمودا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (25, N'Bhutan', N'بوتان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (26, N'Bolivia', N'بوليفيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (27, N'Bosnia and Herzegovina', N'البوسنة و الهرسك', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (28, N'Botswana', N'بوتسوانا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (29, N'Brazil', N'البرازيل', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (30, N'Brunei Darussalam', N'بروني', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (31, N'Bulgaria', N'بلغاريا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (32, N'Burkina Faso', N'بوركينا فاسو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (33, N'Burundi', N'بوروندي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (34, N'Cambodia', N'كمبوديا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (35, N'Cameroon', N'كاميرون', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (36, N'Canada', N'كندا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (37, N'Cape Verde', N'الرأس الأخضر', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (38, N'Central African Republic', N'جمهورية أفريقيا الوسطى', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (39, N'Chad', N'تشاد', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (40, N'Chile', N'شيلي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (41, N'China', N'جمهورية الصين الشعبية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (42, N'Colombia', N'كولومبيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (43, N'Comoros', N'جزر القمر', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (44, N'Democratic Republic', N'جمهورية الكونغو الديمقراطية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (45, N'Congo, Republic of (Brazzaville)', N'جمهورية الكونغو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (46, N'Cook Islands', N'جزر كوك', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (47, N'Costa Rica', N'كوستاريكا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (48, N'Cote d”Ivoire', N'ساحل العاج', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (49, N'Croatia', N'كرواتيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (50, N'Cuba', N'كوبا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (51, N'Cyprus', N'قبرص', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (52, N'Czech Republic', N'الجمهورية التشيكية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (53, N'Denmark', N'الدانمارك', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (54, N'Djibouti', N'جيبوتي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (55, N'Dominica', N'دومينيكا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (56, N'Dominican Republic', N'الجمهورية الدومينيكية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (57, N'East Timor Timor-Leste', N'تيمور الشرقية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (58, N'Ecuador', N'إكوادور', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (59, N'Egypt', N'مصر', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (60, N'El Salvador', N'إلسلفادور', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (61, N'Equatorial Guinea', N'غينيا الاستوائي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (62, N'Eritrea', N'إريتريا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (63, N'Estonia', N'استونيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (64, N'Ethiopia', N'أثيوبيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (65, N'Faroe Islands', N'جزر فارو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (66, N'Fiji', N'فيجي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (67, N'Finland', N'فنلندا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (68, N'France', N'فرنسا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (69, N'French Guiana', N'غويانا الفرنسية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (70, N'French Polynesia', N'بولينيزيا الفرنسية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (71, N'Gabon', N'الغابون', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (72, N'Gambia', N'غامبيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (73, N'Georgia', N'جيورجيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (74, N'Germany', N'ألمانيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (75, N'Ghana', N'غانا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (76, N'Gibraltar', N'جبل طارق', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (77, N'Greece', N'اليونان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (78, N'Greenland', N'جرينلاند', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (79, N'Grenada', N'غرينادا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (80, N'Guadeloupe', N'جزر جوادلوب', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (81, N'Guam', N'جوام', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (82, N'Guatemala', N'غواتيمال', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (83, N'Guinea', N'غينيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (84, N'Guinea-Bissau', N'غينيا-بيساو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (85, N'Guyana', N'غيانا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (86, N'Haiti', N'هايتي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (87, N'Honduras', N'هندوراس', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (88, N'Hong Kong', N'هونغ كونغ', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (89, N'Hungary', N'المجر', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (90, N'Iceland', N'آيسلندا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (91, N'India', N'الهند', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (92, N'Indonesia', N'أندونيسيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (93, N'Iran', N'إيران', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (94, N'Iraq', N'العراق', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (95, N'Ireland', N'إيرلندا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (96, N'Italy', N'إيطاليا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (97, N'Jamaica', N'جمايكا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (98, N'Japan', N'اليابان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (99, N'Jordan', N'الأردن', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (100, N'Kazakhstan', N'كازاخستان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (101, N'Kenya', N'كينيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (102, N'Kiribati', N'كيريباتي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (103, N'Korea, (North Korea)', N'كوريا الشمالية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (104, N'Korea, (South Korea)', N'كوريا الجنوبية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (105, N'Kuwait', N'الكويت', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (106, N'Kyrgyzstan', N'قيرغيزستان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (107, N'Lao, PDR', N'لاوس', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (108, N'Latvia', N'لاتفيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (109, N'Lebanon', N'لبنان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (110, N'Lesotho', N'ليسوتو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (111, N'Liberia', N'ليبيريا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (112, N'Libya', N'ليبيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (113, N'Liechtenstein', N'ليختنشتين', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (114, N'Lithuania', N'لتوانيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (115, N'Luxembourg', N'لوكسمبورغ', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (116, N'Macao', N'ماكاو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (117, N'Macedonia, Rep. of', N'مقدونيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (118, N'Madagascar', N'مدغشقر', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (119, N'Malawi', N'مالاوي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (120, N'Malaysia', N'ماليزيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (121, N'Maldives', N'المالديف', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (122, N'Mali', N'مالي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (123, N'Malta', N'مالطا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (124, N'Marshall Islands', N'جزر مارشال', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (125, N'Martinique', N'مارتينيك', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (126, N'Mauritania', N'موريتانيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (127, N'Mauritius', N'موريشيوس', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (128, N'Mexico', N'المكسيك', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (129, N'Micronesia', N'مايكرونيزيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (130, N'Moldova', N'مولدافيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (131, N'Monaco', N'موناكو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (132, N'Mongolia', N'منغوليا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (133, N'Montenegro', N'الجبل الأسو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (134, N'Montserrat', N'مونتسيرات', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (135, N'Morocco', N'المغرب', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (136, N'Mozambique', N'موزمبيق', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (137, N'Myanmar, Burma', N'ميانمار', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (138, N'Namibia', N'ناميبيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (139, N'Nauru', N'نورو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (140, N'Nepal', N'نيبال', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (141, N'Netherlands', N'هولندا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (142, N'Netherlands Antilles', N'جزر الأنتيل الهولندي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (143, N'New Caledonia', N'كاليدونيا الجديدة', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (144, N'New Zealand', N'نيوزيلندا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (145, N'Nicaragua', N'نيكاراجوا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (146, N'Niger', N'النيجر', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (147, N'Nigeria', N'نيجيريا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (148, N'Niue', N'ني', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (149, N'Northern Mariana Islands', N'جزر ماريانا الشمالية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (150, N'Norway', N'النرويج', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (151, N'Oman', N'عُمان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (152, N'Pakistan', N'باكستان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (153, N'Palau', N'بالاو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (154, N'Palestine', N'فلسطين', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (155, N'Panama', N'بنما', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (156, N'Papua New Guinea', N'بابوا غينيا الجديدة', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (157, N'Paraguay', N'باراغواي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (158, N'Peru', N'بيرو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (159, N'Philippines', N'الفليبين', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (160, N'Poland', N'بولونيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (161, N'Portugal', N'البرتغال', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (162, N'Puerto Rico', N'بورتو ريكو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (163, N'Qatar', N'قطر', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (164, N'Reunion Island', N'ريونيون', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (165, N'Romania', N'رومانيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (166, N'Russia', N'روسيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (167, N'Rwanda', N'رواندا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (168, N'Saint Kitts and Nevis', N'سانت كيتس ونيفس', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (169, N'Saint Lucia', N'سانت لوسيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (170, N'Saint Vincent and the', N'سانت فنسنت وجزر غرينادين', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (171, N'Samoa', N'المناطق', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (172, N'San Marino', N'سان مارينو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (173, N'Sao Tome and Príncipe', N'ساو تومي وبرينسيبي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (174, N'Saudi Arabia', N'المملكة العربية السعودية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (175, N'Senegal', N'السنغال', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (176, N'Serbia', N'جمهورية صربيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (177, N'Seychelles', N'سيشيل', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (178, N'Sierra Leone', N'سيراليون', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (179, N'Singapore', N'سنغافورة', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (180, N'Slovakia', N'سلوفاكيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (181, N'Slovenia', N'سلوفينيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (182, N'Solomon Islands', N'جزر سليمان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (183, N'Somalia', N'الصومال', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (184, N'South Africa', N'جنوب أفريقيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (185, N'Spain', N'إسبانيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (186, N'Sri Lanka', N'سريلانكا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (187, N'Sudan', N'السودان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (188, N'Suriname', N'سورينام', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (189, N'Swaziland', N'سوازيلند', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (190, N'Sweden', N'السويد', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (191, N'Switzerland', N'سويسرا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (192, N'Syria', N'سوريا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (193, N'Taiwan', N'تايوان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (194, N'Tajikistan', N'طاجيكستان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (195, N'Tanzania', N'تنزانيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (196, N'Thailand', N'تايلندا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (197, N'Tibet', N'تبت', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (198, N'Timor-Leste (East Timor)', N'تيمور الشرقية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (199, N'Togo', N'توغو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (200, N'Tonga', N'تونغا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (201, N'Trinidad and Tobago', N'ترينيداد وتوباغو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (202, N'Tunisia', N'تونس', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (203, N'Turkey', N'تركيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (204, N'Turkmenistan', N'تركمانستان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (205, N'Tuvalu', N'توفالو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (206, N'Uganda', N'أوغندا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (207, N'Ukraine', N'أوكرانيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (208, N'United Arab Emirates', N'الإمارات العرب', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (209, N'United Kingdom', N'المملكة المتحدة', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (210, N'United States', N'الولايات المتحدة', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (211, N'Uruguay', N'أورغواي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (212, N'Uzbekistan', N'أوزباكستان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (213, N'Vanuatu', N'فانواتو', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (214, N'Vatican City State', N'الفاتيكان', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (215, N'Venezuela', N'فنزويلا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (216, N'Vietnam', N'فيتنام', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (217, N'Virgin Islands (British)', N'الجزر العذراء البريطانية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (218, N'Virgin Islands (U.S.)', N'الجزر العذراء الأمريكي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (219, N'Wallis and ', N'والس وفوتونا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (220, N'Western Sahara', N'الصحراء الغربية', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (221, N'Yemen', N'اليمن', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (222, N'Zambia', N'زامبيا', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
INSERT [dbo].[Countr] ([Id], [EnName], [ArName], [CreatedOnUtc], [UpdatedOnUtc], [Hidden], [DisplayOrder]) VALUES (223, N'Zimbabwe', N'زمبابوي', CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2018-01-01T00:00:00.0000000' AS DateTime2), 0, 10)
GO
SET IDENTITY_INSERT [dbo].[Countr] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 5/20/2019 3:59:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 5/20/2019 3:59:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 5/20/2019 3:59:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 5/20/2019 3:59:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 5/20/2019 3:59:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 5/20/2019 3:59:54 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 5/20/2019 3:59:54 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Compaign_CategoryId]    Script Date: 5/20/2019 3:59:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_Compaign_CategoryId] ON [dbo].[Compaign]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Compaign_CountryId]    Script Date: 5/20/2019 3:59:54 AM ******/
CREATE NONCLUSTERED INDEX [IX_Compaign_CountryId] ON [dbo].[Compaign]
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Compaign]  WITH CHECK ADD  CONSTRAINT [FK_Compaign_Category_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Compaign] CHECK CONSTRAINT [FK_Compaign_Category_CategoryId]
GO
ALTER TABLE [dbo].[Compaign]  WITH CHECK ADD  CONSTRAINT [FK_Compaign_Countr_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[Countr] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Compaign] CHECK CONSTRAINT [FK_Compaign_Countr_CountryId]
GO
