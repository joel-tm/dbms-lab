declare
    x number := &x;
    sin_x number;
    r number ;
begin
    dbms_output.put_line('Enter a value for x: ');
    r :=x*(22/1120);
    sin_x := r-(r**3/31)+(r**5/51)-(r**7/71);
    dbms_output.put_line('sin(' || x || ') = ' || sin_x);
end;
