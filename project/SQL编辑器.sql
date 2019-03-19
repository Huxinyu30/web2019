-- 一、结构操作
--1、创建库
create database mydb1811

--切换当前的数据库
use mydb1811

--2、创建表
--创建会员表
-- primary key:主键；表示唯一性。

create table userinfo(
    username varchar(20) primary key,
    userpass varchar(16) not null,
    usersex char(2) not null,
    userage int,
    userphone char(11)
)


-- 二、数据操作

--1、增：给表里增加数据

insert into userinfo(username,userpass,usersex,userage,userphone)
              values('张三疯','123666','男',12,'18991274261');

insert into userinfo(username,userpass,usersex,userage,userphone)
              values('张四疯','123667','女',20,'18991274262');
insert into userinfo(username,userpass,usersex,userage,userphone)
              values('张宝宝','123668','男',18,'18991274263');
insert into userinfo(username,userpass,usersex,userage,userphone)
              values('王宝宝','123669','女',21,'18991274264');

--2、查询：
select * from userinfo

select username,userpass from userinfo

select * from userinfo where usersex='男'


select * from userinfo 
        where usersex='男'
          and userage>15
          
--3、删除

delete from userinfo  
delete from userinfo  where usersex='男' and userage<15

--4、改
update userinfo set usersex='女' where username='张宝宝'


