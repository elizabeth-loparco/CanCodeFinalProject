USE [ElizabethLoparcoDB]
GO

/****** Object:  Table [dbo].[orders]    Script Date: 5/27/2024 2:05:16 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[orders](
	[orderID] [int] NOT NULL,
	[customerID] [int] NOT NULL,
	[productID] [int] NOT NULL,
	[quantity] [int] NOT NULL,
	[orderTimestamp] [timestamp] NOT NULL
) ON [PRIMARY]
GO

