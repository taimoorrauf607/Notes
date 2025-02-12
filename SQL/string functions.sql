use fifa19;

select concat(name,"--", nationality) from player limit 5; -- join 2 columns

select ucase(nationality) from player;  -- upper case 
select lcase(nationality) from player; -- lower case

select ltrim(" Hello") from player;
select rtrim(" Hello     -") from player;

select * from player;

select left(name,2)from player limit 2; -- left 2 characters 
select right(name,2)from player limit 2; -- right 2 char 
select substring(name, 2,5) from player limit 5;

select now(), curdate(), curtime(), unix_timestamp() from player limit 1; -- time and date

select joind, day(joind),month(joind),year(joind) from player limit 5;
select joind, date_format(joind, "%m/%d/%y") as format from player limit 5;

select round(value/wage) as wage_round from player limit 5;
select floor(value/wage) as wage_round from player limit 5;
select ceiling(value/wage) as wage_round from player limit 5;

select truncate(value/wage, 2) as wage_round from player limit 5;  -- 2 decimal places 

select -(value/wage), abs(-value/wage) as wage_round from player limit 5; -- absolute

 