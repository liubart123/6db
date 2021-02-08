USE [LLH_lab1]
GO

/****** Object:  Table [dbo].[building_sport]    Script Date: 02.02.2021 11:21:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[building_sport](
	[sport] [int] NOT NULL,
	[building] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[building_sport]  WITH CHECK ADD  CONSTRAINT [FK_building_sport_building] FOREIGN KEY([building])
REFERENCES [dbo].[buildings] ([id])
GO

ALTER TABLE [dbo].[building_sport] CHECK CONSTRAINT [FK_building_sport_building]
GO

ALTER TABLE [dbo].[building_sport]  WITH CHECK ADD  CONSTRAINT [FK_building_sport_sport] FOREIGN KEY([sport])
REFERENCES [dbo].[sport_types] ([id])
GO

ALTER TABLE [dbo].[building_sport] CHECK CONSTRAINT [FK_building_sport_sport]
GO


