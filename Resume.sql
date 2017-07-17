USE [RedBenchDB]
GO
/****** Object:  Table [dbo].[Resume]    Script Date: 17-07-2017 14:51:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Resume](
	[ID] [int] IDENTITY(300000,1) NOT NULL,
	[Path] [nvarchar](max) NULL,
	[ResumeName] [nvarchar](max) NULL,
	[WorkforceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO
