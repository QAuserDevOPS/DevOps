USE [master]
GO
DECLARE @db_name NVARCHAR(255);
SET @db_name = N'DevOps_Source';
IF EXISTS (SELECT
      1
    FROM sys.databases d
    WHERE d.name = @db_name)
BEGIN
  EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = @db_name;
  EXEC (N'ALTER DATABASE ' + @db_name + N' SET SINGLE_USER WITH ROLLBACK IMMEDIATE');
  EXEC (N'DROP DATABASE ' + @db_name);
END;
EXEC (N'CREATE DATABASE ' + @db_name);
GO

USE [master]
GO
DECLARE @db_name NVARCHAR(255);
SET @db_name = N'DevOps_Target';
IF EXISTS (SELECT
      1
    FROM sys.databases d
    WHERE d.name = @db_name)
BEGIN
  EXEC msdb.dbo.sp_delete_database_backuphistory @database_name = @db_name;
  EXEC (N'ALTER DATABASE ' + @db_name + N' SET SINGLE_USER WITH ROLLBACK IMMEDIATE');
  EXEC (N'DROP DATABASE ' + @db_name);
END;
EXEC (N'CREATE DATABASE ' + @db_name);
GO
