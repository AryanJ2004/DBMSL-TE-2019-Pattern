/*Problem statement:

Write a PL/SQL block of code using parameterized Cursor that will
merge the data available in the newly created table N_RollCall with
the data available in the table O_RollCall. If the data in the first table
already exist in the second table then that data should be skipped.

Queries:
*/

Create table oroll(rno int,name varchar(20),contact int);
Insert into oroll values(1,"qwe",1234),(2,"asd",5678),(3,"zxc",890);
Create table nroll(rno int,name varchar(20),contact int);
Insert into nroll values(1,"qwe",1234),(4,"tyu",1357),(5,"hjk",2468);
Delimiter %
Create procedure cp1(no int)
Begin
Declare exit1 boolean;
Declare rno1 int;
Declare name1 varchar(20);
Declare contactno1 int;
Declare c1 cursor for select * from oroll where rno=no;
Declare continue handler for not found set exit1=true;
Open c1;
Abc: loop
Fetch c1 into rno1, name1, contactno1;
If not exists (select * from nroll where rno=no)then
Insert into nroll values(rno1,name1,contactno1);
End if;
If exit1 then 
Close c1;
Leave abc;
End if;
End loop abc;
Select * from nroll;
End;
%
Delimiter ;
Call cp1(3);

