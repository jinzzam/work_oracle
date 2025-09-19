select * from emp;
desc emp;

select * from professor;

select name
     , email
     , rtrim(substr(email, instr(email,'@')+1)
     , substr(email, instr(email,'.'))) "DOMAIN"
  from professor;