USE [SecurityMaster]
GO

CREATE  PROCEDURE CreateBond
(

@Name	VARCHAR(MAX),
@BondDescription	VARCHAR(MAX),
@AssetType	VARCHAR(MAX),
@InvestmentType	VARCHAR(MAX),
@TradingFactor	VARCHAR(MAX),
@PricingFactor	VARCHAR(MAX),
@ISIN	VARCHAR(MAX),
@BBG_Ticker	VARCHAR(MAX),
@BBG_UniqueID	VARCHAR(MAX),
@CUSIP	VARCHAR(MAX),
@SEDOL	VARCHAR(MAX),
@FirstCouponDate	DATETIME,
@Cap	VARCHAR(MAX),
@BondFloor	VARCHAR(MAX),
@CouponFrequency	VARCHAR(MAX),
@Coupon	VARCHAR(MAX),
@CouponType	VARCHAR(MAX),
@Spread	VARCHAR(MAX),
@CallableFlag	BIT,
@FixToFloatFlag	BIT,
@PutableFlag	BIT,
@IssueDate	DATETIME,
@LastResetDate	DATETIME,
@Maturity	DATETIME,
@CallNotificationMaxDays	VARCHAR(MAX),
@PutNotificationMaxDays	VARCHAR(MAX),
@PenultimateCouponDate	DATETIME,
@ResetFrequency	VARCHAR(MAX),
@HasPosition	BIT,
@MacaulayDuration	VARCHAR(MAX),
@Volatility_30D	VARCHAR(MAX),
@Volatility_90D	VARCHAR(MAX),
@Convexity	VARCHAR(MAX),
@AverageVolume_30D	VARCHAR(MAX),
@PF_AssetClass	VARCHAR(MAX),
@PF_Country	VARCHAR(MAX),
@PF_CreditRating	VARCHAR(MAX),
@PF_Currency	VARCHAR(MAX),
@PF_Instrument	VARCHAR(MAX),
@PF_LiquidityProfile	VARCHAR(MAX),
@PF_Maturity	VARCHAR(MAX),
@PF_NAICS_Code	VARCHAR(MAX),
@PF_Region	VARCHAR(MAX),
@PF_Sector	VARCHAR(MAX),
@PF_SubAssetClass	VARCHAR(MAX),
@BBG_IndustryGroup	VARCHAR(MAX),
@BBG_IndustrySubGroup	VARCHAR(MAX),
@BBG_IndustrySector	VARCHAR(MAX),
@CountryOfIssuance	VARCHAR(MAX),
@IssueCurrency	VARCHAR(MAX),
@Issuer	VARCHAR(MAX),
@RiskCurrency	VARCHAR(MAX),
@PutDate	DATETIME,
@PutPrice	VARCHAR(MAX),
@AskPrice	VARCHAR(MAX),
@HighPrice	VARCHAR(MAX),
@LowPrice	VARCHAR(MAX),
@OpenPrice	VARCHAR(MAX),
@Volume	VARCHAR(MAX),
@BidPrice	VARCHAR(MAX),
@LastPrice	VARCHAR(MAX),
@CallDate	DATETIME,
@CallPrice	VARCHAR(MAX)
)
AS
BEGIN
	INSERT INTO dbo.CorporateBond 
	VALUES
	(
	@Name	,
	@BondDescription	,
	@AssetType	,
	@InvestmentType	,
	@TradingFactor	,
	@PricingFactor	,
	@ISIN	,
	@BBG_Ticker	,
	@BBG_UniqueID	,
	@CUSIP	,
	@SEDOL	,
	@FirstCouponDate	,
	@Cap	,
	@BondFloor	,
	@CouponFrequency	,
	@Coupon	,
	@CouponType	,
	@Spread	,
	@CallableFlag	,
	@FixToFloatFlag	,
	@PutableFlag	,
	@IssueDate	,
	@LastResetDate	,
	@Maturity	,
	@CallNotificationMaxDays	,
	@PutNotificationMaxDays	,
	@PenultimateCouponDate	,
	@ResetFrequency	,
	@HasPosition	,
	@MacaulayDuration	,
	@Volatility_30D	,
	@Volatility_90D	,
	@Convexity	,
	@AverageVolume_30D	,
	@PF_AssetClass	,
	@PF_Country	,
	@PF_CreditRating	,
	@PF_Currency	,
	@PF_Instrument	,
	@PF_LiquidityProfile	,
	@PF_Maturity	,
	@PF_NAICS_Code	,
	@PF_Region	,
	@PF_Sector	,
	@PF_SubAssetClass	,
	@BBG_IndustryGroup	,
	@BBG_IndustrySubGroup	,
	@BBG_IndustrySector	,
	@CountryOfIssuance	,
	@IssueCurrency	,
	@Issuer	,
	@RiskCurrency	,
	@PutDate	,
	@PutPrice	,
	@AskPrice	,
	@HighPrice	,
	@LowPrice	,
	@OpenPrice	,
	@Volume	,
	@BidPrice	,
	@LastPrice	,
	@CallDate	,
	@CallPrice	
	)

	INSERT INTO dbo.security
	VALUES
	(
		IDENT_CURRENT('dbo.CorporateBond'),
		@Name,
		'C'
	)
END

	