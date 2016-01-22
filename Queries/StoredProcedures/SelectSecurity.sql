USE SecurityMaster
GO

ALTER PROCEDURE SelectSecurity
(
	@securityTypeId INT,
	@securityId INT
)
AS
BEGIN
	DECLARE @entity_name VARCHAR(100)
	DECLARE @query VARCHAR(500)

	SELECT @entity_name = TableName
	FROM SecurityType
	WHERE SecurityTypeId = @securityTypeId
	
	SET @query = 'SELECT * FROM ' + @entity_name + ' WHERE SecurityId = ' + CONVERT(VARCHAR(MAX), @securityId)

	EXECUTE(@query)
END

--EXEC SelectSecurity 1, 25