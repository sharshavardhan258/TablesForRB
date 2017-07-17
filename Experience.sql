USE [RedBenchDB]
GO
/****** Object:  Table [dbo].[Experience]    Script Date: 17-07-2017 14:49:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Experience](
	[ID] [int] IDENTITY(800000,1) NOT NULL,
	[From] [date] NULL,
	[To] [date] NULL,
	[Position] [nvarchar](50) NULL,
	[Company] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[WorkforceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO
