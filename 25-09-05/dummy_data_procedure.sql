DECLARE
    i number := 1;
    name varchar2(20) := 'kim';
    sal number := 0;
BEGIN
    while i <= 1000000 LOOP
        if i mod 2 = 0 then 
            name := 'kim' || to_char(i);
            sal := 300;
        ELSIF i mod 3 = 0 then 
            name := 'park' || to_char(i);
            sal := 400;
        ELSIF i mod 5 = 0 then 
            name := 'hong' || to_char(i);
            sal := 500;
        ELSE
            name := 'shin' || to_char(i);
            sal := 250;
        end if;
        INSERT INTO emp3 VALUES(i, name, sal);
        i := i + 1;
    end LOOP;
END;