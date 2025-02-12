use user;
select * from train;
select count(*) from train; -- num of rows
 
 select distinct sex from train;  -- unique values
 select count(distinct Age) from train;
 
 select sum(fare) from train;
 select avg(fare) from train;
 select stddev(fare) from train;
 select min(fare) from train;
 select max(fare) from train;
 
 select sum(Fare) from train where Embarked in ("S","C");  -- both include
 select avg(Fare) from train where Embarked <> "C"; -- not include "C" 
 select avg(Fare) from train where Embarked not in ("C");  -- same as like above 
 
 select count(Survived) from train where Age>=30 and Age<=40;
  select count(Survived) from train where Age between 30 and 40;
  
  select * from train limit 5;  -- show only 5 rows 
  select * from train limit 5 offset 2; -- skip 2 rows 
  
  select * from train order by Age  limit 5;  --  
  select survived, age from train order by Age desc limit 5; -- highest age records
  
  -- filterng patterns   like opertaor
  
  select (Age) from train where name like "a%";  -- start with a
  select (Age) from train where name like "%s";  -- end with S
select (name) from train where name like "%um%";  -- string having um
select (name) from train where name like "__m%";  -- 3rd charcter is m

  
  
  
  
  
  
  
 