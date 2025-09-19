DECLARE
    i number:=6;
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
        insert into boardT(b_id, b_name, b_email, b_title, b_content, b_date, b_hit, b_pwd, b_ip
                  , b_ref, b_step, b_level, b_fname, b_fsize)
            values(i, name, i||title, i||'_'||'emailId'||i||'@nav.con', 'content_'||i, sysdate, 0, '123', '192.168.10.64'
                 , 0, 0, 0, i||'_file', i*0.8);
        i := i+1;
    end loop;
end;