DECLARE 
    consumer_number NUMBER;
    consumer_type NUMBER;
    consumption_litres NUMBER;
    free_allowance NUMBER;
    rate_per_1000litres NUMBER;
    fixed_charge NUMBER;
    actual_charge NUMBER;
    total_charge NUMBER;
    consumer_type_description VARCHAR2(100);
BEGIN
    consumer_number := &consumer_number;
    consumer_type := &consumer_type;
    consumption_litres := &consumption_litres;
    IF consumer_type = 1 THEN
        free_allowance := 5000;
        rate_per_1000litres := 0.8;
        fixed_charge := 20;
        consumer_type_description := 'Type 1';
    ELSIF consumer_type = 2 THEN
        free_allowance := 9000;
        rate_per_1000litres := 0.9;
        fixed_charge := 30;
        consumer_type_description := 'Type 2';
    END IF;
    IF consumption_litres > free_allowance THEN
        actual_charge := (consumption_litres - free_allowance) * rate_per_1000litres / 1000;
    ELSE
        actual_charge := 0;
    END IF;
    total_charge := actual_charge + fixed_charge;
    total_charge := total_charge + total_charge * 0.1;  -- Add 10% surcharge
    DBMS_OUTPUT.PUT_LINE('Consumer Number: ' || consumer_number);
    DBMS_OUTPUT.PUT_LINE('Consumer Type: ' || consumer_type_description);
    DBMS_OUTPUT.PUT_LINE('Water Bill:');
    DBMS_OUTPUT.PUT_LINE('Rs ' || total_charge);
END;
/
