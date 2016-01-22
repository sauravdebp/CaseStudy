USE [SecurityMaster]
GO

/****** Object:  Table [dbo].[CorporateBond]    Script Date: 23-Jan-16 12:59:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[CorporateBond](
	[SecurityId] [int] NOT NULL,
	[Name] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[AssetType] [varchar](max) NULL,
	[InvestmentType] [varchar](max) NULL,
	[TradingFactor] [numeric](17, 2) NULL,
	[PricingFactor] [numeric](17, 2) NULL,
	[ISIN] [varchar](max) NULL,
	[BBG_Ticker] [varchar](max) NULL,
	[BBG_UniqueID] [varchar](max) NULL,
	[CUSIP] [varchar](max) NULL,
	[SEDOL] [varchar](max) NULL,
	[FirstCouponDate] [datetime] NULL,
	[Cap] [varchar](max) NULL,
	[BondFloor] [varchar](max) NULL,
	[CouponFrequency] [numeric](7, 2) NULL,
	[Coupon] [numeric](17, 2) NULL,
	[CouponType] [varchar](max) NULL,
	[Spread] [varchar](max) NULL,
	[CallableFlag] [bit] NULL,
	[FixToFloatFlag] [bit] NULL,
	[PutableFlag] [bit] NULL,
	[IssueDate] [datetime] NULL,
	[LastResetDate] [datetime] NULL,
	[Maturity] [datetime] NULL,
	[CallNotificationMaxDays] [numeric](7, 2) NULL,
	[PutNotificationMaxDays] [numeric](7, 2) NULL,
	[PenultimateCouponDate] [datetime] NULL,
	[ResetFrequency] [varchar](max) NULL,
	[HasPosition] [bit] NULL,
	[MacaulayDuration] [numeric](17, 2) NULL,
	[Volatility_30D] [numeric](17, 2) NULL,
	[Volatility_90D] [numeric](17, 2) NULL,
	[Convexity] [numeric](17, 2) NULL,
	[AverageVolume_30D] [numeric](17, 2) NULL,
	[PF_AssetClass] [varchar](max) NULL,
	[PF_Country] [varchar](max) NULL,
	[PF_CreditRating] [varchar](max) NULL,
	[PF_Currency] [varchar](max) NULL,
	[PF_Instrument] [varchar](max) NULL,
	[PF_LiquidityProfile] [varchar](max) NULL,
	[PF_Maturity] [varchar](max) NULL,
	[PF_NAICS_Code] [varchar](max) NULL,
	[PF_Region] [varchar](max) NULL,
	[PF_Sector] [varchar](max) NULL,
	[PF_SubAssetClass] [varchar](max) NULL,
	[BBG_IndustryGroup] [varchar](max) NULL,
	[BBG_IndustrySubGroup] [varchar](max) NULL,
	[BBG_IndustrySector] [varchar](max) NULL,
	[CountryOfIssuance] [varchar](max) NULL,
	[IssueCurrency] [varchar](max) NULL,
	[Issuer] [varchar](max) NULL,
	[RiskCurrency] [varchar](max) NULL,
	[PutDate] [datetime] NULL,
	[PutPrice] [numeric](17, 2) NULL,
	[AskPrice] [numeric](17, 2) NULL,
	[HighPrice] [numeric](17, 2) NULL,
	[LowPrice] [numeric](17, 2) NULL,
	[OpenPrice] [numeric](17, 2) NULL,
	[Volume] [numeric](17, 2) NULL,
	[BidPrice] [numeric](17, 2) NULL,
	[LastPrice] [numeric](17, 2) NULL,
	[CallDate] [datetime] NULL,
	[CallPrice] [numeric](17, 2) NULL,
 CONSTRAINT [PK_CorporateBond] PRIMARY KEY CLUSTERED 
(
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

