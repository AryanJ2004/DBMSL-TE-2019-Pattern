create table stud(rno int ,name varchar(20));
describe stud;
insert into stud value(1,"abc");
insert into stud value(1,"abc");

truncate table stud;
select * from stud;
alter table stud add constraint cl unique key(rno);
insert into stud value(1,"abc");
select * from stud;
alter table stud add column(contact int(10));
select * from stud;
update stud set contact=1234567890 where rno=1;
insert into stud value(2,"xyz",987654321);
select * from stud;
alter table stud drop index cl;
describe stud;

create table stud1(rno int not null,name varchar(20));
describe stud1;


select * from stud1;
alter table stud1 modify rno int;
insert into stud1(name) value("xyz");
describe stud1;
select * from stud1;

create table stud2(rno int,name varchar(20));
describe stud2;

alter table stud2 add constraint c1 primary key(rno);
describe stud2;



