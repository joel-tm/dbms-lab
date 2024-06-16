set serveroutput ON;
DECLARE
	str1 varchar(32) := '&string';
	str2 varchar(64);
	str3 varchar(32);
BEGIN
	for i in reverse 1..length(str1)
	loop
		str2 := substr(str1, i, 1);
		str3 := str3||''||str2;
	end loop;
	if str1 = str3
	then
		dbms_output.put_line(str1||' is palindrome');
	else
		dbms_output.put_line(str1||' is not palindrome');
	end if;
END;

