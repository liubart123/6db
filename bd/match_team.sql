USE [LLH_lab1]
GO

/****** Object:  Table [dbo].[match_team]    Script Date: 02.02.2021 11:22:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[match_team](
	[match] [int] NOT NULL,
	[team] [int] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[match_team]  WITH CHECK ADD  CONSTRAINT [FK_match_team_match] FOREIGN KEY([match])
REFERENCES [dbo].[matches] ([id])
GO

ALTER TABLE [dbo].[match_team] CHECK CONSTRAINT [FK_match_team_match]
GO

ALTER TABLE [dbo].[match_team]  WITH CHECK ADD  CONSTRAINT [FK_match_team_team] FOREIGN KEY([team])
REFERENCES [dbo].[teams] ([id])
GO

ALTER TABLE [dbo].[match_team] CHECK CONSTRAINT [FK_match_team_team]
GO


