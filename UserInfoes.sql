USE [RedBenchDB]
GO

/****** Object:  Table [dbo].[UserInfoes]    Script Date: 17-07-2017 14:42:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[UserInfoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Mode] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[Active] [bit] NOT NULL DEFAULT ((0)),
	[PhoneNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UserInfoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
