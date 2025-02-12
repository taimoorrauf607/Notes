create database fifa19;
use fifa19;
create table player(
id int(11),
name varchar(255),
age int(3),
nationality varchar(255),
overallrating int(11),
potentialrating int(11),
club varchar(255),
value int(11),
wage int(11),
preferredfoot enum('Left','Right'),
jerseynumber int(11),
joind date,
height varchar(10),
weight int(3),
penalties int(3)
);
desc player;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/fifa2.csv'
INTO TABLE player
FIELDS TERMINATED BY ',' 
OPTIONALLY ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES;

-- Data analysis
select * from player;
select count(*) from player;


select count(distinct nationality) as no_of_countries from player;

 select avg(wage) as avg_wage, sum(wage) as total_wage, stddev(wage) as std_wage from player;
 
select count(*) as freq,nationality from player group by nationality;
select count(*) as freq,nationality from player group by nationality order by freq desc limit 3;
  
select max(wage) from player;
select name, wage from player where wage =(select max(wage) from player);
select name, wage from player where wage =(select min(wage) from player);

select name ,overallrating from player where overallrating =(select max(overallrating) from player);
select name ,overallrating,preferredfoot, jerseynumber from player where overallrating =(select max(overallrating) from player);

select club, avg(overallrating) as Club_rating from player group by club order by Club_rating desc limit 3;
select club, sum(overallrating) as total_rating from player group by club order by total_rating desc limit 3;

select count(*) as freq, preferredfoot from player group by 2 order by 1 desc; -- we can use index for column
select sum(wage) as total_wage, jerseynumber from player group by 2 order by 1 desc limit 3; --  lucky jersey

select count(*) as freq, nationality from player where club like "M%" group by 2 order by 1 desc;


select count(*) from player where joind between "2018-05-20" and "2019-04-10";
select count(*) as freq, joind from player group by 2;
 
select count(*) as freq, year(joind) from player group by 2;
select count(*) as freq, month(joind) from player group by 2;
-- day(),dayname(), monthname() almost similar to python



