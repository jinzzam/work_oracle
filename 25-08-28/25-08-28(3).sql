--regexp_ (정규식) Regular Expresion

--12
select *
    from t_reg
-- where REGEXP_LIKE(text, '[a-z]'); --소문자를 포함
-- where REGEXP_LIKE(text, '[A-Z]'); --대문자를 포함
-- where REGEXP_LIKE(text, '[a-zA-Z]'); --대,소문자를 포함
-- where REGEXP_LIKE(text, '[a-z] '); --소문자로 시작, 공백 포함
-- where REGEXP_LIKE(text, '[a-z] [0-9]'); --소문자로 시작, 공백, 숫자 포함
-- where REGEXP_LIKE(text, '[a-z]  [0-9]'); --소문자로 시작, 공백 2개, 숫자 포함
-- where REGEXP_LIKE(text, '[a-z]   [0-9]'); --소문자로 시작, 공백 3개, 숫자 포함
-- where REGEXP_LIKE(text, '[[:space:]]'); --공백 포함
-- where REGEXP_LIKE(text, '[[:SPACE:]]'); --오류
-- where REGEXP_LIKE(text, '[a-z]{1}'); --6 연속 1글자 이상
-- where REGEXP_LIKE(text, '[a-z]{2}'); --5 연속 2글자 이상
-- where REGEXP_LIKE(text, '[a-z]{4}'); -- 연속 4글자 이상
-- where REGEXP_LIKE(text, '[a-z]{6}'); --1 연속 6글자 이상
-- where REGEXP_LIKE(text, '[a-z]{7}'); --없음
-- where REGEXP_LIKE(text, '[0-9]{3}'); --8 숫자 3개 연속
-- where REGEXP_LIKE(text, '[0-9]{4}'); --1 숫자 4개 연속
 where REGEXP_LIKE(text, '[a-z][0-9]{1}'); --2 
 where REGEXP_LIKE(text, '[a-z][0-9]{1}'); --2 
select *
    from t_reg
-- where REGEXP_LIKE(text, '[a-z]'); --소문자를 포함
-- where REGEXP_LIKE(text, '[A-Z]'); --대문자를 포함
-- where REGEXP_LIKE(text, '[a-zA-Z]'); --대,소문자를 포함
-- where REGEXP_LIKE(text, '[a-z] '); --소문자로 시작, 공백 포함
-- where REGEXP_LIKE(text, '[a-z] [0-9]'); --소문자로 시작, 공백, 숫자 포함
-- where REGEXP_LIKE(text, '[a-z]  [0-9]'); --소문자로 시작, 공백 2개, 숫자 포함
-- where REGEXP_LIKE(text, '[a-z]   [0-9]'); --소문자로 시작, 공백 3개, 숫자 포함
-- where REGEXP_LIKE(text, '[[:space:]]'); --공백 포함
-- where REGEXP_LIKE(text, '[[:SPACE:]]'); --오류
-- where REGEXP_LIKE(text, '[a-z]{1}'); --6 연속 1글자 이상
-- where REGEXP_LIKE(text, '[a-z]{2}'); --5 연속 2글자 이상
-- where REGEXP_LIKE(text, '[a-z]{4}'); -- 연속 4글자 이상
-- where REGEXP_LIKE(text, '[a-z]{6}'); --1 연속 6글자 이상
-- where REGEXP_LIKE(text, '[a-z]{7}'); --없음
-- where REGEXP_LIKE(text, '[0-9]{3}'); --8 숫자 3개 연속
-- where REGEXP_LIKE(text, '[0-9]{4}'); --1 숫자 4개 연속
-- where REGEXP_LIKE(text, '[a-z][0-9]{1}'); --2 소문자 뒤에 숫자가 1개 이상
-- where REGEXP_LIKE(text, '[a-z][0-9]{2}'); --1 소문자 뒤에 숫자가 2개 이상
-- where REGEXP_LIKE(text, '^[A-Za-z]'); -- 대소문자 시작
-- where REGEXP_LIKE(text, '^[0-9A-Z]'); -- 대문자, 숫자로 시작
-- where REGEXP_LIKE(text, '[a-z]$'); -- 끝이 소문자
-- where REGEXP_LIKE(text, '[A-Z]$'); -- 끝이 대문자 없음
-- where REGEXP_LIKE(text, '[0-9]$'); -- 끝이 숫자
-- where REGEXP_LIKE(text, '^[^a-z]'); -- 소문자로 시작하지 않음
-- where REGEXP_LIKE(text, '^[^0-9]'); -- 숫자로 시작하지 않음
-- where REGEXP_LIKE(text, '^[^0-9a-z]'); -- 숫자, 소문자로 시작하지 않음
-- where REGEXP_LIKE(text, '[^a-z]'); -- 소문자로만 된 행 제외
-- where REGEXP_LIKE(text, '[a-z]'); -- 소문자로 된 행
-- where not REGEXP_LIKE(text, '[a-z]'); -- 소문자로 된 행 제외
-- where not REGEXP_LIKE(text, '[a-zA-Z]'); -- 대소문자로 된 행 제외
 where not REGEXP_LIKE(text, '[0-9]'); -- 숫자로 된 행 제외




 select *
    from t_reg;
    
    select *
    from student
    where regexp_like(id, '^M(a|o)');   --시작, a or o