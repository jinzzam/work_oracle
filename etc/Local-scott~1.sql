DECLARE
    i NUMBER:=1;
    name VARCHAR2(20):='kim';
    title VARCHAR2(20):='';
BEGIN
    WHILE i<=300 LOOP
        IF i MOD 2 = 0 THEN
            name := 'kim' || TO_CHAR(i);
            title := 'apple';
        ELSIF i MOD 3 = 0 THEN
            name := 'park' || TO_CHAR(i);
            title := 'google';
        ELSIF i MOD 5 = 0 THEN
            name := 'hong' || TO_CHAR(i);
            title := 'nvidia';
        ELSE 
            name := 'shin' || TO_CHAR(i);
            title := 'telsa';
        END IF;
        insert into boardT(b_id, b_name, b_title, b_content, b_date, b_hit) 
            values(i, name, i||title, 'content_'||i, sysdate, 0);
        i:=i+1;
    END LOOP;
END;

DECLARE
    i number:=1;
    name VARCHAR2(20) := 'kim';
    title VARCHAR2(20) := '';
BEGIN
    WHILE i<=300 LOOP
        if i mod 2 = 0 THEN
            name := 'kim' || to_char(i);
            title := 'apple';
        ELSIF i mod 3 = 0 THEN
            name := 'park' || to_char(i);
            title := 'google';        
        ELSIF i mod 5 = 0 THEN
            name := 'hong' || to_char(i);
            title := 'nvidia';
        ELSE
            name := 'shin' || to_char(i);
            title := 'tesla';
        END if;
        insert into boardT(b_id, b_name, b_title, b_content, b_date, b_hit)
            values(i, name, i||title, 'content_'||i, sysdate, 0);
        i := i+1;
    end loop;
end;







