﻿CREATE DATABASE [DevOps_Unitests_source]
GO

ALTER DATABASE [DevOps_Unitests_source]
  SET
    ANSI_NULL_DEFAULT OFF,
    ANSI_NULLS ON,
    ANSI_PADDING ON,
    ANSI_WARNINGS ON,
    ARITHABORT ON,
    AUTO_CLOSE OFF,
    AUTO_CREATE_STATISTICS ON,
    AUTO_SHRINK OFF,
    AUTO_UPDATE_STATISTICS ON,
    AUTO_UPDATE_STATISTICS_ASYNC OFF,
    COMPATIBILITY_LEVEL = 130,
    CONCAT_NULL_YIELDS_NULL ON,
    CURSOR_CLOSE_ON_COMMIT OFF,
    CURSOR_DEFAULT GLOBAL,
    DATE_CORRELATION_OPTIMIZATION OFF,
    DB_CHAINING OFF,
    HONOR_BROKER_PRIORITY OFF,
    MULTI_USER,
    NESTED_TRIGGERS = ON,
    NUMERIC_ROUNDABORT OFF,
    PAGE_VERIFY CHECKSUM,
    PARAMETERIZATION SIMPLE,
    QUOTED_IDENTIFIER ON,
    READ_COMMITTED_SNAPSHOT OFF,
    RECOVERY SIMPLE,
    RECURSIVE_TRIGGERS OFF,
    TRANSFORM_NOISE_WORDS = OFF,
    TRUSTWORTHY ON
    WITH ROLLBACK IMMEDIATE
GO

ALTER DATABASE [DevOps_Unitests_source]
  COLLATE Cyrillic_General_CI_AS
GO

ALTER DATABASE [DevOps_Unitests_source]
  SET ENABLE_BROKER
GO

ALTER DATABASE [DevOps_Unitests_source]
  SET ALLOW_SNAPSHOT_ISOLATION OFF
GO

ALTER DATABASE [DevOps_Unitests_source]
  SET FILESTREAM (NON_TRANSACTED_ACCESS = OFF)
GO

ALTER DATABASE [DevOps_Unitests_source]
  SET QUERY_STORE = OFF
GO

USE [DevOps_Unitests_source]
GO

ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO

ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO

ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO

GRANT CONNECT TO [dbo]
GO

GRANT
  VIEW ANY COLUMN ENCRYPTION KEY DEFINITION,
  VIEW ANY COLUMN MASTER KEY DEFINITION TO [public]
GO