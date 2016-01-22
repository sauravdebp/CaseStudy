USE [SecurityMaster]
GO

/****** Object:  Table [dbo].[SecurityAttributes]    Script Date: 23-Jan-16 1:00:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SecurityAttributes](
	[AttributeId] [nchar](10) NULL,
	[SecurityTypeId] [int] NULL,
	[AttributeDisplayName] [varchar](100) NULL,
	[AttributeRealName] [varchar](50) NULL,
	[AttributeDataType] [varchar](50) NULL,
	[AttributeLength] [int] NULL,
	[LastModifiedBy] [varchar](50) NULL,
	[LastModifiedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[IsActive] [bit] NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

