--create audit specifcation
USE [master]

GO

CREATE SERVER AUDIT SPECIFICATION [ServerAuditSpecification-20230222-194239]
FOR SERVER AUDIT [Audit-20230222-191541]
ADD (FAILED_LOGIN_GROUP),
ADD (SUCCESSFUL_LOGIN_GROUP)

GO

--QEURY Audit log
SELECT   * 
	FROM     msdb.dbo.rds_fn_get_audit_file
	             ('D:\rdsdbdata\SQLAudit\*.sqlaudit'
	             , default
	             , default )
WHERE server_principal_name = 'admin'

--create database audtit
USE [AdventureWorksLT2019]

GO

CREATE DATABASE AUDIT SPECIFICATION [RDS_DAS_DB_Adenture]
FOR SERVER AUDIT [Audit-20230222-191541]
ADD (SELECT ON DATABASE::[AdventureWorksLT2019] BY [admin])

GO

SELECT  * FROM [dbo].[Customers]