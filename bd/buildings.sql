USE [LLH_lab1]
GO

/****** Object:  Table [dbo].[buildings]    Script Date: 02.02.2021 11:21:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[buildings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[team] [int] NOT NULL,
	[address] [int] NOT NULL,
 CONSTRAINT [PK_buildings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[buildings]  WITH CHECK ADD  CONSTRAINT [FK_buildings_address] FOREIGN KEY([address])
REFERENCES [dbo].[address] ([id])
GO

ALTER TABLE [dbo].[buildings] CHECK CONSTRAINT [FK_buildings_address]
GO

ALTER TABLE [dbo].[buildings]  WITH CHECK ADD  CONSTRAINT [FK_buildings_teams] FOREIGN KEY([team])
REFERENCES [dbo].[teams] ([id])
GO

ALTER TABLE [dbo].[buildings] CHECK CONSTRAINT [FK_buildings_teams]
GO


