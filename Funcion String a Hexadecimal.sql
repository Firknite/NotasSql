GO
/****** Object:  UserDefinedFunction [dbo].[StringToHex]    Script Date: 25/01/2019 14:47:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[StringToHex] (@cadena VARCHAR(12))  
RETURNS VARCHAR(24)  
WITH EXECUTE AS CALLER  
AS  
BEGIN
	DECLARE @largoCadena INT = LEN(@cadena), @intFlag INT = 1, @aux BINARY(8), @salida VARCHAR(24) = '';
	WHILE (@intFlag <= @largoCadena)
		BEGIN
			SET @aux = CONVERT(varbinary, SUBSTRING(@cadena, @intFlag, 1))
			SET @salida = @salida + CONVERT(VARCHAR(2), @aux, 2);
		SET @intFlag = @intFlag + 1
	END
	RETURN @salida;
END;  
