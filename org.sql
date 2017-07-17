USE [RedBenchDB]
GO

/****** Object:  Table [dbo].[Org]    Script Date: 17-07-2017 12:52:47 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Org](
	[ID] [int] IDENTITY(103000,1) NOT NULL,
	[First Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Alternate Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Contact Number] [varchar](50) NULL,
	[Alternate Contact No] [varchar](50) NULL,
	[CompanyID] [int] NULL,
	[Gender] [varchar](50) NULL,
	[Image] [image] NULL,
	[Address line 1] [varchar](50) NULL,
	[Address line 2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip Code] [varchar](50) NULL,
	[Active] [bit] NOT NULL DEFAULT ((0)),
	[Mode] [varchar](max) NULL,
	[Type] [varchar](max) NULL,
	[LoginType] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Org]  WITH CHECK ADD FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([Id])
GO
