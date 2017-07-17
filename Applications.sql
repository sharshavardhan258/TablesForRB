USE [RedBenchDB]
GO

/****** Object:  Table [dbo].[Applications]    Script Date: 17-07-2017 14:44:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Applications](
	[Id] [int] IDENTITY(1400120,1) NOT NULL,
	[WorkForce] [int] NOT NULL,
	[JobPositions] [int] NOT NULL,
	[Organization] [int] NOT NULL,
	[Vendor] [int] NOT NULL,
	[ApplicationStatus] [varchar](max) NULL,
	[AppliedOn] [date] NULL,
	[HiredDate] [date] NULL,
	[RejectDate] [date] NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Applications]  WITH CHECK ADD FOREIGN KEY([Vendor])
REFERENCES [dbo].[Vendors] ([ID])
GO

ALTER TABLE [dbo].[Applications]  WITH CHECK ADD FOREIGN KEY([Organization])
REFERENCES [dbo].[Org] ([ID])
GO

ALTER TABLE [dbo].[Applications]  WITH CHECK ADD FOREIGN KEY([JobPositions])
REFERENCES [dbo].[JobPositions] ([Id])
GO

ALTER TABLE [dbo].[Applications]  WITH CHECK ADD FOREIGN KEY([WorkForce])
REFERENCES [dbo].[WorkForce] ([Id])
GO

