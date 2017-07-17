USE [RedBenchDB]
GO

/****** Object:  Table [dbo].[JobtitleTechicalSkills]    Script Date: 17-07-2017 14:02:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[JobtitleTechicalSkills](
	[Id] [int] IDENTITY(107000,1) NOT NULL,
	[JobTitleID] [int] NULL,
	[TechnicalSkillID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

ALTER TABLE [dbo].[JobtitleTechicalSkills]  WITH CHECK ADD FOREIGN KEY([JobTitleID])
REFERENCES [dbo].[JobTitle] ([Id])
GO

ALTER TABLE [dbo].[JobtitleTechicalSkills]  WITH CHECK ADD FOREIGN KEY([TechnicalSkillID])
REFERENCES [dbo].[Technical Skills] ([Id])
GO
