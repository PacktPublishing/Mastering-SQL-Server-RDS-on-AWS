USE [AdventureWorksLT2019]
GO
CREATE USER [emarjm] FOR LOGIN [emarjm]
GO

--adduser to role
USE [AdventureWorksLT2019]
GO
ALTER ROLE [db_datareader] ADD MEMBER [emarjm]
GO

--map user to login
ALTER USER [emarjm] WITH LOGIN = [emarjm];

ALTER ROLE [db_datareader] DROP MEMBER [emarjm]
GO

--Object grant
GRANT SELECT ON [dbo].[Customers] TO [emarjm];