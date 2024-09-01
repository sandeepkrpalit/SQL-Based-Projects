#---------------------------------------------CREATING SCEHMA------------------------------------

#drop schema if exists `Assignment`;

create schema `Assignment` ;


#----------------------------------------------CREATING AND LOADING INTO BASE TABLES-------------------------------



#1. Creating and Loading data from Bajaj Auto.csv file into baja_auto table.

drop table if exists bajajauto;

create table bajaj_auto(Date date, `Open Price` double, `High Price` double, `Low Price` double, `Close Price`double, WAP double, 
    `No. of Shares` int(11),  `No of Trades` int(11), `Total Turnover (Rs.)` double, `Deliverable Quantity` int(11), 
    `% Deli. Qty to Traded Qty` double, `Spread High-Low` double, `Spread Close-Open` double);


LOAD DATA INFILE "Bajaj Auto.csv" INTO TABLE bajaj_auto
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(@Date, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`, `No of Trades`, `Total Turnover (Rs.)`, 
    @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set 
    Date = str_to_date(@Date,'%d-%M-%Y'),
    `Deliverable Quantity`= nullif(@`Deliverable Quantity`,''),
    `% Deli. Qty to Traded Qty`= nullif(@`% Deli. Qty to Traded Qty`,'');
    
      select * from bajaj_auto;
    
#2. Creating and Loading data from Eicher Motors.csv file into eicher_motors table

drop table if exists eicher_motors;

create table eicher_motors(Date date, `Open Price` double, `High Price` double, `Low Price` double, `Close Price`double, WAP double, 
    `No. of Shares` int(11),  `No of Trades` int(11), `Total Turnover (Rs.)` double, `Deliverable Quantity` int(11), 
    `% Deli. Qty to Traded Qty` double, `Spread High-Low` double, `Spread Close-Open` double);
    

LOAD DATA INFILE "Eicher Motors.csv" INTO TABLE eicher_motors
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(@Date, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`, `No of Trades`, `Total Turnover (Rs.)`, 
    @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set 
    Date = str_to_date(@Date,'%d-%M-%Y'),
    `Deliverable Quantity`= nullif(@`Deliverable Quantity`,''),
    `% Deli. Qty to Traded Qty`= nullif(@`% Deli. Qty to Traded Qty`,'');
    
    
select * from eicher_motors;
    

#3. Creating and Loading data from Hero Motocorp.csv file into hero_motocorp table.

drop table if exists hero_motocorp;

  create table hero_motocorp(Date date, `Open Price` double, `High Price` double, `Low Price` double, `Close Price`double, WAP double, 
    `No. of Shares` int(11),  `No of Trades` int(11), `Total Turnover (Rs.)` double, `Deliverable Quantity` int(11), 
    `% Deli. Qty to Traded Qty` double, `Spread High-Low` double, `Spread Close-Open` double);
    
LOAD DATA INFILE "Hero Motocorp.csv" INTO TABLE hero_motocorp
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(@Date, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`, `No of Trades`, `Total Turnover (Rs.)`, 
    @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set 
    Date = str_to_date(@Date,'%d-%M-%Y'),
    `Deliverable Quantity`= nullif(@`Deliverable Quantity`,''),
    `% Deli. Qty to Traded Qty`= nullif(@`% Deli. Qty to Traded Qty`,''); 
    
select * from hero_motocorp;
    
    
#4. Creating and Loading data from Infosys.csv file into infosys table

drop table if exists infosys;

 create table infosys(Date date, `Open Price` double, `High Price` double, `Low Price` double, `Close Price`double, WAP double, 
    `No. of Shares` int(11),  `No of Trades` int(11), `Total Turnover (Rs.)` double, `Deliverable Quantity` int(11), 
    `% Deli. Qty to Traded Qty` double, `Spread High-Low` double, `Spread Close-Open` double);
    

LOAD DATA INFILE "Infosys.csv" INTO TABLE infosys
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(@Date, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`, `No of Trades`, `Total Turnover (Rs.)`, 
    @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set 
    Date = str_to_date(@Date,'%d-%M-%Y'),
    `Deliverable Quantity`= nullif(@`Deliverable Quantity`,''),
    `% Deli. Qty to Traded Qty`= nullif(@`% Deli. Qty to Traded Qty`,''); 
    
select * from infosys;
    
    
#5. Creating and Loading data from tsc.csv into tcs table.

drop table if exists tcs;
 
create table tcs(Date date, `Open Price` double, `High Price` double, `Low Price` double, `Close Price`double, WAP double, 
    `No. of Shares` int(11),  `No of Trades` int(11), `Total Turnover (Rs.)` double, `Deliverable Quantity` int(11), 
    `% Deli. Qty to Traded Qty` double, `Spread High-Low` double, `Spread Close-Open` double);
    

LOAD DATA INFILE "tcs.csv" INTO TABLE tcs
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(@Date, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`, `No of Trades`, `Total Turnover (Rs.)`, 
    @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set 
    Date = str_to_date(@Date,'%d-%M-%Y'),
    `Deliverable Quantity`= nullif(@`Deliverable Quantity`,''),
    `% Deli. Qty to Traded Qty`= nullif(@`% Deli. Qty to Traded Qty`,''); 
    
select * from tcs;
    

#6. Creating and Loading data from TVS Motors.csv into tvs_motors table.

drop table if exists tvs_motors;

 create table tvs_motors(Date date, `Open Price` double, `High Price` double, `Low Price` double, `Close Price`double, WAP double, 
    `No. of Shares` int(11),  `No of Trades` int(11), `Total Turnover (Rs.)` double, `Deliverable Quantity` int(11), 
    `% Deli. Qty to Traded Qty` double, `Spread High-Low` double, `Spread Close-Open` double);
    

LOAD DATA INFILE "TVS Motors.csv" INTO TABLE tvs_motors
FIELDS TERMINATED BY ',' LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(@Date, `Open Price`, `High Price`, `Low Price`, `Close Price`, WAP, `No. of Shares`, `No of Trades`, `Total Turnover (Rs.)`, 
    @`Deliverable Quantity`, @`% Deli. Qty to Traded Qty`, `Spread High-Low`, `Spread Close-Open`)
set 
    Date = str_to_date(@Date,'%d-%M-%Y'),
    `Deliverable Quantity`= nullif(@`Deliverable Quantity`,''),
    `% Deli. Qty to Traded Qty`= nullif(@`% Deli. Qty to Traded Qty`,''); 


  select * from tvs_motors;


#------------------------------------------------RESULT 1-----------------------------------------------------


# 1. Creating bajaj1 table to generate MA for Bajaj Auto stock.

drop table if exists bajaj1;

create table bajaj1
as
select date as Date, `close price` as `Close Price`,
   
   case when row_number() over (order by date asc) >=20 then
  avg(`close price`) over (order by date asc rows between 19 preceding and current row ) 
  end as `20 Day MA`,
  
  case when row_number() over (order by date asc) >=50 then
  avg(`close price`) over (order by date asc rows between 49 preceding and current row) 
  end as `50 Day MA`
  
  from bajaj_auto;
  
select * from bajaj1;
  

# 2. Creating eicher1 table to generate MA for Eicher Motors stock.

drop table if exists eicher1;

create table eicher1
as
select date as Date, `close price` as `Close Price`,
   
   case when row_number() over (order by date asc) >=20 then
  avg(`close price`) over (order by date asc rows between 19 preceding and current row) 
  end as `20 Day MA`,
  
  case when row_number() over (order by date asc) >=50 then
  avg(`close price`) over (order by date asc rows between 49 preceding and current row) 
  end as `50 Day MA`
  
  from eicher_motors;
  
select * from eicher1;
  

# 3. Creating hero1 table to generate MA for Hero Motocorp stock.

drop table if exists hero1;

create table hero1
as
select date as Date, `close price` as `Close Price`,
   
   case when row_number() over (order by date asc) >=20 then
  avg(`close price`) over (order by date asc rows between 19 preceding and current row) 
  end as `20 Day MA`,
  
  case when row_number() over (order by date asc) >=50 then
  avg(`close price`) over (order by date asc rows between 49 preceding and current row ) 
  end as `50 Day MA`
  
  from hero_motocorp;
  
select * from hero1;
  
  
# 4. Creating infosys1 table to generate MA for Infosys stock

drop table if exists infosys1;
  
create table infosys1
as
select date as Date, `close price` as `Close Price`,
   
   case when row_number() over (order by date asc) >=20 then
  avg(`close price`) over (order by date asc rows between 19 preceding and current row ) 
  end as `20 Day MA`,
  
  case when row_number() over (order by date asc) >=50 then
  avg(`close price`) over (order by date asc rows between 49 preceding and current row ) 
  end as `50 Day MA`
  
  from infosys;
  
select * from infosys1;
  
# 5. Creating tcs1 table to generate MA for TCS stock.

drop table if exists tcs1;
  
create table tcs1
as
select date as Date, `close price` as `Close Price`,
   
   case when row_number() over (order by date asc) >=20 then
  avg(`close price`) over (order by date asc rows between 19 preceding and current row) 
  end as `20 Day MA`,
  
  case when row_number() over (order by date asc) >=50 then
  avg(`close price`) over (order by date asc rows between 49 preceding and current row ) 
  end as `50 Day MA`
  
  from tcs;
  
select * from tcs1;
    
  
# 6. Creating tvs1 table to generate MA for TVS Motors stock.

drop table if exists tvs1;
  
create table tvs1
as
select date as Date, `close price` as `Close Price`,
   
   case when row_number() over (order by date asc) >=20 then
  avg(`close price`) over (order by date asc rows between 19 preceding and current row) 
  end as `20 Day MA`,
  
  case when row_number() over (order by date asc) >=50 then
  avg(`close price`) over (order by date asc rows between 49 preceding and current row) 
  end as `50 Day MA`
  
  from tvs_motors;
  
  select * from tvs1;
  
    
#-----------------------------------------------------RESULT 2--------------------------------------------------
  
#Creating Master table consist of date and close date of all 6 stocks
  
  drop table if exists master;
  
  create table master 
  as

select  bj1.date as Date,
           bj1.`Close Price` as Bajaj,
           tc1.`Close Price`as TCS,
           tv1.`Close Price` as TVS,
           inf1.`Close Price` as Infosys,
           er1.`Close Price` as Eicher,
           hr1.`Close Price` as Hero
           
from bajaj_auto as bj1 
		inner join tcs as tc1 on bj1.date=tc1.date
        inner join tvs_motors as tv1 on bj1.date=tv1.date
        inner join infosys as inf1 on bj1.date=inf1.date
        inner join eicher_motors as er1 on bj1.date=er1.date
        inner join hero_motocorp as hr1 on bj1.date=hr1.date
        order by bj1.date asc;
        
        
select * from master;
        

#-----------------------------------------------------RESULT 3---------------------------------------------


# 1. Creating bajaj2 table to calculate the signal for Bajaj Stock.

drop table if exists bajaj2;

create table bajaj2
as
select  date as Date, 
          `Close Price` as `Close price`,

case when row_number() over (order by date asc) <50 
then 'NA'
 
when row_number() over (order by date asc) >=50 
then 
 (case 
 when (`20 Day MA` < `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) > lag(`50 Day MA`,1) over(order by date asc))
 then 'SELL' 
 
 when (`20 Day MA` > `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) < lag(`50 Day MA`,1) over(order by date asc))
 then 'BUY'
 
 else 'HOLD'
 end)
 
 end as 'Signal'
 
 from bajaj1;
 
 select `signal`, count(1) from bajaj2 group by `signal`;

 
# 2. Creating eicher2 table to calculate the signal for Eicher Motors Stock.
 
 drop table if exists eicher2;
 
create table eicher2
as
select  date as Date, 
          `Close Price` as `Close price`,

case when row_number() over (order by date asc) <50 
then 'NA'
 
when row_number() over (order by date asc) >=50 
then 
 (case 
 when (`20 Day MA` < `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) > lag(`50 Day MA`,1) over(order by date asc))
 then 'SELL' 
 
 when (`20 Day MA` > `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) < lag(`50 Day MA`,1) over(order by date asc))
 then 'BUY'
 
 else 'HOLD'
 end)
 
 end as 'Signal'
 
 from eicher1;
 
 select `signal`, count(1) from eicher2 group by `signal`;
 
 
# 3. Creating hero2 table to calculate the signal for Hero Motocorp Stock.
 
 drop table if exists hero2;
 
 create table hero2
as
select  date as Date, 
          `Close Price` as `Close price`,

case when row_number() over (order by date asc) <50 
then 'NA'
 
when row_number() over (order by date asc) >=50 
then 
 (case 
 when (`20 Day MA` < `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) > lag(`50 Day MA`,1) over(order by date asc))
 then 'SELL' 
 
 when (`20 Day MA` > `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) < lag(`50 Day MA`,1) over(order by date asc))
 then 'BUY'
 
 else 'HOLD'
 end)
 
 end as 'Signal'
 
 from hero1;
 
  select `signal`, count(1) from hero2 group by `signal`;
 
 
# 4. Creating infosys2 table to calculate the signal for Infosys Stock.
 
 drop table if exists infosys2;
 
 create table infosys2
as
select  date as Date, 
          `Close Price` as `Close price`,

case when row_number() over (order by date asc) <50 
then 'NA'
 
when row_number() over (order by date asc) >=50 
then 
 (case 
 when (`20 Day MA` < `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) > lag(`50 Day MA`,1) over(order by date asc))
 then 'SELL' 
 
 when (`20 Day MA` > `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) < lag(`50 Day MA`,1) over(order by date asc))
 then 'BUY'
 
 else 'HOLD'
 end)
 
 end as 'Signal'
 
 from infosys1;
 
 select `signal`, count(1) from infosys2 group by `signal`;
 
 
# 5. Creating tcs2 table to calculate the signal for TCS Stock.
 
 drop table if exists tcs2;
 
 create table tcs2
as
select  date as Date, 
          `Close Price` as `Close price`,

case when row_number() over (order by date asc) <50 
then 'NA'
 
when row_number() over (order by date asc) >=50 
then 
 (case 
 when (`20 Day MA` < `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) > lag(`50 Day MA`,1) over(order by date asc))
 then 'SELL' 
 
 when (`20 Day MA` > `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) < lag(`50 Day MA`,1) over(order by date asc))
 then 'BUY'
 
 else 'HOLD'
 end)
 
 end as 'Signal'
 
 from tcs1;
 
 select `signal`, count(1) from tcs2 group by `signal`;
 
# 6. Creating tvs2 table to calculate the signal for TVS Motors Stock.
 
 drop table if exists tvs2;
 
 create table tvs2
as
select  date as Date, 
          `Close Price` as `Close price`,

case when row_number() over (order by date asc) <50 
then 'NA'
 
when row_number() over (order by date asc) >=50 
then 
 (case 
 when (`20 Day MA` < `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) > lag(`50 Day MA`,1) over(order by date asc))
 then 'SELL' 
 
 when (`20 Day MA` > `50 Day MA`) & (lag(`20 Day MA`,1) over(order by date asc) < lag(`50 Day MA`,1) over(order by date asc))
 then 'BUY'
 
 else 'HOLD'
 end)
 
 end as 'Signal'
 
 from tvs1;
 
 select `signal`, count(1) from tvs2 group by `signal`;
 
 
 
#--------------------------------------------RESULT 4--------------------------------------------------------------------
 
#Creating a Function bajaj_stock_signal to determine the Signal for Bajaj Auto stock.
 
drop function if exists bajaj_stock_signal;

DELIMITER $$

create function bajaj_stock_signal (day date) 
  returns varchar(4)
  deterministic
  
begin

  declare 
  
  indicator varchar(4);
  
select `signal` into indicator
		from bajaj2
        where date=day;
  
return (indicator);
end
$$

DELIMITER ;


select 
 bajaj_stock_signal(date)
from
 bajaj2 
 where date ='2015-12-17';
 

#----------------------------------------------xxxxxxxxxxx---------------------------------------------------
 
 
 
 