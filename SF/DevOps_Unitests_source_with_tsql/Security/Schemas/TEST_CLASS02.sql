﻿CREATE SCHEMA [TEST_CLASS02] AUTHORIZATION [dbo]
GO

EXEC sys.sp_addextendedproperty N'tSQLt.TestClass', 1, 'SCHEMA', N'TEST_CLASS02'
GO