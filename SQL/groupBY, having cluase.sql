use user;

select * from userdetail;

alter table userdetail add column dept varchar(250);
update userdetail set dept="ana" where name in ("ali","murad","Taimoor");
update userdetail set dept="des" where name ="asif";
 
select count(*), dept from userdetail group by dept;
select avg(age), dept from userdetail group by dept;
  
select sum(age) as total_age, dept from userdetail group by dept having total_age>50;
select sum(age) as total_age, dept from userdetail group by dept having total_age>23 order by total_age;

select sum(age) as total_age, dept from userdetail where dept="sci" group by dept having total_age>23 order by total_age; -- where clause should be before group by and having clause 