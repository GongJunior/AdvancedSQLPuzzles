-- Create a new database called 'Puzzles'
-- Connect to the 'master' database to run this snippet
USE master
GO
IF NOT EXISTS (
   SELECT name
   FROM sys.databases
   WHERE name = N'Puzzles'
)
CREATE DATABASE [Puzzles]
GO

USE Puzzles

GO
SET NOCOUNT ON;
GO