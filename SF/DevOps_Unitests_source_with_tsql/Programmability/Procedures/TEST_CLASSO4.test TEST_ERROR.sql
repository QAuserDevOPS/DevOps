SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO

--  Comments here are associated with the test.
--  For test case examples, see: http://tsqlt.org/user-guide/tsqlt-tutorial/
CREATE PROCEDURE [TEST_CLASS04].[test TEST_ERROR]
AS
BEGIN
 SELECT * FROM unnexist_table
END;
GO