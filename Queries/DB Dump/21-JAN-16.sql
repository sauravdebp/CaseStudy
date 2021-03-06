USE [master]
GO
/****** Object:  Database [SecurityMaster]    Script Date: 21-Jan-16 11:48:41 PM ******/
CREATE DATABASE [SecurityMaster]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SecurityMaster', FILENAME = N'C:\Users\saura_000\Desktop\CaseStudy\SecurityMaster.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SecurityMaster_log', FILENAME = N'C:\Users\saura_000\Desktop\CaseStudy\SecurityMaster_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SecurityMaster] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SecurityMaster].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SecurityMaster] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SecurityMaster] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SecurityMaster] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SecurityMaster] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SecurityMaster] SET ARITHABORT OFF 
GO
ALTER DATABASE [SecurityMaster] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SecurityMaster] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SecurityMaster] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SecurityMaster] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SecurityMaster] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SecurityMaster] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SecurityMaster] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SecurityMaster] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SecurityMaster] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SecurityMaster] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SecurityMaster] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SecurityMaster] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SecurityMaster] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SecurityMaster] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SecurityMaster] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SecurityMaster] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SecurityMaster] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SecurityMaster] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SecurityMaster] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SecurityMaster] SET  MULTI_USER 
GO
ALTER DATABASE [SecurityMaster] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SecurityMaster] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SecurityMaster] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SecurityMaster] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [SecurityMaster]
GO
/****** Object:  StoredProcedure [dbo].[CreateBond]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[CreateBond]
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

	
GO
/****** Object:  StoredProcedure [dbo].[CreateEquity]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[CreateEquity]
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
GO
/****** Object:  StoredProcedure [dbo].[CreateSecurity]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CreateSecurity]
(
	@securityTypeId int,
	@xml XML
)
AS
BEGIN
	DECLARE @entity_name VARCHAR(200), @query VARCHAR(MAX)
	--DECLARE @security_type_name VARCHAR(50)
	--SELECT @security_type_name = 'ivp_equity_common_stock'

	SELECT @entity_name = TableName
	FROM SecurityType
	WHERE SecurityTypeId = @securityTypeId

	SET @query = ' DECLARE @security_data XML; '
	SET @query = @query + 'SELECT @security_data = ''' + CONVERT(VARCHAR(MAX), @xml) + ''';' + CHAR(13)	--Assigning the xml data to security data var
	SELECT @query = @query + 'INSERT INTO ' + @entity_name + ' (Name, Description)'	--THIS STATEMENT IS FOR TESTING ONLY
	--SELECT @query = @query + 'INSERT INTO ' + @entity_name	--This is he final statement to be used. NOT THE ABOVE ONE
	SELECT @query = @query + 'SELECT'
	
	--The below part will generate a table which will have all the @entity_name attributes using the sys.columns table
	SELECT @query = @query + ' CASE WHEN doc.col.value('''+ name + '[1]'', ''nvarchar(MAX)'') = '''' THEN NULL ELSE doc.col.value('''+ name + '[1]'', ''nvarchar(MAX)'') END [' + name + '], ' + CHAR(13) 
	FROM sys.columns 
	WHERE object_id = OBJECT_ID(@entity_name,'TABLE') AND name IN ('Name', 'Description')
	
	--The below part is specifying in the generated query to use the XML
	SELECT @query = LEFT(@query, LEN(@query) - 3) +  ' FROM @security_data.nodes(''/Securities/Security'') doc(col); ' + CHAR(13) 
	
	--PRINT @query

	EXECUTE (@query)
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteBond]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[DeleteBond]
(
@securityId INT
)
AS
BEGIN
	DELETE FROM dbo.CorporateBond
	WHERE SecurityId = @securityId

	DELETE FROM dbo.Security
	WHERE SecurityId = @securityId
END
GO
/****** Object:  StoredProcedure [dbo].[DeleteEquity]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[DeleteEquity]
(
@securityId INT
)
AS
BEGIN
	DELETE FROM dbo.Equity 
	WHERE SecurityId=@securityId

	DELETE FROM dbo.Security
	WHERE SecurityId = @securityId
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateBond]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[UpdateBond]
(
@SecurityId INT,
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
  UPDATE dbo.CorporateBond
  SET
	BondDescription=ISNULL(@BondDescription, BondDescription),
	AssetType=ISNULL(@AskPrice ,AssetType),
	InvestmentType=ISNULL(@InvestmentType,InvestmentType),
	TradingFactor=ISNULL(@TradingFactor,TradingFactor),
	PricingFactor=ISNULL(@PricingFactor,PricingFactor),
	ISIN=ISNULL(@ISIN,ISIN),
	BBG_Ticker=ISNULL(@BBG_Ticker,BBG_Ticker),
	BBG_UniqueID=ISNULL(@BBG_UniqueID,BBG_UniqueID),
	CUSIP=ISNULL(@CUSIP,CUSIP),
	SEDOL=ISNULL(@SEDOL,SEDOL),
	FirstCouponDate=ISNULL(@FirstCouponDate,FirstCouponDate),
	Cap=ISNULL(@Cap,Cap),
	BondFloor=ISNULL(@BondFloor,BondFloor),
	CouponFrequency=ISNULL(@CouponFrequency,CouponFrequency),
	Coupon=ISNULL(@Coupon,Coupon),
	CouponType=ISNULL(@CouponType,CouponType),
	Spread=ISNULL(@Spread,Spread),
	CallableFlag=ISNULL(@CallableFlag,CallableFlag),
	FixToFloatFlag=ISNULL(@FixToFloatFlag,FixToFloatFlag),
	PutableFlag=ISNULL(@PutableFlag,PutableFlag),
	IssueDate=ISNULL(@IssueDate,IssueDate),
	LastResetDate=ISNULL(@LastResetDate,LastResetDate),
	Maturity=ISNULL(@Maturity,Maturity),
	CallNotificationMaxDays=ISNULL(@CallNotificationMaxDays,CallNotificationMaxDays),
	PutNotificationMaxDays=ISNULL(@PutNotificationMaxDays,PutNotificationMaxDays),
	PenultimateCouponDate=ISNULL(@PenultimateCouponDate,PenultimateCouponDate),
	ResetFrequency=ISNULL(@ResetFrequency,ResetFrequency),
	HasPosition=ISNULL(@HasPosition,HasPosition),
	MacaulayDuration=ISNULL(@MacaulayDuration,MacaulayDuration),
	Volatility_30D=ISNULL(@Volatility_30D,Volatility_30D),
	Volatility_90D=ISNULL(@Volatility_90D,Volatility_90D),
	Convexity=ISNULL(@Convexity,Convexity),
	AverageVolume_30D=ISNULL(@AverageVolume_30D,AverageVolume_30D),
	PF_AssetClass=ISNULL(@PF_AssetClass,PF_AssetClass),
	PF_Country=ISNULL(@PF_Country,PF_Country),
	PF_CreditRating=ISNULL(@PF_CreditRating,PF_CreditRating),
	PF_Currency=ISNULL(@PF_Currency,PF_Currency),
	PF_Instrument=ISNULL(@PF_Instrument,PF_Instrument),
	PF_LiquidityProfile=ISNULL(@PF_LiquidityProfile,PF_LiquidityProfile),
	PF_Maturity=ISNULL(@PF_Maturity,PF_Maturity),
	PF_NAICS_Code=ISNULL(@PF_NAICS_Code,PF_NAICS_Code),
	PF_Region=ISNULL(@PF_Region,PF_Region),
	PF_Sector=ISNULL(@PF_Sector,PF_Sector),
	PF_SubAssetClass=ISNULL(@PF_SubAssetClass,PF_SubAssetClass),
	BBG_IndustryGroup=ISNULL(@BBG_IndustryGroup,BBG_IndustryGroup),
	BBG_IndustrySubGroup=ISNULL(@BBG_IndustrySubGroup,BBG_IndustrySubGroup),
	BBG_IndustrySector=ISNULL(@BBG_IndustrySector,BBG_IndustrySector),
	CountryOfIssuance=ISNULL(@CountryOfIssuance,CountryOfIssuance),
	IssueCurrency=ISNULL(@IssueCurrency,IssueCurrency),
	Issuer=ISNULL(@Issuer,Issuer),
	RiskCurrency=ISNULL(@RiskCurrency,RiskCurrency),
	PutDate=ISNULL(@PutDate,PutDate),
	PutPrice=ISNULL(@PutPrice,PutPrice),
	AskPrice=ISNULL(@AskPrice,AskPrice),
	HighPrice=ISNULL(@HighPrice,HighPrice),
	LowPrice=ISNULL(@LowPrice,LowPrice),
	OpenPrice=ISNULL(@OpenPrice,OpenPrice),
	Volume=ISNULL(@Volume,Volume),
	BidPrice=ISNULL(@BidPrice,BidPrice),
	LastPrice=ISNULL(@LastPrice,LastPrice),
	CallDate=ISNULL(@CallDate,CallDate),
	CallPrice=ISNULL(@CallPrice,CallPrice)
	WHERE SecurityId=@SecurityId
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateEquity]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[UpdateEquity]
(
@securityId int,
@equityDescription VARCHAR(MAX),
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
@PE_Ratio VARCHAR(MAX),
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
	UPDATE dbo.Equity
	SET
	EquityDescription = ISNULL(@equityDescription, EquityDescription),
	HasPosition = ISNULL(@hasPosition, HasPosition),
	IsActiveSecurity = ISNULL(@isActiveSecurity, IsActiveSecurity),
	LotSize = ISNULL(@lotSize, LotSize),
	BBG_UniqueName = ISNULL(@BBG_UniqueName, @BBG_UniqueName),
	CUSIP = ISNULL(@CUSIP, CUSIP),
	ISIN = ISNULL(@ISIN, ISIN),
	SEDOL = ISNULL(@SEDOL, SEDOL),
	BBG_Ticker = ISNULL(@BBG_Ticker, @BBG_Ticker),
	BBG_UniqueID = ISNULL(@BBG_UniqueId, BBG_UniqueID),
	BBG_GlobalID = ISNULL(@BBG_GlobalId, BBG_GlobalID),
	TickerAndExchange = ISNULL(@tickerAndExchange, TickerAndExchange),
	IsAdrFlag = ISNULL(@isADR, IsAdrFlag),
	AdrUnderlyingTicker = ISNULL(@ADR_underlyingTicker, AdrUnderlyingTicker),
	AdrUnderlyingCurrency = ISNULL(@ADR_underlyingCurrency, AdrUnderlyingCurrency),
	SharesPerADR = ISNULL(@sharesPerADR, SharesPerADR),
	IPODate = ISNULL(@IPODate, IPODate),
	PricingCurrency = ISNULL(@pricingCurrency, PricingCurrency),
	SettleDays = ISNULL(@settleDays, SettleDays),
	TotalSharesOutstanding = ISNULL(@totalSharesOutstanding, TotalSharesOutstanding),
	VotingRightsPerShare = ISNULL(@votingRightsPerShare, VotingRightsPerShare),
	AverageVolume_20D = ISNULL(@averageVolume_20D, AverageVolume_20D),
	Beta = ISNULL(@beta, Beta),
	ShortInterest = ISNULL(@shortInterest, ShortInterest),
	Return_YTD = ISNULL(@return_YTD, Return_YTD),
	Volatility_90D = ISNULL(@volatility_90D, Volatility_90D),
	PF_AssetClass = ISNULL(@PF_AssetClass, PF_AssetClass),
	PF_Country = ISNULL(@PF_Country, PF_Country),
	PF_CreditRating = ISNULL(@PF_CreditRating, PF_CreditRating),
	PF_Currency = ISNULL(@PF_Currency, PF_Currency),
	PF_Instrument = ISNULL(@PF_Instrument, PF_Instrument),
	PF_LiquidityProfile = ISNULL(@PF_LiquidityProfile, PF_LiquidityProfile),
	PF_Maturity = ISNULL(@PF_Maturity, PF_Maturity),
	PF_NAICS_Code = ISNULL(@PF_NAICS_Code, PF_NAICS_Code),
	PF_Region = ISNULL(@PF_Region, PF_Region),
	PF_Sector = ISNULL(@PF_Sector, PF_Sector),
	PF_SubAssetClass = ISNULL(@PF_SubAssetClass, PF_SubAssetClass),
	CountryOfIssuance = ISNULL(@countryOfIssuance, CountryOfIssuance),
	Exchange = ISNULL(@exchange, Exchange),
	Issuer = ISNULL(@issuer, Issuer),
	IssueCurrency = ISNULL(@issueCurrency, IssueCurrency),
	TradingCurrency = ISNULL(@tradingCurrency, TradingCurrency),
	BBG_IndustrySubGroup = ISNULL(@BBG_industrySubGroup, BBG_IndustrySubGroup),
	BBG_IndustryGroup = ISNULL(@BBG_industryGroup, BBG_IndustryGroup),
	BBG_Sector = ISNULL(@BBG_sector, BBG_Sector),
	CountryOfIncorporation = ISNULL(@countryOfIncorporation, CountryOfIncorporation),
	RiskCurrency = ISNULL(@riskCurrency, RiskCurrency),
	OpenPrice = ISNULL(@openPrice, OpenPrice),
	ClosePrice = ISNULL(@closePrice, ClosePrice),
	Volume = ISNULL(@volume, Volume),
	LastPrice = ISNULL(@lastPrice, LastPrice),
	AskPrice = ISNULL(@askPrice, AskPrice),
	BidPrice = ISNULL(@bidPrice, BidPrice),
	PE_Ratio = ISNULL(@PE_Ratio, PE_Ratio),
	DividendDeclaredDate = ISNULL(@dividendDeclaredDate, DividendDeclaredDate),
	DividendExDate = ISNULL(@dividendExDate, DividendExDate),
	DividendRecordDate = ISNULL(@dividendRecordDate, DividendRecordDate),
	DividendPayDate = ISNULL(@dividendPayDate, DividendPayDate),
	DividendAmount = ISNULL(@dividendAmount, DividendAmount),
	Frequency = ISNULL(@frequency, Frequency),
	DividendType = ISNULL(@dividendType, DividendType)
	WHERE SecurityId=@securityId

		
	
END
GO
/****** Object:  Table [dbo].[CorporateBond]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CorporateBond](
	[SecurityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[AssetType] [varchar](max) NULL,
	[InvestmentType] [varchar](max) NULL,
	[TradingFactor] [varchar](max) NULL,
	[PricingFactor] [varchar](max) NULL,
	[ISIN] [varchar](max) NULL,
	[BBG_Ticker] [varchar](max) NULL,
	[BBG_UniqueID] [varchar](max) NULL,
	[CUSIP] [varchar](max) NULL,
	[SEDOL] [varchar](max) NULL,
	[FirstCouponDate] [datetime] NULL,
	[Cap] [varchar](max) NULL,
	[BondFloor] [varchar](max) NULL,
	[CouponFrequency] [varchar](max) NULL,
	[Coupon] [varchar](max) NULL,
	[CouponType] [varchar](max) NULL,
	[Spread] [varchar](max) NULL,
	[CallableFlag] [bit] NULL,
	[FixToFloatFlag] [bit] NULL,
	[PutableFlag] [bit] NULL,
	[IssueDate] [datetime] NULL,
	[LastResetDate] [datetime] NULL,
	[Maturity] [datetime] NULL,
	[CallNotificationMaxDays] [varchar](max) NULL,
	[PutNotificationMaxDays] [varchar](max) NULL,
	[PenultimateCouponDate] [datetime] NULL,
	[ResetFrequency] [varchar](max) NULL,
	[HasPosition] [bit] NULL,
	[MacaulayDuration] [varchar](max) NULL,
	[Volatility_30D] [varchar](max) NULL,
	[Volatility_90D] [varchar](max) NULL,
	[Convexity] [varchar](max) NULL,
	[AverageVolume_30D] [varchar](max) NULL,
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
	[PutPrice] [varchar](max) NULL,
	[AskPrice] [varchar](max) NULL,
	[HighPrice] [varchar](max) NULL,
	[LowPrice] [varchar](max) NULL,
	[OpenPrice] [varchar](max) NULL,
	[Volume] [varchar](max) NULL,
	[BidPrice] [varchar](max) NULL,
	[LastPrice] [varchar](max) NULL,
	[CallDate] [datetime] NULL,
	[CallPrice] [varchar](max) NULL,
 CONSTRAINT [PK_CorporateBond] PRIMARY KEY CLUSTERED 
(
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Equity]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Equity](
	[SecurityId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[HasPosition] [bit] NULL,
	[IsActiveSecurity] [bit] NULL,
	[LotSize] [varchar](max) NULL,
	[BBG_UniqueName] [varchar](max) NULL,
	[CUSIP] [varchar](max) NULL,
	[ISIN] [varchar](max) NULL,
	[SEDOL] [varchar](max) NULL,
	[BBG_Ticker] [varchar](max) NULL,
	[BBG_UniqueID] [varchar](max) NULL,
	[BBG_GlobalID] [varchar](max) NULL,
	[TickerAndExchange] [varchar](max) NULL,
	[IsAdrFlag] [bit] NULL,
	[AdrUnderlyingTicker] [varchar](max) NULL,
	[AdrUnderlyingCurrency] [varchar](max) NULL,
	[SharesPerADR] [varchar](max) NULL,
	[IPODate] [datetime] NULL,
	[PricingCurrency] [varchar](max) NULL,
	[SettleDays] [varchar](max) NULL,
	[TotalSharesOutstanding] [varchar](max) NULL,
	[VotingRightsPerShare] [varchar](max) NULL,
	[AverageVolume_20D] [varchar](max) NULL,
	[Beta] [varchar](max) NULL,
	[ShortInterest] [varchar](max) NULL,
	[Return_YTD] [varchar](max) NULL,
	[Volatility_90D] [varchar](max) NULL,
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
	[CountryOfIssuance] [varchar](max) NULL,
	[Exchange] [varchar](max) NULL,
	[Issuer] [varchar](max) NULL,
	[IssueCurrency] [varchar](max) NULL,
	[TradingCurrency] [varchar](max) NULL,
	[BBG_IndustrySubGroup] [varchar](max) NULL,
	[BBG_IndustryGroup] [varchar](max) NULL,
	[BBG_Sector] [varchar](max) NULL,
	[CountryOfIncorporation] [varchar](max) NULL,
	[RiskCurrency] [varchar](max) NULL,
	[OpenPrice] [varchar](max) NULL,
	[ClosePrice] [varchar](max) NULL,
	[Volume] [varchar](max) NULL,
	[LastPrice] [varchar](max) NULL,
	[AskPrice] [varchar](max) NULL,
	[BidPrice] [varchar](max) NULL,
	[PE_Ratio] [varchar](max) NULL,
	[DividendDeclaredDate] [datetime] NULL,
	[DividendExDate] [datetime] NULL,
	[DividendRecordDate] [datetime] NULL,
	[DividendPayDate] [datetime] NULL,
	[DividendAmount] [varchar](max) NULL,
	[Frequency] [varchar](max) NULL,
	[DividendType] [varchar](max) NULL,
 CONSTRAINT [PK_Equity] PRIMARY KEY CLUSTERED 
(
	[SecurityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Security]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Security](
	[SecurityId] [int] NOT NULL,
	[SecurityName] [varchar](max) NOT NULL,
	[SecurityType] [char](1) NOT NULL,
 CONSTRAINT [PK_Security] PRIMARY KEY CLUSTERED 
(
	[SecurityId] ASC,
	[SecurityType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SecurityAttributes]    Script Date: 21-Jan-16 11:48:41 PM ******/
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
/****** Object:  Table [dbo].[SecurityType]    Script Date: 21-Jan-16 11:48:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SecurityType](
	[SecurityTypeId] [int] NOT NULL,
	[SecurityTypeName] [varchar](50) NULL,
	[TableName] [varchar](50) NULL,
	[LastModifiedBy] [varchar](50) NULL,
	[LastModifiedOn] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_SecurityType] PRIMARY KEY CLUSTERED 
(
	[SecurityTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CorporateBond] ON 

GO
INSERT [dbo].[CorporateBond] ([SecurityId], [Name], [Description], [AssetType], [InvestmentType], [TradingFactor], [PricingFactor], [ISIN], [BBG_Ticker], [BBG_UniqueID], [CUSIP], [SEDOL], [FirstCouponDate], [Cap], [BondFloor], [CouponFrequency], [Coupon], [CouponType], [Spread], [CallableFlag], [FixToFloatFlag], [PutableFlag], [IssueDate], [LastResetDate], [Maturity], [CallNotificationMaxDays], [PutNotificationMaxDays], [PenultimateCouponDate], [ResetFrequency], [HasPosition], [MacaulayDuration], [Volatility_30D], [Volatility_90D], [Convexity], [AverageVolume_30D], [PF_AssetClass], [PF_Country], [PF_CreditRating], [PF_Currency], [PF_Instrument], [PF_LiquidityProfile], [PF_Maturity], [PF_NAICS_Code], [PF_Region], [PF_Sector], [PF_SubAssetClass], [BBG_IndustryGroup], [BBG_IndustrySubGroup], [BBG_IndustrySector], [CountryOfIssuance], [IssueCurrency], [Issuer], [RiskCurrency], [PutDate], [PutPrice], [AskPrice], [HighPrice], [LowPrice], [OpenPrice], [Volume], [BidPrice], [LastPrice], [CallDate], [CallPrice]) VALUES (3, N'blah', N'MICROSOFT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[CorporateBond] ([SecurityId], [Name], [Description], [AssetType], [InvestmentType], [TradingFactor], [PricingFactor], [ISIN], [BBG_Ticker], [BBG_UniqueID], [CUSIP], [SEDOL], [FirstCouponDate], [Cap], [BondFloor], [CouponFrequency], [Coupon], [CouponType], [Spread], [CallableFlag], [FixToFloatFlag], [PutableFlag], [IssueDate], [LastResetDate], [Maturity], [CallNotificationMaxDays], [PutNotificationMaxDays], [PenultimateCouponDate], [ResetFrequency], [HasPosition], [MacaulayDuration], [Volatility_30D], [Volatility_90D], [Convexity], [AverageVolume_30D], [PF_AssetClass], [PF_Country], [PF_CreditRating], [PF_Currency], [PF_Instrument], [PF_LiquidityProfile], [PF_Maturity], [PF_NAICS_Code], [PF_Region], [PF_Sector], [PF_SubAssetClass], [BBG_IndustryGroup], [BBG_IndustrySubGroup], [BBG_IndustrySector], [CountryOfIssuance], [IssueCurrency], [Issuer], [RiskCurrency], [PutDate], [PutPrice], [AskPrice], [HighPrice], [LowPrice], [OpenPrice], [Volume], [BidPrice], [LastPrice], [CallDate], [CallPrice]) VALUES (4, N'CRAPPY STOCK', N'crAPPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[CorporateBond] OFF
GO
SET IDENTITY_INSERT [dbo].[Equity] ON 

GO
INSERT [dbo].[Equity] ([SecurityId], [Name], [Description], [HasPosition], [IsActiveSecurity], [LotSize], [BBG_UniqueName], [CUSIP], [ISIN], [SEDOL], [BBG_Ticker], [BBG_UniqueID], [BBG_GlobalID], [TickerAndExchange], [IsAdrFlag], [AdrUnderlyingTicker], [AdrUnderlyingCurrency], [SharesPerADR], [IPODate], [PricingCurrency], [SettleDays], [TotalSharesOutstanding], [VotingRightsPerShare], [AverageVolume_20D], [Beta], [ShortInterest], [Return_YTD], [Volatility_90D], [PF_AssetClass], [PF_Country], [PF_CreditRating], [PF_Currency], [PF_Instrument], [PF_LiquidityProfile], [PF_Maturity], [PF_NAICS_Code], [PF_Region], [PF_Sector], [PF_SubAssetClass], [CountryOfIssuance], [Exchange], [Issuer], [IssueCurrency], [TradingCurrency], [BBG_IndustrySubGroup], [BBG_IndustryGroup], [BBG_Sector], [CountryOfIncorporation], [RiskCurrency], [OpenPrice], [ClosePrice], [Volume], [LastPrice], [AskPrice], [BidPrice], [PE_Ratio], [DividendDeclaredDate], [DividendExDate], [DividendRecordDate], [DividendPayDate], [DividendAmount], [Frequency], [DividendType]) VALUES (15, N'blah', N'MICROSOFT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[Equity] ([SecurityId], [Name], [Description], [HasPosition], [IsActiveSecurity], [LotSize], [BBG_UniqueName], [CUSIP], [ISIN], [SEDOL], [BBG_Ticker], [BBG_UniqueID], [BBG_GlobalID], [TickerAndExchange], [IsAdrFlag], [AdrUnderlyingTicker], [AdrUnderlyingCurrency], [SharesPerADR], [IPODate], [PricingCurrency], [SettleDays], [TotalSharesOutstanding], [VotingRightsPerShare], [AverageVolume_20D], [Beta], [ShortInterest], [Return_YTD], [Volatility_90D], [PF_AssetClass], [PF_Country], [PF_CreditRating], [PF_Currency], [PF_Instrument], [PF_LiquidityProfile], [PF_Maturity], [PF_NAICS_Code], [PF_Region], [PF_Sector], [PF_SubAssetClass], [CountryOfIssuance], [Exchange], [Issuer], [IssueCurrency], [TradingCurrency], [BBG_IndustrySubGroup], [BBG_IndustryGroup], [BBG_Sector], [CountryOfIncorporation], [RiskCurrency], [OpenPrice], [ClosePrice], [Volume], [LastPrice], [AskPrice], [BidPrice], [PE_Ratio], [DividendDeclaredDate], [DividendExDate], [DividendRecordDate], [DividendPayDate], [DividendAmount], [Frequency], [DividendType]) VALUES (16, N'CRAPPY STOCK', N'crAPPLE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Equity] OFF
GO
INSERT [dbo].[SecurityType] ([SecurityTypeId], [SecurityTypeName], [TableName], [LastModifiedBy], [LastModifiedOn], [CreatedBy], [CreatedOn], [IsActive]) VALUES (1, N'Equity Common Stock', N'Equity', NULL, NULL, NULL, NULL, 1)
GO
INSERT [dbo].[SecurityType] ([SecurityTypeId], [SecurityTypeName], [TableName], [LastModifiedBy], [LastModifiedOn], [CreatedBy], [CreatedOn], [IsActive]) VALUES (2, N'Corporate Bond', N'CorporateBond', NULL, NULL, NULL, NULL, 1)
GO
USE [master]
GO
ALTER DATABASE [SecurityMaster] SET  READ_WRITE 
GO
