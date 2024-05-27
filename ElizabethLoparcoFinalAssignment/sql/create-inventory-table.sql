USE [ElizabethLoparcoDB]
GO

/****** Object:  Table [dbo].[inventory]    Script Date: 5/27/2024 2:04:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[inventory](
	[productID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[location] [text] NOT NULL,
	[color] [text] NULL,
	[size] [text] NULL,
	[reorder] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

