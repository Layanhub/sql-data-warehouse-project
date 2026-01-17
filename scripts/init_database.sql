--Create Database "DataWarehouse" and schemas
/*
Script purpose:
    this script creates a new database named "DataWarehouse" after checking if it already exists
	if the database exists, it is dropped and recreated. Additionally, the script sets up three schemas within 
	the database: "bronze", "silver" and "gold".

WARNING:
    Running this script will drop the enitre DataWarehouse if it already exists.
	All data in the database will be lost so proceed with caution.
	and ensure you have proper backups before running the script.
*/
USE master; 
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
      ALTER DATABASE DataWareHouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	  DROP DATABASE DataWarehouse;

	  END;
	  GO
      

CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
