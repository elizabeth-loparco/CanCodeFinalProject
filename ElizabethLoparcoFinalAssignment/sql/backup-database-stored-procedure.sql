CREATE PROCEDURE BackupDatabase 
    @name VARCHAR(MAX) = 'ElizabethLoparcoDB'
AS
BEGIN
DECLARE @path VARCHAR(256)
DECLARE @fileName VARCHAR(256)
DECLARE @fileDate VARCHAR(20)

SET @path = 'C:\'
SELECT @fileDate = CONVERT(VARCHAR(20),GETDATE(),112)

BEGIN
    SET @fileName = @path + @name + '_' + @fileDate + '.BAK'
    BACKUP DATABASE @name TO DISK = @fileName
END
END