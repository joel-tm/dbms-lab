DECLARE
num number:=&num;
fact number:=1;
temp number;
BEGIN 
temp:=num;
while(num>0)
loop
fact :=fact*num;
num:=num-1;
end loop;
dbms_Output.Put_line('Factorial of' || temp ||' is'|| fact);
END;