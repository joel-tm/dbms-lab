declare

binary number:= 0;

remainder number;

power number:=1;

decimal number:= &decimal;

begin

while (decimal > 0) 

LOOP

remainder := mod(decimal, 2);

binary := binary + remainder * power;

power := power * 10;

decimal := floor(decimal / 2);

end loop;

dbms_output.put_line(binary);

END;

/