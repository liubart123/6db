USE [LLH_lab1]
GO

/****** Object:  Table [dbo].[matches]    Script Date: 02.02.2021 11:22:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[matches](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[date] [date] NOT NULL,
	[sport_type] [int] NOT NULL,
	[building] [int] NOT NULL,
 CONSTRAINT [PK_matches] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[matches]  WITH CHECK ADD  CONSTRAINT [FK_matches_building] FOREIGN KEY([building])
REFERENCES [dbo].[buildings] ([id])
GO

ALTER TABLE [dbo].[matches] CHECK CONSTRAINT [FK_matches_building]
GO

ALTER TABLE [dbo].[matches]  WITH CHECK ADD  CONSTRAINT [FK_matches_sport] FOREIGN KEY([sport_type])
REFERENCES [dbo].[sport_types] ([id])
GO

ALTER TABLE [dbo].[matches] CHECK CONSTRAINT [FK_matches_sport]
GO


