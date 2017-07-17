USE [RedBenchDB]
GO
/****** Object:  Table [dbo].[Technical Skills]    Script Date: 17-07-2017 13:15:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Technical Skills](
	[Id] [int] IDENTITY(106000,1) NOT NULL,
	[Technical Skill Name] [varchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

SET ANSI_PADDING OFF
GO