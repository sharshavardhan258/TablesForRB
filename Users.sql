USE [RedBenchDB]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 17-07-2017 13:03:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(102000,1) NOT NULL,
	[First Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Alternate Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Contact Number] [varchar](50) NULL,
	[Alternate Contact No] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Image] [image] NULL,
	[Address line 1] [varchar](50) NULL,
	[Address line 2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Zip Code] [varchar](50) NULL,
	[Active ] [bit] NOT NULL DEFAULT ((0)),
	[OrganizationID] [int] NULL,
	[Mode] [varchar](max) NULL,
	[Type] [varchar](max) NULL,
	[Role] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Org] ([ID])
GO

