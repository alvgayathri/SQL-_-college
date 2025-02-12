CREATE DATABASE college;
USE college ;
CREATE TABLE students(
 Rollno INT PRIMARY KEY ,
 Name VARCHAR(50)
) ;
INSERT INTO students
(Rollno , name )
VALUES 
(1, "AMAR"),
(2, "NATH");
INSERT INTO students VALUES (3 , "RAMA");
create table temp1(
 id int unique 
);
insert into temp1 values (101);
insert into temp1 values (101);
select * from temp1;
create table newlyone (
id int ,
salary int default(25000) ,
age int check(age>=18)
);
insert into newlyone (id) values (1); 
select * from newlyone;
create table rand(
age int check(age>=18)
);
insert into rand (age)values(12); 
insert into rand (age)values(22); 
select * from rand;