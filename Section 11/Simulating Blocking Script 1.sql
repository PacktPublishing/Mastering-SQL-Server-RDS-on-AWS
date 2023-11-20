SELECT @@SPID  

SELECT TOP (1000) [LastUpdated]
  FROM [dbo].[DateTime]

SELECT GETDATE();

UPDATE  [DateTime] SET LastUpdated = GETDATE()
WHERE LastUpdated = '2023-04-29 15:16:23.947'


BEGIN TRANSACTION
	UPDATE  [DateTime] SET LastUpdated = GETDATE()
	WHERE LastUpdated = '2023-04-29 15:16:32.173';
--COMMIT TRANSACTION