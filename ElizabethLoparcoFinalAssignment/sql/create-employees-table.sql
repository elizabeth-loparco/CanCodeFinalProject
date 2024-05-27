USE [ElizabethLoparcoDB]
GO

/****** Object:  Table [dbo].[employees]    Script Date: 5/27/2024 2:04:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[employees](
	[employeeID] [int] NOT NULL,
	[nameFirst] [text] NOT NULL,
	[nameLast] [text] NOT NULL,
	[salary] [decimal](18, 2) NULL,
	[phone] [text] NULL,
	[email] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

