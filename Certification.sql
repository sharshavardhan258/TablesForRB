USE [RedBenchDB]
GO

/****** Object:  Table [dbo].[Certification]    Script Date: 17-07-2017 14:50:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Certification](
	[ID] [int] IDENTITY(240000,1) NOT NULL,
	[From] [date] NULL,
	[To] [date] NULL,
	[CourseName] [nvarchar](50) NULL,
	[Institution] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[WorkforceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
