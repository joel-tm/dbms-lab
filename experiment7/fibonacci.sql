declare 
pp number(3) :=0;
p number(3) :=1;
l number(3);
n number(3) :=&n;
begin
if n=1 then
dbms_output.put_line(pp);
elsif n=2 then
dbms_output.put_line(p);
else
for i in 1..n-2
loop
l:=pp+p;
pp:=p;
p:=l;
end loop;
end if;
if l!=0 then
dbms_output.put_line(l);
end if;
end;