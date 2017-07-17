USE [RedBenchDB]
GO

/****** Object:  Table [dbo].[Education]    Script Date: 17-07-2017 14:48:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Education](
	[ID] [int] IDENTITY(800000,1) NOT NULL,
	[From] [date] NULL,
	[To] [date] NULL,
	[CourseName] [nvarchar](50) NULL,
	[University] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[WorkforceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
