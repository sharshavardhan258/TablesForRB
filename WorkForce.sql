USE [RedBenchDB]
GO

/****** Object:  Table [dbo].[WorkForce]    Script Date: 17-07-2017 14:40:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[WorkForce](
	[Id] [int] IDENTITY(300500,1) NOT NULL,
	[VendorID] [int] NULL,
	[First Name] [varchar](50) NULL,
	[Middle Name] [varchar](50) NULL,
	[Last Name] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Email Address] [varchar](50) NULL,
	[Alternate Email Address] [varchar](50) NULL,
	[Contact Number] [varchar](50) NULL,
	[Alternate Contact Number] [varchar](50) NULL,
	[Address 1] [varchar](50) NULL,
	[Address 2] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[ZipCode] [varchar](50) NULL,
	[JobtitleId] [int] NULL,
	[TechnicalSkillId] [int] NULL,
	[Experience] [varchar](50) NULL,
	[College Grad] [bit] NULL,
	[Current Job Status] [varchar](50) NULL,
	[Prefered Hourly Rate] [varchar](50) NULL,
	[Maximum Hourly Rate] [int] NULL,
	[OrganizationID] [int] NULL,
	[TechnicalSkills] [varchar](max) NULL,
	[Billable] [bit] NOT NULL DEFAULT ((0)),
	[Bench] [bit] NOT NULL DEFAULT ((0)),
	[WFStatus] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[WorkForce]  WITH CHECK ADD FOREIGN KEY([JobtitleId])
REFERENCES [dbo].[JobTitle] ([Id])
GO

ALTER TABLE [dbo].[WorkForce]  WITH CHECK ADD FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Org] ([ID])
GO

ALTER TABLE [dbo].[WorkForce]  WITH CHECK ADD FOREIGN KEY([TechnicalSkillId])
REFERENCES [dbo].[Technical Skills] ([Id])
GO

ALTER TABLE [dbo].[WorkForce]  WITH CHECK ADD FOREIGN KEY([VendorID])
REFERENCES [dbo].[Vendors] ([ID])
GO

