GO

/****** Object:  Table [dbo].[Company]    Script Date: 17-07-2017 13:05:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Company](
	[Id] [int] IDENTITY(100000,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Website] [varchar](max) NULL,
	[Industry] [varchar](50) NULL,
	[Size] [varchar](50) NULL,
	[Revenue] [varchar](50) NULL,
	[Headquarters] [varchar](50) NULL,
	[Image ] [image] NULL,
	[Address1] [varchar](max) NULL,
	[Address2] [varchar](max) NULL,
	[City] [varchar](50) NULL,
	[State] [varchar](50) NULL,
	[ZipCode] [int] NULL,
	[OrganizationID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
)

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[Company]  WITH CHECK ADD FOREIGN KEY([OrganizationID])
REFERENCES [dbo].[Org] ([ID])
GO
