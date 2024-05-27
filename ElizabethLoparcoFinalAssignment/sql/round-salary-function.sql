CREATE FUNCTION dbo.roundSalary (@salary DECIMAL(10, 2))
RETURNS DECIMAL(10, 0)
AS
BEGIN
    DECLARE @roundedSalary DECIMAL(10, 0)
    
    SET @roundedSalary = ROUND(@salary, 0)
    
    RETURN @roundedSalary
END
