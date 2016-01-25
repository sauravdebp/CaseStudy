USE SecurityMaster
GO

ALTER PROCEDURE CreateSecurity
(
	@securityTypeId INT,
	@xml XML
)
AS
BEGIN
	DECLARE @entity_name VARCHAR(200)
	DECLARE @query VARCHAR(MAX)
	--DECLARE @security_type_name VARCHAR(50)
	--SELECT @security_type_name = 'ivp_equity_common_stock'
	
	SELECT @entity_name = TableName
	FROM SecurityType
	WHERE SecurityTypeId = @securityTypeId

	SET @query = ' DECLARE @security_data XML; '
	SET @query = @query + 'SELECT @security_data = ''' + CONVERT(VARCHAR(MAX), @xml) + ''';' + CHAR(13)	--Assigning the xml data to security data var
	
	--SET @query = @query + 'INSERT INTO ' + @entity_name + ' (SecurityId, Name, Description)'	--THIS STATEMENT IS FOR TESTING ONLY
	SET @query = @query + 'INSERT INTO ' + @entity_name	--This is the final statement to be used. NOT THE ABOVE ONE
	SET @query = @query + ' SELECT'
	
	--The below part will generate a table which will have all the @entity_name attributes using the sys.columns table
	SELECT @query = @query + ' CASE WHEN doc.col.value('''+ name + '[1]'', ''nvarchar(MAX)'') = '''' THEN NULL ELSE doc.col.value('''+ name + '[1]'', ''nvarchar(MAX)'') END [' + name + '], ' + CHAR(13) 
	FROM sys.columns 
	WHERE object_id = OBJECT_ID(@entity_name,'TABLE') 
	--AND name IN ('SecurityId', 'Name', 'Description')	--THIS STATEMENT IS FOR TESTING ONLY
	ORDER BY sys.columns.column_id
	
	--The below part is specifying in the generated query to use the XML
	SET @query = LEFT(@query, LEN(@query) - 3) +  ' FROM @security_data.nodes(''/ArrayOfSecurity/Security'') doc(col); ' + CHAR(13) 
	
	EXECUTE (@query)
END

--DECLARE @xmlData XML = '
--<ArrayOfSecurity>
--	<Security>
--		<SecurityId>0</SecurityId>
--		<Name>sadsd</Name>
--		<Description>sdsd</Description>
--		<HasPosition>false</HasPosition>
--		<IsActiveSecurity>false</IsActiveSecurity>
--		<LotSize>0</LotSize>
--		<IsAdrFlag>false</IsAdrFlag>
--		<SharesPerADR>0</SharesPerADR>
--		<IPODate>0001-01-01T00:00:00</IPODate>
--		<SettleDays>0</SettleDays>
--		<TotalSharesOutstanding>0</TotalSharesOutstanding>
--		<VotingRightsPerShare>0</VotingRightsPerShare>
--		<AverageVolume_20D>0</AverageVolume_20D>
--		<Beta>0</Beta>
--		<ShortInterest>0</ShortInterest>
--		<Return_YTD>0</Return_YTD>
--		<Volatility_90D>0</Volatility_90D>
--		<OpenPrice>0</OpenPrice>
--		<ClosePrice>0</ClosePrice>
--		<Volume>0</Volume>
--		<LastPrice>0</LastPrice>
--		<AskPrice>0</AskPrice>
--		<BidPrice>0</BidPrice>
--		<PE_Ratio>0</PE_Ratio>
--		<DividendDeclaredDate>0001-01-01T00:00:00</DividendDeclaredDate>
--		<DividendExDate>0001-01-01T00:00:00</DividendExDate>
--		<DividendRecordDate>0001-01-01T00:00:00</DividendRecordDate>
--		<DividendPayDate>0001-01-01T00:00:00</DividendPayDate>
--		<DividendAmount>0</DividendAmount>
--	</Security>
--</ArrayOfSecurity>
--'

--EXEC CreateSecurity 1, @xmlData