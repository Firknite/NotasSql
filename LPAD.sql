CREATE FUNCTION dbo.LPAD (@rellenar CHAR(1), @largo INT, @valorComplementar VARCHAR(50))
RETURNS VARCHAR(MAX)  
WITH EXECUTE AS CALLER  
AS  
BEGIN  
     RETURN RIGHT(REPLICATE(@rellenar,@largo) + @valorComplementar,@largo);
END;
GO 