USE [SecurityMaster]
GO

CREATE  PROCEDURE CreateEquity
(
@name VARCHAR(MAX),
@description VARCHAR(MAX),
@hasPosition BIT,
@isActiveSecurity BIT,
@lotSize VARCHAR(MAX),
@BBG_UniqueName VARCHAR(MAX),
@CUSIP VARCHAR(MAX),
@ISIN VARCHAR(MAX),
@SEDOL VARCHAR(MAX),
@BBG_Ticker VARCHAR(MAX),
@BBG_UniqueId VARCHAR(MAX),
@BBG_GlobalId VARCHAR(MAX),
@tickerAndExchange VARCHAR(MAX),
@isADR BIT,
@ADR_underlyingTicker VARCHAR(MAX),
@ADR_underlyingCurrency VARCHAR(MAX),
@sharesPerADR VARCHAR(MAX),
@IPODate DATETIME,
@pricingCurrency VARCHAR(MAX),
@settleDays VARCHAR(MAX),
@totalSharesOutstanding VARCHAR(MAX),
@votingRightsPerShare VARCHAR(MAX),
@averageVolume_20D VARCHAR(MAX),
@beta VARCHAR(MAX),
@shortInterest VARCHAR(MAX),
@return_YTD VARCHAR(MAX),
@volatility_90D VARCHAR(MAX),
@PF_AssetClass VARCHAR(MAX),
@PF_Country VARCHAR(MAX),
@PF_CreditRating VARCHAR(MAX),
@PF_Currency VARCHAR(MAX),
@PF_Instrument VARCHAR(MAX),
@PF_LiquidityProfile VARCHAR(MAX),
@PF_Maturity VARCHAR(MAX),
@PF_NAICS_Code VARCHAR(MAX),
@PF_Region VARCHAR(MAX),
@PF_Sector VARCHAR(MAX),
@PF_SubAssetClass VARCHAR(MAX),
@countryOfIssuance VARCHAR(MAX),
@exchange VARCHAR(MAX),
@issuer VARCHAR(MAX),
@issueCurrency VARCHAR(MAX),
@tradingCurrency VARCHAR(MAX),
@BBG_industrySubGroup VARCHAR(MAX),
@BBG_industryGroup VARCHAR(MAX),
@BBG_sector VARCHAR(MAX),
@countryOfIncorporation VARCHAR(MAX),
@riskCurrency VARCHAR(MAX),
@openPrice VARCHAR(MAX),
@closePrice VARCHAR(MAX),
@volume VARCHAR(MAX),
@lastPrice VARCHAR(MAX),
@askPrice VARCHAR(MAX),
@bidPrice VARCHAR(MAX),
@PE_Ration VARCHAR(MAX),
@dividendDeclaredDate DATETIME,
@dividendExDate DATETIME,
@dividendRecordDate DATETIME,
@dividendPayDate DATETIME,
@dividendAmount VARCHAR(MAX),
@frequency VARCHAR(MAX),
@dividendType VARCHAR(MAX)
)
AS
BEGIN
	INSERT INTO dbo.Equity
	VALUES
	(
		@name ,
		@description ,
		@hasPosition ,
		@isActiveSecurity ,
		@lotSize ,
		@BBG_UniqueName ,
		@CUSIP ,
		@ISIN ,
		@SEDOL ,
		@BBG_Ticker ,
		@BBG_UniqueId ,
		@BBG_GlobalId ,
		@tickerAndExchange ,
		@isADR ,
		@ADR_underlyingTicker ,
		@ADR_underlyingCurrency,
		@sharesPerADR ,
		@IPODate ,
		@pricingCurrency ,
		@settleDays ,
		@totalSharesOutstanding ,
		@votingRightsPerShare ,
		@averageVolume_20D ,
		@beta ,
		@shortInterest ,
		@return_YTD ,
		@volatility_90D ,
		@PF_AssetClass ,
		@PF_Country ,
		@PF_CreditRating ,
		@PF_Currency ,
		@PF_Instrument ,
		@PF_LiquidityProfile ,
		@PF_Maturity ,
		@PF_NAICS_Code ,
		@PF_Region ,
		@PF_Sector ,
		@PF_SubAssetClass ,
		@countryOfIssuance ,
		@exchange ,
		@issuer ,
		@issueCurrency ,
		@tradingCurrency ,
		@BBG_industrySubGroup ,
		@BBG_industryGroup ,
		@BBG_sector ,
		@countryOfIncorporation ,
		@riskCurrency ,
		@openPrice ,
		@closePrice ,
		@volume ,
		@lastPrice ,
		@askPrice ,
		@bidPrice ,
		@PE_Ration ,
		@dividendDeclaredDate ,
		@dividendExDate ,
		@dividendRecordDate ,
		@dividendPayDate ,
		@dividendAmount ,
		@frequency ,
		@dividendType 
	)

	INSERT INTO dbo.security
	VALUES
	(
		IDENT_CURRENT('dbo.Equity'),
		@name,
		'E'
	)
END