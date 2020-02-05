SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [TEST_CLASS03].[test Test_empty_table]
AS
BEGIN
   EXEC tSQLt.AssertEmptyTable @TableName = N'TempAddressNew'
							  ,@Message = N'Table is not empty'
END;
go