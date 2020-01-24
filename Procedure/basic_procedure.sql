Procedure:
-----To get particular data----------

create or replace procedure get_list(cl in number)
is
data employee%rowtype;
cursor get_data is select * from employee where empid = cl;

begin
open get_data;
loop
fetch get_data into data;
exit when get_data%notfound;
dbms_output.put_line( data.empid || ' ' || data.empname || ' ' || data.deptid || ' ' || data.basic_salary );
end loop;
close get_data;
end;
/


-----------To Display All Records ------------------

create or replace procedure get_list
is
data employee%rowtype;
cursor get_data is select * from employee;
begin
open get_data;
loop
fetch get_data into data;
exit when get_data%notfound;
dbms_output.put_line( data.empid || ' ' || data.empname || ' ' || data.deptid || ' ' || data.basic_salary );
end loop;
close get_data;
end;
/





-----------------------printing records using procedure--------------------

declare
cl number(2);
begin
cl:= &Enter_Id;

get_list(cl);  //c1 for getting particular data  or no c1 //
end;
/

-------------------------------------------
