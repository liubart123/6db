USE [LLH_lab1]
GO

/****** Object:  Table [dbo].[address]    Script Date: 02.02.2021 11:21:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[address](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[street] [nvarchar](50) NULL,
	[house] [nvarchar](50) NULL,
	[flat] [nvarchar](50) NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


