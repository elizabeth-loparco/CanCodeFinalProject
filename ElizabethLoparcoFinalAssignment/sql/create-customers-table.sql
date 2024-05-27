USE [ElizabethLoparcoDB]
GO

/****** Object:  Table [dbo].[customers]    Script Date: 5/27/2024 2:03:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[customers](
	[customerID] [int] NOT NULL,
	[nameFirst] [text] NOT NULL,
	[nameLast] [text] NOT NULL,
	[phone] [text] NULL,
	[email] [text] NULL,
	[address] [text] NOT NULL,
	[city] [text] NOT NULL,
	[state] [text] NOT NULL,
	[zip] [text] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

