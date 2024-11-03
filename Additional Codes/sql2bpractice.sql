create table stud(rno int,name varchar(20),address varchar(20));
insert into stud values(1,"abc","xyz"),(2,"a","xyz"),(3,"b","xyz");
select * from stud;
update stud set name="om" where rno=1;
update stud set name="abc" where name="a";
select * from stud;
delete from stud where name="b";
select * from stud;
insert into stud values(3,"at","Nashik"),(2,"ar","Chandwad"),(3,"ro","Mumbai");
select * from stud;

select name,rno from stud;
select * from stud where address like("x%");
select distinct address from stud;
select * from stud where address in("xyz");
insert into stud(rno,name) values(4,"n");
select * from stud where address is not null;
select * from stud where address is null;

select min(rno) from stud;
select max(rno) from stud;
select avg(rno) from stud;
select count(address) from stud;
select count(rno) from stud;
select sum(rno) from stud;

