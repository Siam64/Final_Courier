USE [CourierManagement]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/7/2024 1:18:31 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[Customer]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[Employee]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[Lookups]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[Parcel]    Script Date: 12/7/2024 1:18:32 PM ******/
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
/****** Object:  Table [dbo].[PriceTable]    Script Date: 12/7/2024 1:18:32 PM ******/
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
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'1e5a2f3b-e303-4ad7-b3c5-4684e60b5c75', N'brown@gmail.com', N'BROWN@GMAIL.COM', N'brown@gmail.com', N'BROWN@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEILCzgdvNu59gVkSxlFjOrmyRNexWG5YkvUlY1OjGDsbIUDy+7anYwiAaRM6XY3ehQ==', N'ZRYBW5MJPBXDHSG45LPEPJKFOQRICCYC', N'd2e062cf-971f-4c43-9e0f-9309c18a62de', NULL, 0, 0, NULL, 1, 0, N'Samiul', N'Alim')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'siam64@gmail.com', N'SIAM64@GMAIL.COM', N'siam64@gmail.com', N'SIAM64@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEAa0kwQOPsVVq3CfE5qADZ03j02qngMnXhlAEI5zCDysMFVfLdhIWyUiwbdVky2rOQ==', N'2ZMGYT2KOC47U3JMA653ABBYYR4GJXBN', N'eb31c3b0-cc15-4515-87ff-fb155793f5d7', NULL, 0, 0, NULL, 1, 0, N'siam', N'Ahmed')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'795172db-8987-41c2-870a-f6bfcd1fe8e4', N'User12@gmail.com', N'USER12@GMAIL.COM', N'User12@gmail.com', N'USER12@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEC2a8Sl6w/oL41qFWQmS40sRDJr2R9ADMv0wsO7TflZvIGeRX9ewGudmW6Emsfg+KA==', N'6QLA6YAV2USB4WKEMNAOEBI5NGMYF7XX', N'aae08fb2-95a3-4df7-a252-6e1a743c4fab', NULL, 0, 0, NULL, 1, 0, N'User', N'12')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'cbee80b6-bc93-49a6-bb3e-3cfb416aa57b', N'User11@gmail.com', N'USER11@GMAIL.COM', N'User11@gmail.com', N'USER11@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAELizPATB1h4Kck+n1ntasK5nV15gd0+kq/6UjdfkfhAEE4Pdy5uQ7WkcNE6xvJIHqQ==', N'52KEI7BPHTZSLBHIBKTHLEAK62SUGB23', N'47ef7ac9-14ba-43e4-aca1-48fa26c51576', NULL, 0, 0, NULL, 1, 0, N'Samiul', N'Alim')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'd3c1ebe2-265b-4abc-aa62-eb4e7d2d1235', N'samiul@gmail.com', N'SAMIUL@GMAIL.COM', N'samiul@gmail.com', N'SAMIUL@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEIb4/AhB14uffX1zULcCttfGpsYu0GirDJrv2J5mwIhxwt5XAwCzSCQ62zW86fnKFQ==', N'JSBTSYKQBUETCQID2BW5USGDRNFK54UW', N'cfadb273-13d2-4b34-8e75-669850f694fd', NULL, 0, 0, NULL, 1, 0, N'', N'')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'd8095624-86a2-4fbb-b8e2-b1d4a2e96322', N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFXfHJQNc/i8972lbky9hf1TtbBeBxwhYCtDXinhoKhrwGASeqpZsTg4654JbHs/uQ==', N'GHONDFGHF6XOUD33E7WGXZSJ5SY7YYJU', N'3cfa615f-e54c-4868-98b7-c62cf7339fa4', NULL, 0, 0, NULL, 1, 0, N'user', N'1')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FirstName], [LastName]) VALUES (N'eb2225df-32d7-4fa8-8e5c-d7c854169d54', N'siam@gmail.com', N'SIAM@GMAIL.COM', N'siam@gmail.com', N'SIAM@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEPs3XArjqhnqGplUiJK/y+dmDd18Mh9nwaavliY+5uS5yJO+1TAou/kZJpwKfmi+1Q==', N'6PEXAAW5ULPNQZ4SZBK6ARGJSORP6E2B', N'd344263d-7f3c-4b1a-9278-525907ca6954', NULL, 0, 0, NULL, 1, 0, N'', N'')
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1, N'a0840cce-756e-4f00-8e15-84307e354ada', N'0542544524', N'Samiul', N'samiul@samiul', N'Dhaka', N'dhaka', N'ftfh', CAST(N'2024-09-29T13:22:41.1569832' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2024-09-29T13:22:41.1574055' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (2, N'88ebe54e-2305-4642-ae0b-e361a78a4066', N'05465468', N'jony', N'jony@jony', N'Dhaka', N'no', N'hgvvyj', CAST(N'2024-09-29T13:22:41.1569832' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2024-09-29T13:22:41.1574055' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (3, N'a052dfbd-0694-4063-81b7-3abeadc1b201', N'012545', N'asif', N'asif@asif', N'Dhaka', N'dhaka', N'ddfdf', CAST(N'2024-09-29T15:05:53.9612975' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2024-09-29T15:05:53.9615717' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (4, N'8ba0c802-77b8-4168-b619-09ec3fa40b37', N'0542544524', N'Samiul', N'samiul@samiul', N'Dhaka', N'dhaka', N'fzdfdz', CAST(N'2024-09-29T15:05:53.9612975' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2024-09-29T15:05:53.9615717' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (5, N'0743e0a3-9704-4cbc-820b-eded88e1d9b8', N'w4344', N'Jony', N'jony@jony', N'Dhaka', N'dhaka', N'ef', CAST(N'2024-09-29T15:09:44.0348114' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2024-09-29T15:09:44.0348122' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (6, N'8855fb91-fe93-4a3e-880c-a4b9d124628f', N'012545', N'asif', N'asif@asif', N'Dhaka', N'dhaka', N'rr', CAST(N'2024-09-29T15:09:44.0348114' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2024-09-29T15:09:44.0348122' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (7, N'5f8e3e03-d925-4a10-8a6b-e031dc8bff3e', N'0542544524', N'Jony', N'jony@jony', N'Dhaka', N'dhaka', N'na', CAST(N'2024-09-29T15:14:16.1766171' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2024-09-29T15:14:16.1766181' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (8, N'20158ab8-943a-43d6-a388-d277d59df8ad', N'012545', N'asif', N'asif@asif', N'Dhaka', N'dhaka', N'jony', CAST(N'2024-09-29T15:14:16.1766171' AS DateTime2), N'00000000-0000-0000-0000-000000000000', CAST(N'2024-09-29T15:14:16.1766181' AS DateTime2), N'00000000-0000-0000-0000-000000000000')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (9, N'3c15f63e-5105-474b-8d07-d3ff990305ac', N'01644077424', N'Samiul Alim', N'siamahmed64038@gmail.com', N'Dhaka', N'n/a', N'sdsd', CAST(N'2024-12-03T03:25:17.2548364' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-03T03:25:17.2548976' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (10, N'6c382287-0e0e-4cc9-90e4-2258f718e738', N'65465', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'sdsad', CAST(N'2024-12-03T03:25:17.2548364' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-03T03:25:17.2548976' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (11, N'49feac8b-fbc7-4b05-b00a-70ae7ead757c', N'655655', N'Sender', N'sender@sender.com', N'Dhaka', N'kjgffvfd', N'fdvfdvfdv', CAST(N'2024-12-03T04:00:03.6682904' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-03T04:00:03.6724321' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (12, N'23396122-28c4-4699-9462-fc7d4b014cca', N'6456559', N'Receiver', N'receiver@receiver.com', N'Dhaka', N'fvfv', N'fvfdvfdv', CAST(N'2024-12-03T04:00:03.6682904' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-03T04:00:03.6724321' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (13, N'145b965f-18f2-4389-adb4-4fd1f9884952', N'65465', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'sdsad', CAST(N'2024-12-03T05:22:38.1131343' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-03T05:22:38.1135018' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (14, N'809d5b14-90f9-481a-81ea-5873b4965963', N'65465', N'Samiul Alim', N'akash@akash.com', N'Dhaka', N'sadsd', N'sdsad', CAST(N'2024-12-03T05:22:38.1131343' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-03T05:22:38.1135018' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (15, N'0758dec8-1444-46b0-bbca-34f2b1952a13', N'65489565', N'Samiul', N'sam@sam.com', N'Dhaka', N'asdff', N'asdf', CAST(N'2024-12-04T05:35:44.6760404' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T05:35:44.6760404' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (16, N'8e772174-9e91-414c-a901-559cdbe93224', N'65465', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'sdsad', CAST(N'2024-12-04T05:35:44.6760404' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T05:35:44.6760404' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (17, N'3d0740b3-99bf-470f-b7e8-9292a5d62487', N'01644077424', N'Samiul Alim', N'siamahmed64038@gmail.com', N'Dhaka', N'n/a', N'sdsd', CAST(N'2024-12-04T05:45:53.7792380' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T05:45:53.7792380' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (18, N'0ba52e9d-75fc-456f-ad54-e3e3669bdeda', N'65465', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'sdsad', CAST(N'2024-12-04T05:45:53.7792380' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T05:45:53.7792380' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (19, N'5ed4ba17-9568-4a44-9b94-0f1e9e610afe', N'01644077424', N'Samiul Alim', N'siamahmed64038@gmail.com', N'Dhaka', N'n/a', N'dchdjchd', CAST(N'2024-12-04T08:58:03.9408308' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T08:58:03.9408308' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (20, N'853ce82d-7516-4c7f-8fa5-083de495ba5d', N'86555', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'dsjhdh', CAST(N'2024-12-04T08:58:03.9408308' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T08:58:03.9408308' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (21, N'4ce8b97f-baac-4fdc-8898-45ce24d6d647', N'65465', N'akash', N'akash@akash.com', N'Kushtia', N'sadsd', N'', CAST(N'2024-12-04T09:11:15.4752408' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T09:11:15.4752408' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (22, N'b380719d-48ef-4178-ac1e-d8e2841d94bf', N'65465', N'Samiul Alim', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-04T09:11:15.4752408' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T09:11:15.4752408' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (23, N'313c6052-2c85-4288-900c-bcb3fac6a162', N'01644077424', N'Samiul Alim', N'samiulalim64038@gmail.com', N'Gazipur', N'n/a', N'', CAST(N'2024-12-04T09:27:02.4840588' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T09:27:02.4840588' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (24, N'd464fb28-b0ab-456b-bf86-f51da172f32b', N'5465', N'akash', N'akash@akash.com', N'Ctg', N'sadsd', N'', CAST(N'2024-12-04T09:27:02.4840588' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T09:27:02.4840588' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (25, N'217f4f05-0b2c-4998-8a19-239c4f206453', N'6543532', N'dxxcfgh', N'gfxxcgcfvhg', N'Khulna', N'gfchg', N'', CAST(N'2024-12-04T09:32:09.7368432' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T09:32:09.7368432' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (26, N'c3e1ed49-c048-4b10-a9f5-1f1d9c19046b', N'55555', N'rrrr', N'fgxgfcgvgh', N'Gazipur', N'cgcgvhvgh', N'', CAST(N'2024-12-04T09:32:09.7368432' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T09:32:09.7368432' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (27, N'486986e0-16bf-4eae-8f0e-eebeceabcc2c', N'65465', N'Samiul Alim', N'akash@akash.com', N'Savar', N'sadsd', N'', CAST(N'2024-12-04T09:44:10.0277762' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T09:44:10.0277762' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (28, N'b7f3f62a-98a4-48a6-9a01-ad36c1e5293f', N'01644077424', N'hgfhjhj', N'samiulalim64038@gmail.com', N'Ctg', N'sadsd', N'', CAST(N'2024-12-04T09:44:10.0277762' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T09:44:10.0277762' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1015, N'90fd40b3-1cc1-4948-8f7b-0b4cd7aac194', N'123', N'qwe', N'qweer', N'Khulna', N'dffg', N'ddfff', CAST(N'2024-12-05T02:59:17.5101124' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T02:59:17.5101124' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1016, N'9cabb24e-2c8f-47e7-96f1-40d71a39b03f', N'5445', N'ytrgtt', N'hgfgfggf', N'Dhaka', N'gffggf', N'hgg', CAST(N'2024-12-05T02:59:17.5101124' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T02:59:17.5101124' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1017, N'79ccbe30-e671-48e7-a6b3-4d66a7ce920b', N'65489565', N'Samiul', N'sam@sam.com', N'Savar', N'asdff', N'asdf', CAST(N'2024-12-05T03:03:59.6129003' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T03:03:59.6129003' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1018, N'96ce953e-3306-4f53-bfd0-04c00c68e563', N'01644077424', N'akash', N'samiulalim64038@gmail.com', N'Dhaka', N'asdff', N'asdf', CAST(N'2024-12-05T03:03:59.6129003' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T03:03:59.6129003' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1019, N'13e1dd51-71e5-4691-a2fc-0cffb7d8ec6e', N'54654', N'changed', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T03:05:14.6049874' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T03:51:45.8205382' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1020, N'31ac5c97-a264-4bab-a281-54f7cf2390a9', N'01644077424', N'Samiul Alim', N'siamahmed64038@gmail.com', N'Dhaka', N'n/a', N'', CAST(N'2024-12-05T03:05:14.6049874' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T03:51:45.8205382' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1021, N'a4a10678-5aa5-4caf-a602-2e11b0988390', N'434435', N'tgrfvdf chanfged', N'email changed', N'Kushtia', N'fvdz fvfd', N'fdvdf', CAST(N'2024-12-05T03:54:40.6024332' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T04:10:50.3072700' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1022, N'ad29bc62-a1f5-45b7-88df-4ab3c2975a4e', N'5454', N'fvdfcdf', N'fvdfzff', N'Dhaka', N'vfdvfvvfdv', N'change', CAST(N'2024-12-05T03:54:40.6024332' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T04:10:50.3072700' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1023, N'b25e2e85-f536-4e6c-a76f-fc016c445eda', N'65465', N'akash', N'akash@akash.com', N'Kushtia', N'sadsd', N'', CAST(N'2024-12-05T11:31:06.9957010' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T11:31:06.9957010' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1024, N'eedccdde-e5f0-479e-9d76-6b346f009445', N'65465', N'Samiul Alim', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T11:31:06.9957010' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T11:31:06.9957010' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1025, N'e3fd8d9f-cce7-4aa3-8afd-5dff31d060ad', N'65465', N'Samiul Alim', N'akash@akash.com', N'Kushtia', N'sadsd', N'', CAST(N'2024-12-05T11:33:36.5361792' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T11:33:36.5361792' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1026, N'c66cb594-a8a4-4d07-bf97-7b7c48287d8a', N'65465', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T11:33:36.5361792' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T11:33:36.5361792' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1027, N'd33a1dbd-ae04-4e85-b59e-a3a4c20f0a1c', N'01644077424', N'Samiul Alim', N'siamahmed64038@gmail.com', N'Dhaka', N'n/a', N'', CAST(N'2024-12-05T12:03:40.7129783' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T12:03:40.7129783' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1028, N'bc478d3d-3934-4df2-b0d7-ed4e52211cf8', N'65684684', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T12:03:40.7129783' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T12:03:40.7129783' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1029, N'fd0fc2b6-0201-4449-97d7-eb6aae3064dc', N'01644077424', N'Samiul Alim', N'siamahmed64038@gmail.com', N'Dhaka', N'n/a', N'', CAST(N'2024-12-05T15:46:52.1395797' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T15:46:52.1395797' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1030, N'269677c3-aad8-440b-899f-28df0a441c8b', N'01644077424', N'Samiul Alim', N'siamahmed64038@gmail.com', N'Dhaka', N'n/a', N'', CAST(N'2024-12-05T15:46:52.1395797' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T15:46:52.1395797' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1031, N'80d1a54e-4a99-4591-a0e7-8c1525a236f6', N'6465', N'akash', N'akash@akash.com', N'Kushtia', N'sadsd', N'', CAST(N'2024-12-05T15:51:44.0162680' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T15:51:44.0162680' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1032, N'40e4b196-beeb-46a0-ae85-9422addc8a48', N'01644077424', N'Samiul Alim', N'siamahmed64038@gmail.com', N'Dhaka', N'n/a', N'', CAST(N'2024-12-05T15:51:44.0162680' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T15:51:44.0162680' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1033, N'd9c81c1f-f432-4287-b2aa-e00742ac61ad', N'65465', N'Samiul Alim', N'akash@akash.com', N'Kushtia', N'sadsd', N'', CAST(N'2024-12-05T15:54:59.1533244' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T15:54:59.1533244' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1034, N'a6cf849e-bb97-498a-a9c1-184103a7674f', N'65465', N'Samiul Alim', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T15:54:59.1533244' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T15:54:59.1533244' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1035, N'864c71be-03e5-401c-a8a5-5c9194a74998', N'65465', N'Samiul Alim ch', N'akash@akash.com', N'Ctg', N'sadsd', N'', CAST(N'2024-12-05T15:58:17.6346607' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:34:50.1325034' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1036, N'0f074ab6-c03b-4770-8ed4-dae73f83b762', N'65465', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T15:58:17.6346607' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:34:50.1325034' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1037, N'404ab24a-84fb-470c-b28d-4740a0b6d110', N'65465', N'Samiul Alim', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T16:03:38.4417329' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:03:38.4417329' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1038, N'ecf9d696-fb3f-479b-86eb-9b2d90feeaa0', N'65465', N'Samiul Alim', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T16:03:38.4417329' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:03:38.4417329' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1039, N'2d68d214-f690-4404-aa9e-aecca4f67c4f', N'65465', N'Samiul Alim', N'akash@akash.com', N'Kushtia', N'sadsd', N'', CAST(N'2024-12-05T16:46:28.3312818' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:46:28.3312818' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1040, N'cbb99ffd-1d1b-40e6-acd3-8444b6b5b867', N'65465', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T16:46:28.3312818' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:46:28.3312818' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1041, N'f4d3071b-0ffc-40a5-a035-ee40e861e166', N'335', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T16:49:32.3348585' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:49:32.3348585' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1042, N'bfeb2b35-d87d-40aa-a7f8-9a6862105268', N'01644077424', N'Samiul Alim', N'siamahmed64038@gmail.com', N'Dhaka', N'n/a', N'', CAST(N'2024-12-05T16:49:32.3348585' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:49:32.3348585' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1043, N'18014752-973b-41b5-97ee-3bdc19fa7ddb', N'65465', N'Samiul Alim', N'akash@akash.com', N'Kushtia', N'sadsd', N'', CAST(N'2024-12-05T16:53:03.9462223' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:53:03.9462223' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1044, N'f4f6bbb7-231e-45f0-b3c9-c4762f6d513b', N'65465', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T16:53:03.9462223' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:53:03.9462223' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1045, N'48839a67-28ac-41e8-b9c9-bf4444d27f02', N'65465', N'new change', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T16:57:32.1863084' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:57:56.4147450' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1046, N'426161f2-9e4c-49d1-a3fe-76bd95c3c334', N'65465', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-05T16:57:32.1863084' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:57:56.4147450' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1047, N'a890c490-7c07-4718-8721-3681c37d5a54', N'01644077424', N'Samiul updated', N'siamahmed64038@gmail.com', N'Dhaka', N'n/a', N'', CAST(N'2024-12-07T05:11:28.1924180' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-07T05:12:39.6303740' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1048, N'273f4171-cd00-465b-8cb1-00cf1028c405', N'465465', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'', CAST(N'2024-12-07T05:11:28.1924180' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-07T05:12:39.6303740' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1049, N'7d0a0426-132a-4dd7-982c-fd0541478cb0', N'546563', N'akash', N'akash@akash.com', N'Dhaka', N'sadsd', N'fghjk', CAST(N'2024-12-07T05:23:43.7502676' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-07T05:24:09.0576742' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1050, N'0a6c719c-ceb0-4509-8d40-e799e6c064b2', N'01644077424', N'Samiul Alim', N'samiulalim64038@gmail.com', N'Dhaka', N'n/a', N'bn', CAST(N'2024-12-07T05:23:43.7502676' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-07T05:24:09.0576742' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1051, N'1770e584-578e-464d-86bd-75e41dc1be52', N'01644077424', N'Samiul c', N'siamahmed64038@gmail.com', N'Ctg', N'n/a', N'dfghjk', CAST(N'2024-12-07T06:49:01.5999769' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-07T07:08:15.8359815' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
INSERT [dbo].[Customer] ([IdNum], [Customer_ID], [Customer_Phone], [Customer_Name], [Customer_Email], [Customer_City], [Customer_Address], [Note], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy]) VALUES (1052, N'086fe585-7eea-4b28-84df-8e136f69922a', N'5454568', N'akash', N'akash@akash.com', N'Gazipur', N'sadsd', N'fgfhj', CAST(N'2024-12-07T06:49:01.5999769' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-07T07:08:15.8359815' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe')
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

INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (1, N'665736ce-7181-4827-9507-8f06fccc946c', N'Liquid', 80, 5, 385, CAST(N'2024-12-12T00:00:00.0000000' AS DateTime2), N'79ccbe30-e671-48e7-a6b3-4d66a7ce920b', N'96ce953e-3306-4f53-bfd0-04c00c68e563', CAST(N'2024-12-05T03:03:59.6129003' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T03:03:59.6129003' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205090359', N'Delivered', CAST(N'2024-12-05T03:03:59.6129003' AS DateTime2), 15, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (2, N'c90e763c-4948-4880-8ad8-47be7e7329e3', N'Light', 50, 52, 2000, CAST(N'2024-12-13T00:00:00.0000000' AS DateTime2), N'13e1dd51-71e5-4691-a2fc-0cffb7d8ec6e', N'31ac5c97-a264-4bab-a281-54f7cf2390a9', CAST(N'2024-12-05T03:05:14.6049874' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T03:51:45.8205382' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205090514', N'Delivered', CAST(N'2024-12-05T03:05:14.6049874' AS DateTime2), 600, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (3, N'b97f85b8-45ca-4c9c-b00e-b49ecdb09591', N'Light', 50, 8, 200, CAST(N'2024-12-21T00:00:00.0000000' AS DateTime2), N'a4a10678-5aa5-4caf-a602-2e11b0988390', N'ad29bc62-a1f5-45b7-88df-4ab3c2975a4e', CAST(N'2024-12-05T03:54:40.6024332' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T04:10:50.3072700' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205095440', N'Delivered', CAST(N'2024-12-05T03:54:40.6024332' AS DateTime2), 200, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (4, N'73f1f6f1-b11c-4bbd-8bda-5bd2fc33faa6', N'Paper', 20, 88, 1660, CAST(N'2024-12-18T00:00:00.0000000' AS DateTime2), N'b25e2e85-f536-4e6c-a76f-fc016c445eda', N'eedccdde-e5f0-479e-9d76-6b346f009445', CAST(N'2024-12-05T11:31:06.9957010' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T11:31:06.9957010' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205173107', N'Delivered', CAST(N'2024-12-05T11:31:06.9957010' AS DateTime2), 100, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (5, N'04621343-8ba3-428c-bf67-179a686bf050', N'Paper', 20, 5, 100, CAST(N'2024-12-21T00:00:00.0000000' AS DateTime2), N'e3fd8d9f-cce7-4aa3-8afd-5dff31d060ad', N'c66cb594-a8a4-4d07-bf97-7b7c48287d8a', CAST(N'2024-12-05T11:33:36.5361792' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T11:33:36.5361792' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205173336', N'Delivered', CAST(N'2024-12-05T11:33:36.5361792' AS DateTime2), 0, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (6, N'd3113d5a-bf5f-4902-b790-7f281866ccb6', N'Liquid', 80, 8, 640, CAST(N'2024-12-20T00:00:00.0000000' AS DateTime2), N'd33a1dbd-ae04-4e85-b59e-a3a4c20f0a1c', N'bc478d3d-3934-4df2-b0d7-ed4e52211cf8', CAST(N'2024-12-05T12:03:40.7129783' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T12:03:40.7129783' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205180341', N'Delivered', CAST(N'2024-12-05T12:03:40.7129783' AS DateTime2), 0, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (7, N'b5158b1f-74ab-4d57-9418-5d187ef2f038', N'Paper', 20, 45, 800, CAST(N'2024-12-27T00:00:00.0000000' AS DateTime2), N'fd0fc2b6-0201-4449-97d7-eb6aae3064dc', N'269677c3-aad8-440b-899f-28df0a441c8b', CAST(N'2024-12-05T15:46:52.1395797' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T15:46:52.1395797' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205214652', N'Delivered', CAST(N'2024-12-05T15:46:52.1395797' AS DateTime2), 100, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (8, N'5bf95b25-dc89-48fc-a382-4649801cd5de', N'Heavy', 100, 6, 500, CAST(N'2024-12-11T00:00:00.0000000' AS DateTime2), N'80d1a54e-4a99-4591-a0e7-8c1525a236f6', N'40e4b196-beeb-46a0-ae85-9422addc8a48', CAST(N'2024-12-05T15:51:44.0162680' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T15:51:44.0162680' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205215144', N'On the way', CAST(N'2024-12-05T15:51:44.0162680' AS DateTime2), 100, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (9, N'd3d6bb38-f01a-444c-a0c8-268128a41d06', N'Paper', 20, 7, 128, CAST(N'2024-12-27T00:00:00.0000000' AS DateTime2), N'd9c81c1f-f432-4287-b2aa-e00742ac61ad', N'a6cf849e-bb97-498a-a9c1-184103a7674f', CAST(N'2024-12-05T15:54:59.1533244' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T15:54:59.1533244' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205215459', N'On the way', CAST(N'2024-12-05T15:54:59.1533244' AS DateTime2), 12, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (10, N'aa354a1c-832d-46a2-a635-412e9b39ddf1', N'Heavy', 100, 5, 0, CAST(N'2024-12-25T00:00:00.0000000' AS DateTime2), N'864c71be-03e5-401c-a8a5-5c9194a74998', N'0f074ab6-c03b-4770-8ed4-dae73f83b762', CAST(N'2024-12-05T15:58:17.6346607' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:34:50.1325034' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205215817', N'On the way', CAST(N'2024-12-05T15:58:17.6346607' AS DateTime2), 60000, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (11, N'd774b5d4-ba4a-4702-85f3-445558b05469', N'Liquid', 80, 6, 0, CAST(N'2024-12-27T00:00:00.0000000' AS DateTime2), N'404ab24a-84fb-470c-b28d-4740a0b6d110', N'ecf9d696-fb3f-479b-86eb-9b2d90feeaa0', CAST(N'2024-12-05T16:03:38.4417329' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:03:38.4417329' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205220338', N'Delivered', CAST(N'2024-12-05T16:03:38.4417329' AS DateTime2), 50000, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (12, N'f7990e35-4877-4380-a5aa-0502eaad6492', N'Liquid', 80, 55, 4300, CAST(N'2024-12-27T00:00:00.0000000' AS DateTime2), N'2d68d214-f690-4404-aa9e-aecca4f67c4f', N'cbb99ffd-1d1b-40e6-acd3-8444b6b5b867', CAST(N'2024-12-05T16:46:28.3312818' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:46:28.3312818' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205224628', N'On the way', CAST(N'2024-12-05T16:46:28.3312818' AS DateTime2), 100, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (13, N'56cdcdc0-1535-4bf4-ad1f-3a6f28e9e01a', N'Light', 50, 56, 2800, CAST(N'2024-12-19T00:00:00.0000000' AS DateTime2), N'f4d3071b-0ffc-40a5-a035-ee40e861e166', N'bfeb2b35-d87d-40aa-a7f8-9a6862105268', CAST(N'2024-12-05T16:49:32.3348585' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:49:32.3348585' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205224932', N'Delivered', CAST(N'2024-12-05T16:49:32.3348585' AS DateTime2), 0, NULL)
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (14, N'5e7f7a51-abac-4d5d-ae03-6baac5218ae9', N'Paper', 20, 23, 460, CAST(N'2024-12-27T00:00:00.0000000' AS DateTime2), N'18014752-973b-41b5-97ee-3bdc19fa7ddb', N'f4f6bbb7-231e-45f0-b3c9-c4762f6d513b', CAST(N'2024-12-05T16:53:03.9462223' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:53:03.9462223' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205225304', N'Delivered', CAST(N'2024-12-05T16:53:03.9462223' AS DateTime2), 0, N'Samiul Alim')
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (15, N'75bf629a-ad94-4130-b652-69098ef39f8a', N'Light', 50, 45, 2250, CAST(N'2024-12-27T00:00:00.0000000' AS DateTime2), N'48839a67-28ac-41e8-b9c9-bf4444d27f02', N'426161f2-9e4c-49d1-a3fe-76bd95c3c334', CAST(N'2024-12-05T16:57:32.1863084' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-05T16:57:56.4147450' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241205225732', N'On the way', CAST(N'2024-12-05T16:57:32.1863084' AS DateTime2), 0, N'Jony Miya')
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (16, N'b9ea26f0-f99d-485a-bfa8-8d717e25eb26', N'Heavy', 100, 5, 400, CAST(N'2024-12-14T00:00:00.0000000' AS DateTime2), N'a890c490-7c07-4718-8721-3681c37d5a54', N'273f4171-cd00-465b-8cb1-00cf1028c405', CAST(N'2024-12-07T05:11:28.1924180' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-07T05:12:39.6303740' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241207111128', N'Delivered', CAST(N'2024-12-07T05:11:28.1924180' AS DateTime2), 100, N'Jony Miya')
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (17, N'ed6b95be-960d-4237-b294-5b05024a0a26', N'Heavy', 100, 45, 4400, CAST(N'2024-12-11T00:00:00.0000000' AS DateTime2), N'7d0a0426-132a-4dd7-982c-fd0541478cb0', N'0a6c719c-ceb0-4509-8d40-e799e6c064b2', CAST(N'2024-12-07T05:23:43.7502676' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-07T05:24:09.0576742' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241207112343', N'Processing', CAST(N'2024-12-07T05:23:43.7502676' AS DateTime2), 100, N'Not Assigned Yet')
INSERT [dbo].[Parcel] ([ID], [Parcel_ID], [Parcel_Type], [Unit_Price], [Weight], [Final_Price], [DelivaryDate], [Sender_ID], [Receiver_ID], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [TrackingNumber], [Status], [OrderDate], [Discount], [Rider]) VALUES (18, N'203182bc-0e97-4ca5-a3e0-216278c9a849', N'Liquid', 80, 5, 300, CAST(N'2024-12-27T00:00:00.0000000' AS DateTime2), N'1770e584-578e-464d-86bd-75e41dc1be52', N'086fe585-7eea-4b28-84df-8e136f69922a', CAST(N'2024-12-07T06:49:01.5999769' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-07T07:08:15.8359815' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', N'20241207124901', N'Processing', CAST(N'2024-12-07T06:49:01.5999769' AS DateTime2), 100, N'Not Assigned Yet')
SET IDENTITY_INSERT [dbo].[Parcel] OFF
GO
SET IDENTITY_INSERT [dbo].[PriceTable] ON 

INSERT [dbo].[PriceTable] ([Id], [ParcelType], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [BasePrice]) VALUES (1, N'Heavy', CAST(N'2024-12-04T07:29:07.3384815' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:29:07.3386102' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', 100)
INSERT [dbo].[PriceTable] ([Id], [ParcelType], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [BasePrice]) VALUES (2, N'Liquid', CAST(N'2024-12-04T07:29:16.9118076' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:29:16.9118078' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', 80)
INSERT [dbo].[PriceTable] ([Id], [ParcelType], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [BasePrice]) VALUES (3, N'Light', CAST(N'2024-12-04T07:29:25.0848087' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:29:25.0848090' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', 50)
INSERT [dbo].[PriceTable] ([Id], [ParcelType], [CreateAt], [CreateBy], [UpdateAt], [UpdateBy], [BasePrice]) VALUES (4, N'Paper', CAST(N'2024-12-04T07:29:33.4190008' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', CAST(N'2024-12-04T07:29:33.4190011' AS DateTime2), N'6e9cedd8-c0b7-454f-ba7e-2c8bb2532cfe', 20)
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
