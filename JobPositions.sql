USE [RedBenchDB]
GO
/****** Object:  Table [dbo].[JobPositions]    Script Date: 17-07-2017 13:43:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[JobPositions](
	[Id] [int] IDENTITY(300000,1) NOT NULL,
	[NoofPositions] [int] NULL,
	[MaxHourRate] [int] NULL,
	[Location] [varchar](max) NULL,
	[ExperienceFrom] [int] NULL,
	[ExperienceTo] [int] NULL,
	[StartDate] [date] NULL,
	[WeeklyPaidTravel] [bit] NOT NULL DEFAULT ((0)),
	[Duration] [int] NULL,
	[ResidenceStatus] [varchar](50) NULL,
	[MustHaveSkills] [varchar](max) NULL,
	[Nicetohave] [varchar](max) NULL,
	[IncludePersonalTraits] [bit] NOT NULL DEFAULT ((0)),
	[Published] [bit] NOT NULL DEFAULT ((0)),
	[JobtitleId] [int] NULL,
	[OrganizationId] [int] NULL,
	[JobDescription] [varchar](max) NULL,
	[CreatedOn] [date] NULL,
	[UserId] [int] NULL,
	[Createdby] [varchar](max) NULL,
	[JobPositionStatus] [nvarchar](max) NULL,
	[AvailableJobPositions] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)
GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[JobPositions]  WITH CHECK ADD FOREIGN KEY([JobtitleId])
REFERENCES [dbo].[JobTitle] ([Id])
GO

ALTER TABLE [dbo].[JobPositions]  WITH CHECK ADD FOREIGN KEY([OrganizationId])
REFERENCES [dbo].[Org] ([ID])
GO
ALTER TABLE [dbo].[JobPositions]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([ID])
GO
