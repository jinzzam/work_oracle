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
        insert into boardT(b_id, b_name, b_email, b_title, b_content, b_date, b_hit, b_pwd, b_ip
                  , b_ref, b_step, b_level, b_fname, b_fsize)
            values(i+1, name, i||title, i||'_'||'emailId'||i||'@nav.con', 'content_'||i, sysdate, 0, '123', '192.168.10.64'
                 , 0, 0, 0, i||'_file', i*0.8);
        i := i+1;
    end loop;
end;

--B_ID      NOT NULL NUMBER(5)      
--B_NAME             VARCHAR2(20)   
--B_EMAIL            VARCHAR2(50)   
--B_TITLE            VARCHAR2(80)   
--B_CONTENT          VARCHAR2(3000) 
--B_DATE             DATE           
--B_HIT              NUMBER(5)      
--B_PWD              VARCHAR2(12)   
--B_IP               VARCHAR2(15)   
--B_REF              NUMBER(5)      
--B_STEP             NUMBER(5)      
--B_LEVEL            NUMBER(5)      
--B_FNAME            VARCHAR2(100)  
--B_FSIZE            NUMBER(10)     




