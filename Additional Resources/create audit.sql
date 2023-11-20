---create audit
USE [master]

GO

CREATE SERVER AUDIT [Audit-20230222-191541]
TO FILE 
(	FILEPATH = N'D:\rdsdbdata\SQLAudit'
	,MAXSIZE = 2 MB
	,MAX_ROLLOVER_FILES = 2147483647
	,RESERVE_DISK_SPACE = OFF
) WITH (QUEUE_DELAY = 1000, ON_FAILURE = CONTINUE)

GO


--- server audits
SELECT   * 
	FROM     msdb.dbo.rds_fn_get_audit_file
	             ('D:\rdsdbdata\SQLAudit\*.sqlaudit'
	             , default
	             , default )
WHERE statement LIKE '%select%'

--retained logs
SELECT   * 
	FROM     msdb.dbo.rds_fn_get_audit_file
	             ('D:\rdsdbdata\SQLAudit\transmitted\*.sqlaudit'
	             , default
	             , default )

USE [AdventureWorksLT2019]
GO
--create database audit
CREATE DATABASE AUDIT SPECIFICATION [RDS_DAS_DB_Adventure]
FOR SERVER AUDIT [Audit-20230222-191541]
ADD (SELECT ON DATABASE::[AdventureWorksLT2019] BY [admin])
WITH (STATE = ON)
GO


 SELECT * FROM [dbo].[Customers]

