USE [master]
GO
CREATE LOGIN [emarjm] WITH PASSWORD=N'emar', DEFAULT_DATABASE=[AdventureWorksLT2019], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO


USE [AdventureWorksLT2019]
--Create a database user named theirname and link it to server-level login theirname
CREATE USER [emarjm] FOR LOGIN [emarjm];
GO

--Mapping login to user
ALTER USER [emarjm] WITH LOGIN = [emarjm];

--reset password
USE [master]
GO
ALTER LOGIN [emarjm] WITH PASSWORD=N'newpassword'
GO
USE [master]
GO

/****** Object:  Login [emarjm]    Script Date: 2/22/2023 11:08:34 AM ******/
DROP LOGIN [emarjm]
GO



