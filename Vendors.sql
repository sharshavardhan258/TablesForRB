USE [RedBenchDB]
GO

/****** Object:  Table [dbo].[Vendors]    Script Date: 17-07-2017 12:57:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Vendors](
	[ID] [int] IDENTITY(200000,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Address 1] [varchar](50) NULL,
	[Address 2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Zip] [varchar](50) NULL,
	[Website] [varchar](50) NULL,
	[Tags] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[Image] [image] NULL,
	[Language] [varchar](50) NULL,
	[Internal Notes] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Active] [bit] NOT NULL DEFAULT ((0)),
	[OrganizationID] [int] NULL,
	[Mode] [varchar](max) NULL,
	[Type] [varchar](max) NULL,
	[Password] [varchar](50) NULL,
	[Role] [nvarchar](50) NULL,
	[Rating] [varchar](50) NULL DEFAULT ((0)),
	[Published] [bit] NOT NULL DEFAULT ((0)),
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Vendors]  WITH CHECK ADD FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Org] ([ID])
GO

