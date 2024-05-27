USE [ElizabethLoparcoDB]
GO

/****** Object:  Table [dbo].[products]    Script Date: 5/27/2024 2:05:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[products](
	[productID] [int] NOT NULL,
	[name] [text] NOT NULL,
	[sku] [text] NOT NULL,
	[manufactorCost] [decimal](18, 2) NOT NULL,
	[salesPrice] [decimal](18, 2) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

