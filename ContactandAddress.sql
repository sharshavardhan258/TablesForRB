USE [RedBenchDB]
GO

/****** Object:  Table [dbo].[ContactandAddress]    Script Date: 17-07-2017 14:46:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ContactandAddress](
	[ID] [int] IDENTITY(100501,1) NOT NULL,
	[ContactName] [varchar](50) NULL,
	[JobPosition] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Notes] [varchar](max) NULL,
	[Phone] [varchar](50) NULL,
	[VendorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[ContactandAddress]  WITH CHECK ADD FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([ID])
GO
