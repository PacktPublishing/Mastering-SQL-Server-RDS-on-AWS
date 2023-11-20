SELECT TOP (1000) [LastUpdated]
  FROM [dbo].[DateTime]

SELECT @@SPID  

UPDATE  [DateTime] SET LastUpdated = GETDATE()
WHERE LastUpdated = '2023-04-29 15:16:32.173'