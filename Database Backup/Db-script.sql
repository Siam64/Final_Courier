USE [CourierManagement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/11/2024 2:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/11/2024 2:02:25 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/11/2024 2:02:25 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/11/2024 2:02:25 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/11/2024 2:02:25 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/11/2024 2:02:25 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/11/2024 2:02:25 PM ******/
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
	[FirstName] [nvarchar](255) NOT NULL,
	[LastName] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/11/2024 2:02:25 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 12/11/2024 2:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[IdNum] [int] IDENTITY(1,1) NOT NULL,
	[Customer_ID] [uniqueidentifier] NOT NULL,
	[Customer_Phone] [nvarchar](max) NOT NULL,
	[Customer_Name] [nvarchar](max) NOT NULL,
	[Customer_Email] [nvarchar](max) NOT NULL,
	[Customer_City] [nvarchar](max) NOT NULL,
	[Customer_Address] [nvarchar](max) NOT NULL,
	[Note] [nvarchar](max) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[CreateBy] [uniqueidentifier] NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[UpdateBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[IdNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 12/11/2024 2:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lookups]    Script Date: 12/11/2024 2:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lookups](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Value] [nvarchar](max) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Serial] [int] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[CreateBy] [uniqueidentifier] NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[UpdateBy] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Lookups] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parcel]    Script Date: 12/11/2024 2:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parcel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Parcel_ID] [uniqueidentifier] NOT NULL,
	[Parcel_Type] [nvarchar](max) NOT NULL,
	[Unit_Price] [float] NOT NULL,
	[Weight] [float] NOT NULL,
	[Final_Price] [float] NOT NULL,
	[DelivaryDate] [datetime2](7) NOT NULL,
	[Sender_ID] [uniqueidentifier] NOT NULL,
	[Receiver_ID] [uniqueidentifier] NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[CreateBy] [uniqueidentifier] NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[UpdateBy] [uniqueidentifier] NOT NULL,
	[TrackingNumber] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[Discount] [float] NOT NULL,
	[Rider] [nvarchar](max) NULL,
 CONSTRAINT [PK_Parcel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceTable]    Script Date: 12/11/2024 2:02:25 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceTable](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParcelType] [nvarchar](max) NOT NULL,
	[CreateAt] [datetime2](7) NOT NULL,
	[CreateBy] [uniqueidentifier] NOT NULL,
	[UpdateAt] [datetime2](7) NOT NULL,
	[UpdateBy] [uniqueidentifier] NOT NULL,
	[BasePrice] [float] NOT NULL,
 CONSTRAINT [PK_PriceTable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240921084150_create db', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240921135023_AddFirstNameLastName', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240921143055_CreateFirstNameLastName', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240922141403_CreateLookup', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240924161655_CreateCustomerAndParcel', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240925055619_UpdateCustomer', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241003075647_CreatePriceTable', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241003080214_AddPriceTable', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241003095711_UpdatePriceTablev2', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241202032219_update2-12-24v1', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241203030833_update-Parcel-3-12-24-v1', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241203051851_update-parcel-3-12-24-v2', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241203084254_update-parcel-3-12-24-v3', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241204084318_update-parcel-4-12-24-v1', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241205162616_update-parcel-5-12-24-v1', N'8.0.8')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241207064606_update-customer-7-12-24-v1', N'8.0.8')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'481D585F-316F-405D-B163-E99612EBC78A', N'Customer', N'CUSTOMER', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'D5929A29-241A-4CB1-9BAD-7BD3EF1A6F5C', N'SuperAdmin', N'SUPERADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'FEF8CD7A-1A85-480E-B562-FB88BA224D94', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0d8c35a0-fdc5-44e1-a851-48d6f1b0d660', N'D5929A29-241A-4CB1-9BAD-7BD3EF1A6F5C')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e24a1eb6-1d99-48b7-9238-888fb967db67', N'FEF8CD7A-1A85-480E-B562-FB88BA224D94')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'0d8c35a0-fdc5-44e1-a851-48d6f1b0d660', N'superadmin@cms.com', N'SUPERADMIN@CMS.COM', N'superadmin@cms.com', N'SUPERADMIN@CMS.COM', 0, N'AQAAAAIAAYagAAAAEL5VTs6vDZNe0LeROpCrAeWCIfpDkOiBc4CtzWjiXkSbFlKkGfDMxG6T3LhB74dSqg==', N'RSEZM3PINHI3W33LEEVGRMBF62TPEWNC', N'd9bbacc0-c101-41d4-8a88-ea828452e37a', NULL, 0, 0, NULL, 1, 0, N'Super', N'Admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'1e5a2f3b-e303-4ad7-b3c5-4684e60b5c75', N'brown@gmail.com', N'BROWN@GMAIL.COM', N'brown@gmail.com', N'BROWN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEILCzgdvNu59gVkSxlFjOrmyRNexWG5YkvUlY1OjGDsbIUDy+7anYwiAaRM6XY3ehQ==', N'ZRYBW5MJPBXDHSG45LPEPJKFOQRICCYC', N'd2e062cf-971f-4c43-9e0f-9309c18a62de', NULL, 0, 0, NULL, 1, 0, N'Samiul', N'Alim')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'siam64@gmail.com', N'SIAM64@GMAIL.COM', N'siam64@gmail.com', N'SIAM64@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAa0kwQOPsVVq3CfE5qADZ03j02qngMnXhlAEI5zCDysMFVfLdhIWyUiwbdVky2rOQ==', N'2ZMGYT2KOC47U3JMA653ABBYYR4GJXBN', N'eb31c3b0-cc15-4515-87ff-fb155793f5d7', NULL, 0, 0, NULL, 1, 0, N'siam', N'Ahmed')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'795172db-8987-41c2-870a-f6bfcd1fe8e4', N'User12@gmail.com', N'USER12@GMAIL.COM', N'User12@gmail.com', N'USER12@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEC2a8Sl6w/oL41qFWQmS40sRDJr2R9ADMv0wsO7TflZvIGeRX9ewGudmW6Emsfg+KA==', N'6QLA6YAV2USB4WKEMNAOEBI5NGMYF7XX', N'aae08fb2-95a3-4df7-a252-6e1a743c4fab', NULL, 0, 0, NULL, 1, 0, N'User', N'12')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'cbee80b6-bc93-49a6-bb3e-3cfb416aa57b', N'User11@gmail.com', N'USER11@GMAIL.COM', N'User11@gmail.com', N'USER11@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELizPATB1h4Kck+n1ntasK5nV15gd0+kq/6UjdfkfhAEE4Pdy5uQ7WkcNE6xvJIHqQ==', N'52KEI7BPHTZSLBHIBKTHLEAK62SUGB23', N'47ef7ac9-14ba-43e4-aca1-48fa26c51576', NULL, 0, 0, NULL, 1, 0, N'Samiul', N'Alim')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'd3c1ebe2-265b-4abc-aa62-eb4e7d2d1235', N'samiul@gmail.com', N'SAMIUL@GMAIL.COM', N'samiul@gmail.com', N'SAMIUL@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEIb4/AhB14uffX1zULcCttfGpsYu0GirDJrv2J5mwIhxwt5XAwCzSCQ62zW86fnKFQ==', N'JSBTSYKQBUETCQID2BW5USGDRNFK54UW', N'cfadb273-13d2-4b34-8e75-669850f694fd', NULL, 0, 0, NULL, 1, 0, N'', N'')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'd8095624-86a2-4fbb-b8e2-b1d4a2e96322', N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFXfHJQNc/i8972lbky9hf1TtbBeBxwhYCtDXinhoKhrwGASeqpZsTg4654JbHs/uQ==', N'GHONDFGHF6XOUD33E7WGXZSJ5SY7YYJU', N'3cfa615f-e54c-4868-98b7-c62cf7339fa4', NULL, 0, 0, NULL, 1, 0, N'user', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'e24a1eb6-1d99-48b7-9238-888fb967db67', N'admin@cms.com', N'ADMIN@CMS.COM', N'admin@cms.com', N'ADMIN@CMS.COM', 0, N'AQAAAAIAAYagAAAAENyS8nMaPp+RIPQljBpRkK1pVUeFuH2xTgcP6BqEvRpVqX8HH8T0tyvzLVo1QEyyAQ==', N'5PLYWHEUH23ZENJXXDL5SUW5R5CRSNXC', N'1a465de6-7e65-4d04-82f3-003f5391dac3', NULL, 0, 0, NULL, 1, 0, N'Admin', N'Admin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'eb2225df-32d7-4fa8-8e5c-d7c854169d54', N'siam@gmail.com', N'SIAM@GMAIL.COM', N'siam@gmail.com', N'SIAM@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEPs3XArjqhnqGplUiJK/y+dmDd18Mh9nwaavliY+5uS5yJO+1TAou/kZJpwKfmi+1Q==', N'6PEXAAW5ULPNQZ4SZBK6ARGJSORP6E2B', N'd344263d-7f3c-4b1a-9278-525907ca6954', NULL, 0, 0, NULL, 1, 0, N'', N'')
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1, N'06d49495-725c-443e-a8b4-60f46f9034ab', N'01644988525', N'Samiul ', N'siam@siam.com', N'Dhaka', N'Uttara', N'N/A', CAST(N'2024-12-08T09:15:17.0214952' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-11T07:46:55.2130673' AS DateTime2), N'0d8c35a0-fdc5-44e1-a851-48d6f1b0d660')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (2, N'029f35ef-de9d-4368-a0ca-b7b4c752e5eb', N'01988744562', N'Akash change', N'akash@akash.com', N'Savar', N'savar', N'N/A', CAST(N'2024-12-08T09:15:17.0214952' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-08T10:14:26.7515722' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (3, N'5520d1ed-38a2-400d-9459-8bad952f2283', N'01988744256', N'Jony', N'jony@jony.com', N'Ctg', N'ctg', N'Handle with care', CAST(N'2024-12-08T15:18:15.4165614' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-08T15:26:33.4506552' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (4, N'92f6f83b-7b23-49d9-a349-549bf041743f', N'01855822487', N'Rajib2r', N'rajib@rajib.com', N'Khulna', N'khulna', N'nothingfgghhh', CAST(N'2024-12-08T15:24:37.7935914' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-10T10:32:50.9343800' AS DateTime2), N'0d8c35a0-fdc5-44e1-a851-48d6f1b0d660')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (5, N'fc390d5f-8330-481d-97cf-e093c4b1eb89', N'01855822480', N'Rajib1', N'rajib1@rajib.com', N'Savar', N'svr', N'nothing', CAST(N'2024-12-08T15:27:48.9153257' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-10T10:32:50.9343800' AS DateTime2), N'0d8c35a0-fdc5-44e1-a851-48d6f1b0d660')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (6, N'84300eae-e078-478b-a272-959a938a931c', N'0171245548', N'Rahim', N'rahim@ra.com', N'Khulna', N'khulna', N'ghjk', CAST(N'2024-12-09T03:13:00.5194063' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-11T07:46:55.2130673' AS DateTime2), N'0d8c35a0-fdc5-44e1-a851-48d6f1b0d660')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([EmployeId], [Name], [Address], [Phone], [Email]) VALUES (15, N'Samiul Alim', N'Uttara', N'01644077424', N'siamahmed64038@gmail.com')
INSERT [dbo].[Employee] ([EmployeId], [Name], [Address], [Phone], [Email]) VALUES (18, N'Jony Miya', N'Dhaka', N'01855744236', N'jony@jony.com')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[Lookups] ON 

INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (32, N'ParcelType', N'Heavy', N'Heavy', 1, 2, CAST(N'2024-12-03T03:17:33.5979165' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-03T03:17:33.5979167' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (33, N'ParcelType', N'Liquid', N'Liquid', 1, 3, CAST(N'2024-12-04T06:58:54.4066487' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T06:58:54.4066989' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (34, N'ParcelType', N'Light', N'Light', 1, 4, CAST(N'2024-12-04T06:59:12.7639333' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T06:59:12.7639334' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (35, N'ParcelType', N'Paper', N'Paper', 1, 5, CAST(N'2024-12-04T06:59:26.8328104' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T06:59:26.8328106' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (36, N'City', N'Dhaka', N'Dhaka', 1, 1, CAST(N'2024-12-04T07:01:11.8864160' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:01:11.8864169' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (37, N'City', N'Gazipur', N'Gazipur', 1, 6, CAST(N'2024-12-04T07:01:31.3637924' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:01:31.3637925' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (38, N'City', N'Tangail', N'Tangail', 0, 7, CAST(N'2024-12-04T07:01:53.9656374' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:01:53.9656377' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (39, N'City', N'Savar', N'Savar', 1, 8, CAST(N'2024-12-04T07:02:05.4874295' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:02:05.4874297' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (40, N'City', N'Ctg', N'Ctg', 1, 9, CAST(N'2024-12-04T07:05:13.0924062' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:05:13.0924066' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (41, N'City', N'Kushtia', N'Kushtia', 1, 10, CAST(N'2024-12-04T07:05:39.0626147' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:05:39.0626154' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (42, N'City', N'Khulna', N'Khulna', 1, 11, CAST(N'2024-12-04T07:06:03.0599532' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:06:03.0599534' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (43, N'City', N'Select One', N'Select One', 1, -1, CAST(N'2024-12-04T07:16:56.2770461' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:16:56.2770471' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Lookups] ([Id], [Type], [Value], [Name], [IsActive], [Serial], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (44, N'ParcelType', N'Select One', N'Select One', 1, -1, CAST(N'2024-12-04T07:17:28.5855320' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:17:28.5855324' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
SET IDENTITY_INSERT [dbo].[Lookups] OFF
GO
SET IDENTITY_INSERT [dbo].[Parcel] ON 

INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (1, N'298ac4f2-d1ee-43de-bef9-bd955ba91604', N'Liquid', 80, 5, 300, CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2), N'06d49495-725c-443e-a8b4-60f46f9034ab', N'029f35ef-de9d-4368-a0ca-b7b4c752e5eb', CAST(N'2024-12-08T09:15:17.0214952' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-08T09:15:47.2101360' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241208151517', N'On the way', CAST(N'2024-12-08T09:15:17.0214952' AS DateTime2), 100, N'Jony Miya')
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (2, N'a7ad477d-ddab-4595-b535-6a0dc6183d47', N'Liquid', 80, 5, 400, CAST(N'2024-12-25T00:00:00.0000000' AS DateTime2), N'06d49495-725c-443e-a8b4-60f46f9034ab', N'029f35ef-de9d-4368-a0ca-b7b4c752e5eb', CAST(N'2024-12-08T10:01:34.5377591' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-08T10:01:34.5377591' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241208160145', N'Delivered', CAST(N'2024-12-08T10:01:34.5377591' AS DateTime2), 0, N'Samiul Alim')
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (3, N'598705a6-a0be-4d7a-af01-b7f49288b22c', N'Paper', 50, 5, 240, CAST(N'2024-12-17T00:00:00.0000000' AS DateTime2), N'06d49495-725c-443e-a8b4-60f46f9034ab', N'029f35ef-de9d-4368-a0ca-b7b4c752e5eb', CAST(N'2024-12-08T10:14:09.2044627' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-08T10:14:26.7515722' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241208161409', N'Delivered', CAST(N'2024-12-08T10:14:09.2044627' AS DateTime2), 10, N'Samiul Alim')
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (4, N'8fc5f317-1ec1-43f1-90ae-508ff564158b', N'Liquid', 80, 56, 4380, CAST(N'2024-12-19T00:00:00.0000000' AS DateTime2), N'029f35ef-de9d-4368-a0ca-b7b4c752e5eb', N'5520d1ed-38a2-400d-9459-8bad952f2283', CAST(N'2024-12-08T15:18:15.4165614' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-08T15:18:15.4165614' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241208211816', N'On the way', CAST(N'2024-12-08T15:18:15.4165614' AS DateTime2), 100, N'Jony Miya')
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (5, N'7bbb405b-2bf7-4b5a-ad49-6625660da9a6', N'Heavy', 100, 8, 800, CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2), N'5520d1ed-38a2-400d-9459-8bad952f2283', N'92f6f83b-7b23-49d9-a349-549bf041743f', CAST(N'2024-12-08T15:24:37.7935914' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-08T15:26:33.4506552' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241208212437', N'On the way', CAST(N'2024-12-08T15:24:37.7935914' AS DateTime2), 0, N'Samiul Alim')
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (6, N'23a16359-b7e0-41bf-a6e3-1ccbecc21e28', N'Light', 50, 8, 400, CAST(N'2024-12-25T00:00:00.0000000' AS DateTime2), N'92f6f83b-7b23-49d9-a349-549bf041743f', N'fc390d5f-8330-481d-97cf-e093c4b1eb89', CAST(N'2024-12-08T15:27:48.9153257' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-10T10:32:50.9343800' AS DateTime2), N'0d8c35a0-fdc5-44e1-a851-48d6f1b0d660', N'20241208212748', N'On the way', CAST(N'2024-12-08T15:27:48.9153257' AS DateTime2), 0, N'Samiul Alim')
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (7, N'f2fc5ccf-b928-4dc3-835e-65bddd76729d', N'Light', 50, 8, 350, CAST(N'2024-12-13T00:00:00.0000000' AS DateTime2), N'06d49495-725c-443e-a8b4-60f46f9034ab', N'84300eae-e078-478b-a272-959a938a931c', CAST(N'2024-12-09T03:13:00.5194063' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-11T07:46:55.2130673' AS DateTime2), N'0d8c35a0-fdc5-44e1-a851-48d6f1b0d660', N'20241209091300', N'Processing', CAST(N'2024-12-09T03:13:00.5194063' AS DateTime2), 50, N'Not Assigned Yet')
SET IDENTITY_INSERT [dbo].[Parcel] OFF
GO
SET IDENTITY_INSERT [dbo].[PriceTable] ON 

INSERT [dbo].[PriceTable] ([Id], [ParcelType], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [BasePrice]) VALUES (1, N'Heavy', CAST(N'2024-12-04T07:29:07.3384815' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:29:07.3386102' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', 100)
INSERT [dbo].[PriceTable] ([Id], [ParcelType], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [BasePrice]) VALUES (2, N'Liquid', CAST(N'2024-12-04T07:29:16.9118076' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:29:16.9118078' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', 80)
INSERT [dbo].[PriceTable] ([Id], [ParcelType], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [BasePrice]) VALUES (3, N'Light', CAST(N'2024-12-04T07:29:25.0848087' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:29:25.0848090' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', 50)
INSERT [dbo].[PriceTable] ([Id], [ParcelType], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [BasePrice]) VALUES (4, N'Paper', CAST(N'2024-12-04T07:29:33.4190008' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:29:33.4190011' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', 50)
SET IDENTITY_INSERT [dbo].[PriceTable] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [FirstName]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [LastName]
GO
ALTER TABLE [dbo].[Parcel] ADD  DEFAULT (N'') FOR [TrackingNumber]
GO
ALTER TABLE [dbo].[Parcel] ADD  DEFAULT (N'') FOR [Status]
GO
ALTER TABLE [dbo].[Parcel] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [OrderDate]
GO
ALTER TABLE [dbo].[Parcel] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [Discount]
GO
ALTER TABLE [dbo].[PriceTable] ADD  DEFAULT ((0.0000000000000000e+000)) FOR [BasePrice]
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
