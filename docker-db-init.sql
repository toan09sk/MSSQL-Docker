restore database testDB
from 
	disk = N'/home/backup/testDB.bak' 
with 
	file = 1,
	replace,
	move N'testDB' to N'/home/data/testDB.mdf',
	move N'testDB_log' to N'/home/log/testDB_log.ldf',
	nounload,
	stats = 5
go


-- USE master
-- GO
-- CREATE DATABASE mrjb_TestDatabase
-- GO
-- USE [mrjb_TestDatabase]
-- GO 
-- CREATE TABLE test (col1 int)
-- GO