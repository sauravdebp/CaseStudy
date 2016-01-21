USE SecurityMaster
GO

CREATE PROCEDURE CreateSecurity
(
	@xml XML
)
AS
BEGIN
	DECLARE @entity_name VARCHAR(200) = 'Equity',@query VARCHAR(MAX)
	--DECLARE @security_type_name VARCHAR(50)
	--SELECT @security_type_name = 'ivp_equity_common_stock'


	SET @query = ' DECLARE @security_data XML; '
	SET @query = @query + 'SELECT @security_data = ''' + CONVERT(VARCHAR(MAX), @xml) + ''';' + CHAR(13)	--Assigning the xml data to security data var
	--SELECT @query = @query + ' SELECT * INTO #tempData FROM ' 
	SELECT @query = @query + ' INSERT INTO EQUITY (Name, EquityDescription)'
	--SELECT @query = @query + '(SELECT ' + CHAR(13);
	
	--The below part will generate a table which will have all the @entity_name attributes using the sys.columns table
	SELECT @query = @query + 'SELECT CASE WHEN doc.col.value('''+ name + '[1]'', ''nvarchar(MAX)'') = '''' THEN NULL ELSE doc.col.value('''+ name + '[1]'', ''nvarchar(MAX)'') END [' + name + '], ' + CHAR(13) 
	FROM sys.columns WHERE object_id = OBJECT_ID(@entity_name,'TABLE')
	
	--The below part is specifying in the generated query to use the XML
	SELECT @query = LEFT(@query, LEN(@query) - 3) +  ' FROM @security_data.nodes(''/Securities/Equity'') doc(col); ' + CHAR(13) 
	
	--SELECT @query = 'INSERT INTO EQUITY ' + @query;
	--PRINT @query

	EXECUTE (@query)
END

--DECLARE @xml XML = '
--<Securities>--	<Equity>--		<Name>abc</Name>--		<EquityDescription>description</EquityDescription>--	</Equity>--	<Equity>--		<Name>egf</Name>--		<EquityDescription>description1</EquityDescription>--	</Equity>--</Securities>
--'

	