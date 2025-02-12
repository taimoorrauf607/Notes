create database user;
show databases;
use user;
-- create table userdetail( name text , job text, age int);

--  insert into userdetail (name, job, age) values ("Taimoor","data-ana",25);
--  insert into userdetail (name, job, age) values ("zain","data-sci",24);
--  insert into userdetail (name, job, age) values ("asif","data-des",23);
--  insert into userdetail (name, job, age) values ("ali","data-ana",24);
--  
update userdetail set age =22 where name="murad";
  delete from userdetail where age=30; 
  
  describe userdetail;
alter table userdetail add column sex text;
alter table userdetail change column sex gender varchar(20);
alter table userdetail drop column gender;

show create table userdetail;
insert into userdetail (sex) value ("Male");
  
  select * from train;
  

  
  
