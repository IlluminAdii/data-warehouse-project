/*
Script Purpose: 
  The script sets up three schemas within the database 'Warehouse' : 'BRONZE' , 'SILVER', 'GOLD'
*/

USE master;
GO
create database datawarehouse;

use datawarehouse;
GO
CREATE SCHEMA BRONZE;
GO
CREATE SCHEMA SILVER;
GO 
CREATE SCHEMA GOLD;
GO
