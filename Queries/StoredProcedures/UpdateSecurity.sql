USE SecurityMaster
GO

ALTER PROCEDURE UpdateSecurity
(
	@securityTypeId INT,
	@xml XML
)
AS
BEGIN
	--DECLARE @securityId INT
	--retrieve securityId from XML
	DECLARE @deleteQuery VARCHAR(500)

	SET @deleteQuery = ' '

	SELECT
		@deleteQuery = @deleteQuery + 'EXEC DeleteSecurity ' + CONVERT(VARCHAR(MAX), @securityTypeId) + ', ' + doc.col.value('SecurityId[1]', 'VARCHAR(MAX)') + ';'
	FROM @xml.nodes('Securities/Security') doc(col)
	
	EXECUTE(@deleteQuery)
	EXEC CreateSecurity @securityTypeId, @xml
END

--DECLARE @xml XML = '
--<Securities>
--	<Security>
--		<SecurityId>25</SecurityId>
--		<Name>MICROSOFT</Name>
--		<Description>Microsoft Stock</Description>
--	</Security>
--	<Security>
--		<SecurityId>26</SecurityId>
--		<Name>crAPPLE</Name>
--		<Description>Apple Equity</Description>
--	</Security>
--</Securities>
--'
--EXEC UpdateSecurity 1, @xml