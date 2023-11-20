USE [AdventureWorksLT2019]
GO

INSERT INTO [dbo].[time_tracker]
           ([tracker])
     VALUES
           (GETDATE())
GO

SELECT * FROM time_tracker;

