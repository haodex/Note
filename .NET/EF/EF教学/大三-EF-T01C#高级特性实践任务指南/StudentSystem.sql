use master
go
if exists (select * from sysdatabases where name='StudentSystem')
	drop database StudentSystem
go
create database StudentSystem
ON
(
		name ='StudentSystem',--表示数据库的逻辑名
		filename ='D:\db_data\G3\StudentSystem.mdf'--表示数据库的物理文件名
)
go
use StudentSystem
go
create table studentinfo (
   Id int  identity(1,1) primary key,
   StudentName varchar(20) not null,
   Age int  null,
   StudentClass	nvarchar(50)
)
go
insert into studentinfo values('马冬梅',18,'1705')
insert into studentinfo values('韩茜茜',20,'1602')
insert into studentinfo values('马皇叔',21,'1705')
select  * from studentinfo
