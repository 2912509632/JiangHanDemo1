use master

if db_id('project') is not null
	drop database project
go

create database project
go

use project

create table userGroup
(
	groupID INT NOT NULL PRIMARY KEY IDENTITY,
	groupName VARCHAR(30) NOT NULL
)
go

INSERT INTO userGroup VALUES('��������Ա')
INSERT INTO userGroup VALUES('ϵͳ����Ա')
INSERT INTO userGroup VALUES('��ͨ�û�')
INSERT INTO userGroup VALUES('�ο�')
go


create table users
(
	userID INT NOT NULL PRIMARY KEY IDENTITY,
	userAccount VARCHAR(30) NOT NULL,
	userPwd VARCHAR(40) NOT NULL,
	userName  VARCHAR(30) NOT NULL,
	userState INT DEFAULT 0, --1 ���� 0 ͣ��
	groupID INT NOT NULL,
	lastLoginTime DATETIME DEFAULT GETDATE(),
)
GO

INSERT INTO users VALUES('admin','admin','Tom',1,1,null)
INSERT INTO users VALUES('scott','tiger','������',1,2,null)
go

select * from users