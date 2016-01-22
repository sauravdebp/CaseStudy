USE SecurityMaster
GO

ALTER PROCEDURE UpdateSecurity
(
	@securityTypeId int,
	@xml XML
)
AS
BEGIN
	PRINT('sads');
END

DECLARE @xml XML = '
<Securities>
	<Security>
		<SecurityId>25</SecurityId>
		<Name>MICROSOFT</Name>
		<Description>blah</Description>
	</Security>
	<Security>
		<SecurityId>26</SecurityId>
		<Name>crAPPLE</Name>
		<Description>CRAPPY STOCK</Description>
	</Security>
</Securities>
'

EXEC UpdateSecurity 1, @xml