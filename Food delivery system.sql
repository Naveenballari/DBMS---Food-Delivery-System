-- Active: 1709654844717@@127.0.0.1@3306@project
create DATABASE project;

USE project;

drop table customer;
drop table delivery_employee;
drop table menu;
drop table restaurant;
drop table offers;
drop table orders;
drop table deals;
drop table served_by;

create table customer (
c_id INT primary key,
c_hno INT not null,
c_street VARCHAR(20)   not null,
c_city VARCHAR(20)   not null,
c_pin_code INT   not null,
c_fname VARCHAR(20)   not null,
c_mname VARCHAR(20)   not null,
c_lname VARCHAR(20)   not null,
c_mob_no VARCHAR(20)   unique);


create table delivery_employee(
d_id INT   primary key,
d_mob_no VARCHAR(20)   unique,
d_start INT   not null,
d_end INT   not null,
d_salary float   not null,
d_ratings INT   not null, 
d_fname VARCHAR(20)   not null,
d_mname VARCHAR(20)   not null,
d_lname VARCHAR(20)   not null);


create table menu(
dish_id INT   primary key,
dish_name VARCHAR(20)   not null,
dish_cuisine VARCHAR(30)   not null,
dish_price float   not null,
dish_start INT   not null,
dish_end INT   not null);


create table restaurant(
r_id INT  primary key,
r_specialty VARCHAR(20)   not null,
r_mob_no VARCHAR(20)   not null,
r_start INT   not null,
r_end INT   not null,
r_name VARCHAR(20)   not null,
r_ratings INT   not null,
r_street VARCHAR(20)   not null,
r_city VARCHAR(20)   not null,
r_pin_code INT   not null);


create table orders(
order_id INT   primary key,
order_quantity INT   not null,
order_time INT   not null,
order_date date   not null,
f_status VARCHAR(20) ,
f_date date  not null,
c_id INT references customer(c_id),
r_id INT references restaurant(r_id),
d_id INT references delivery_employee(d_id),
dish_id INT references menu(dish_id));


create table deals(
deal_code INT   primary key,
discount float  not null,
valid_day VARCHAR(20)  not null,
valid_pay_method VARCHAR(20) );


create table served_by(
r_id INT references restaurant(r_id),
d_id INT references menu(dish_id));

create table offers(
r_id INT references restaurant (r_id),
d_code INT references deals (deal_code));

-- Create tables
desc customer;
desc delivery_employee;
desc menu;
desc restaurant;
desc orders;
desc deals;
desc served_by;
desc offers;


-- Insert into Customer
insert into customer values(1120,21,'laxminagar','banahatti',587311,'daya','v','hatti',9189357645);
insert into customer values(1121,31,'vidyanagar','hubli',580031,'arun','k','naik',6753876875);
insert into customer values(1122,41,'unkal road','hubli',580031,'vanu','m','j',7890478939);
insert into customer values(1123,51,'keb road','tama khadi',587312,'relal','h','h',7893567865);
insert into customer values(1124,61,'temple road','mudhol',587335,'abhi','m','kudachi',6738978983);
insert into customer values(1125,71,'abmp road','bijapur',587385,'kiran','p','n',6748976578);
insert into customer values(1126,81,'keshav road','bagalkot',587392,'anjali','m','f',6784569890);
insert into customer values(1127,91,'ambedkar circle','rabakavi',587314,'bhargavi','r','mali',5467893456);
insert into customer values(128,101,'gandhi nagar','rampur',587315,'vinuta','k','katti',4678907890);
insert into customer values(1129,121,'laxmi nagar','banahatti',587311,'deepti','m','d',7654321234);
insert into customer values(1130,131,'vidya nagar','hubli',580031,'asha','k','gowda',5896321478);


-- Insert into delivery_employee
insert into delivery_employee values(421,1234567892,10,9,10000,1,'manju','r','khot');
insert into delivery_employee values(422,2345678901,11,10,20000,2,'shasidar','m','s');
insert into delivery_employee values(423,3456789012,12,11,30000,3,'km','m','r');
insert into delivery_employee values(424,1234567893,13,12,40000,4,'prakash','b','hegde');
insert into delivery_employee values(425,0876543211,14,13,50000,5,'aruna','m','naik');
insert into delivery_employee values(426,7418529637,15,14,50000,6,'vimala','k','patil');
insert into delivery_employee values(427,7453951755,16,15,10000,7,'nameta','s','patil');
insert into delivery_employee values(428,7865585541,17,16,20000,8,'shaila','s','k');
insert into delivery_employee values(429,8526528555,18,17,40000,9,'pradeep','m','k');
insert into delivery_employee values(430,7851954528,19,18,90000,1,'vishal','s','k');


-- Insert into menu
insert into menu values(111,'idli','south indian',40,1,2);
insert into menu values(112,'jeera rice ','north indian',110,2,3);
insert into menu values(113,'ni thali','north indian',340,3,4);
insert into menu values(114,'si thali','south indian',240,4,5);
insert into menu values(115,'fried rice','chinese',130,5,6);
insert into menu values(116,'puri','south indian',60,2,3);
insert into menu values(117,'idli','south indian',40,1,3);
insert into menu values(118,'egg biryani','north indian',70,8,9);
insert into menu values(119,'chicken thali','north indian',220,9,10);
insert into menu values(120,'puri','south indian',60,1,2);
insert into menu values(121,'idli','south indian',40,1,3);


-- Insert into restaurant
insert into restaurant values(1001,'idli',7495196382,8,10,'vaibhav',2,'laxmi','jamakandi',587312);
insert into restaurant values(1002,'jeera rice',1478529631,9,9,'panjurli',3,'shirur park','hubli',5800321);
insert into restaurant values(1003,'puri',7896415252,10,8,'kamat',4,'kmr road','belgaum',5800312);
insert into restaurant values(1004,'pav bhaji',9876543211,10,10,'vijay',3,'vidya nagar','banahatti',5800311);
insert into restaurant values(1005,'gobi',7896541239,9,6,'president',5,'hdmc road','melanti',587311);
insert into restaurant values(1006,'puri',9874587896,8,5,'naveen',4,'unkal road','hubli',5800311);
insert into restaurant values(1007,'idli',7495196789,11,10,'ice cube',3,'hosur road','hubli',5800311);
insert into restaurant values(1008,'jeera rice',749519324,8,11,'densions',4,'hosur road','hubli',5800311);
insert into restaurant values(1009,'fried rice',7495196542,9,8,'ocean pearl',5,'sultan road','dharawad',5800312);
insert into restaurant values(1010,'idli',7495196373,8,9,'revanth',3,'sultan road','dharawad',5800312);


-- Insert into orders
insert into orders values(731,1,11,'2021-01-01','good','2021-05-10',1120,1001,421,111);
insert into orders values(732,2,12,'2021-02-02','bad','2021-08-11',1121,1002,422,112);
insert into orders values(733,1,1,'2021-05-03','avg','2021-12-12',1122,1003,423,113);
insert into orders values(734,1,2,'2021-07-10','bad','2021-10-13',1123,1004,421,114);
insert into orders values(735,2,3,'2021-03-05','good','2021-10-14',1124,1005,422,116);
insert into orders values(736,3,4,'2021-0606','avg','2021-05-15',1125,1006,423,114);
insert into orders values(737,4,5,'2021-07-07','good','2021-12-06',1126,1007,425,112);
insert into orders values(738,5,6,'2021-07-08','avg','2021-07017',1127,1008,424,115);
insert into orders values(740,2,1,'2021-03-10','good','2021-10-18',1129,1010,426,118);


-- Insert into deals
insert into deals values(661,50,'2020-07-10','cod');
insert into deals values(662,20,'2020-10-11','online');
insert into deals values(663,50,'2020-10-12','both');
insert into deals values(664,40,'2020-12-12','online');
insert into deals values(665,70,'2020-12-13','cod');
insert into deals values(666,80,'2020-07-14','cod');
insert into deals values(667,60,'2020-10-15','both');
insert into deals values(668,70,'2020-12-16','cod');
insert into deals values(669,50,'2020-08-16','online');
insert into deals values(670,60,'2020-07-16','cod');


-- Insert into served_by
insert into served_by values(1001,111); 
insert into served_by values(1002,112); 
insert into served_by values(1003,113); 
insert into served_by values(1004,114); 
insert into served_by values(1005,115); 
insert into served_by values(1001,116); 
insert into served_by values(1002,117); 
insert into served_by values(1003,118); 
insert into served_by values(1004,119); 
insert into served_by values(1002,120); 
 
 
-- Insert into offers
insert into offers values(1001,661);
insert into offers values(1002,662);
insert into offers values(1003,663);
insert into offers values(1004,664);
insert into offers values(1005,661);
insert into offers values(1006,665);
insert into offers values(1007,666);
insert into offers values(1008,664);
insert into offers values(1002,663);
insert into offers values(1001,662);
insert into offers values(1006,665);


commit;
select * from customer;
select * from delivery_employee;
select * from menu;
select * from restaurant;
select * from orders;
select * from deals;
select * from served_by;
select * from offers;

/QUERIES/
/*1)NAME THE CUSTOMERS DETAILS WHO HAVE ORDERD THE FOOD BY THE DELIVERY EMPLOYEE HAVING RATINGS GREATER THAN 5*/

SELECT  C_FNAME,C_MNAME,C_LNAME
FROM CUSTOMER C,DELIVERY_EMPLOYEE DE,ORDERS O
WHERE O.D_ID=DE.D_ID AND O.C_ID=C.C_ID
AND DE.D_RATINGS>5;

/*2)NAME THE RESTAURANT NAME THAT HAD GOT THE  ORDERS OF THE SOUTH INDIAN ITEMS*/

SELECT R.R_NAME
FROM RESTAURANT R,ORDERS O,MENU M
WHERE O.R_ID=R.R_ID AND O.DISH_ID=M.DISH_ID
AND M.DISH_CUISINE='south indian';

/*3)DISPLAY THE INT OF RESTAURANTS AND THEIR NAME  THAT HAS AN OFFER AND PROVIDES DISCOUNT AMT GREATER THAN 40*/

SELECT COUNT(*),R_NAME
FROM RESTAURANT R,OFFERS O,DEALS D
WHERE R.R_ID=O.R_ID AND O.D_CODE=D.DEAL_CODE
 AND D.DISCOUNT>40
GROUP BY R_NAME;

/*4)NAME THE CUSTOMERS DETAILS WHO HAVE ORDERD THE FOOD BY THE DELIVERY EMPLOYEE HAVING SALARY GREATER THAN THE AVG SALARY*/
SELECT  C_FNAME,C_MNAME,C_LNAME
FROM CUSTOMER C,DELIVERY_EMPLOYEE DE,ORDERS O
WHERE O.D_ID=DE.D_ID AND O.C_ID=C.C_ID
AND DE.D_SALARY>(SELECT AVG(D_SALARY) FROM  DELIVERY_EMPLOYEE);

/*5)RETRIVE THE DEAL CODE AND THEIR RESPECTIVE RESTAURANT NAME WHO HAVE OFFERS IN THE MONTH OF SEPTEMBER*/
SELECT D.DEAL_CODE,R.R_NAME
FROM RESTAURANT R,DEALS D,OFFERS O
WHERE R.R_ID=O.R_ID AND O.D_CODE=D.DEAL_CODE
AND D.VALID_DAY LIKE '___sep___'
GROUP BY DEAL_CODE,R_NAME;


/*6)RETRIVE THE CUSTOMERS DETAILS AND ORDERID WHO HAVE ORDERED THE FOOD FROM RESTAURANT HAVING 
RESTAURANT RATINGS GREATER THAN THE AVG RATINGS AND FOOD STATUS IS GOOD*/
SELECT C_FNAME,C_LNAME,ORDER_ID
FROM ORDERS O,CUSTOMER C,RESTAURANT R
WHERE C.C_ID=O.C_ID AND O.R_ID=R.R_ID
AND O.F_STATUS='good' AND
R.R_RATINGS>(SELECT AVG(R_RATINGS) FROM RESTAURANT);

/*7)RETRIVE  THE NO OF ORDERS AND THE RESTAURANT NAME AND EMPLOYEE NAME DELIVERED BY THE
EMPLOYEE FROM THE DIFFERENT RESTAURANT*/
SELECT COUNT(*),D_FNAME,D_LNAME,R_NAME
FROM ORDERS O,DELIVERY_EMPLOYEE DE,RESTAURANT R
WHERE DE.D_ID=O.D_ID AND R.R_ID=O.R_ID
GROUP BY D_FNAME,D_LNAME,R_NAME;

/*8)RETRIVE THE CUSTOMER ID,R ID ,R_NAME WHO HAVE ORDERED THE FOOD FROM RESTAURANT 
PRESENT IN HUBLI,DHARWAD*/
SELECT C.C_ID,R.R_ID,R.R_NAME
FROM CUSTOMER C,RESTAURANT R,ORDERS O
WHERE C.C_ID=O.C_ID AND R.R_ID=O.R_ID
AND R.R_CITY IN('hubli','dharwad')
GROUP BY C.C_ID,R.R_ID,R.R_NAME;

/*9)NAME THE DID AND ORDERID OF THE CUSTOMER WHO HAVE ORDERED THE FOOD 
FROM EMPLOYEE BEFORE 2 */
SELECT DE.D_ID,O.ORDER_ID
FROM CUSTOMER C,ORDERS O,DELIVERY_EMPLOYEE DE
WHERE O.D_ID=DE.D_ID AND C.C_ID=O.C_ID
AND O.ORDER_TIME<2;

/*10)RETRIVE THE R_ID AND DEAL CODE OF RESTAURANT WHO HAVE OFFERS IF THE PAYMENT IS BY ONLINE*/
SELECT R.R_ID,D.DEAL_CODE
FROM DEALS D,OFFERS O,RESTAURANT R
WHERE R.R_ID=O.R_ID AND O.D_CODE=D.DEAL_CODE
AND D.VALID_PAY_METHOD='online';
