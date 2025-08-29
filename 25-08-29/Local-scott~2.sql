select text
       , REGEXP_count(text, 'a') "c"
       , REGEXP_count(text, 'bc') "c"
       , REGEXP_count(text, '12') "c"
       , REGEXP_count(text, 'c') "c"
       , REGEXP_count(text, 'c', 1) "c"
       , REGEXP_count(text, 'c', 1, 'i') "c"
       , REGEXP_count(text, 'c', 5) "c" --5번째 부터 나오는 c 카운트
       , REGEXP_count(text, 'c', 5, 'i') "c" 
       , REGEXP_count(text, '.') "c" --모든것.길이와 같음
       , REGEXP_count(text, '\.') "c" --점의 개수 
       , REGEXP_count(text, 'aa') "c" 
       , REGEXP_count(text, 'a{2}') "c" 
       , REGEXP_count(text, '(a)(a)') "c" 
--       , length(text) "l"
  from t_reg;

select text
       , REGEXP_replace(text, '[0-9]', '*')
       , REGEXP_replace(text, '[[:digit:]]', '*')
--       , REGEXP_replace(text, '[[:DIGIT:]]', '*') 오류
  from t_reg;