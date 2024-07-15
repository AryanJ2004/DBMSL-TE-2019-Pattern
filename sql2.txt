-- create table stud1(rno int,name varchar(20),primary key(rno,name));
-- insert into stud1 values(1,"abc");
-- describe stud1;
-- select * from stud1;

-- alter table stud1 drop primary key;
-- describe stud1;
-- alter table stud1 add primary key(rno,name);
-- describe stud1;
-- alter table stud1 drop primary key;
-- describe stud1;

-- create table stud2(rno int,name varchar(20) default "chandwad");
-- describe stud2;
-- insert into stud2(rno) values(1);
-- select * from stud2;
-- alter table stud2 alter name drop default;
-- describe stud2;
-- alter table stud2 alter name set default "ABC";
-- describe stud2;

-- create table stud3(rno int,name varchar(20),check(rno<24));
-- describe stud3;
-- insert into stud3 values(1,"abc");
-- select * from stud3;
-- insert into stud3 values(25,"xyz");

-- create table stud4(rno int,name varchar(20));
-- alter table stud4 add constraint c1 check(rno<25);
-- describe stud4;
-- insert into stud4 values(1,"abc");
-- select * from stud4;
-- alter table stud4 drop constraint c1;

create table stud5(rno int,name varchar(20),primary key(rno));
insert into stud5 values(1,"abc");
insert into stud5 values(2,"xyz");
select * from stud5;
create table grade(rno int,m1 int,m2 int, foreign key(rno) references stud5(rno) on update cascade on delete cascade);
insert into grade values(1,15,20);
select * from grade;
insert into grade values(3,54,34);
