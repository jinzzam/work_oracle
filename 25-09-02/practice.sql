select studno
       , name, deptno1, deptno2
  from student
 where deptno1=101
union 
select studno
       , name, deptno1, deptno2
  from student
 where deptno2=201;
 
 select * from student;
 
 select studno
       , name
       , deptno1
       , deptno2
  from student
 where deptno1=101
INTERSECT
select studno
       , name
       , deptno1
       , deptno2
  from student
 where deptno2=201;
 
 select empno
       , ename
       , sal
  from emp
MINUS
select empno
       , ename
       , sal
  from emp
 where sal>2500;
 
select ename
       , initcap(ename)
       , lower(ename)
       , upper(ename)
       , length(ename)
       , lengthb(ename)
  from emp;
  
select job
     , substr(job, 3, 2)
     , substr(job, 6, 2)
     , substr(job, 4)
     , substr(job, -3, 2)
     , substr(job, -5, 3)
  from emp;
  
select 
     1
     , abs(-234)
     , sysdate
  from dual;select name
     , id
     , lpad(id, 10, '*')
     , rpad(id, 10, '-')
     , ltrim(id, 'C')
     , rtrim(id, 'e')
     , replace(name, substr(name, 1, 2), '**')
  from student;

select 121
     , mod(121, 10)
     , ceil(123.45)
     , floor(123.45)
     , power(2, 3)
  from dual;

select sysdate
     , to_char(sysdate, 'YYYY') "y"
     , to_char(sysdate, 'YY') "y"
     , to_char(sysdate, 'YEAR') "y"
     , to_char(sysdate, 'MM') "m"
     , to_char(sysdate, 'MON') "m"
     , to_char(sysdate, 'DD') "d"
     , to_char(sysdate, 'DAY') "d"
     , to_char(sysdate, 'DDTH') "d"
     , to_char(sysdate, 'YYYY-MMDD HH24:MI:SS') "d"
  from dual;

select sysdate
     , months_between('14/09/30', '14/08/31') "m" --1달 차이 (큰 날짜-작은 날짜) 
     , months_between('14/08/31', '14/09/30') "m" --1달 차이 (작은 날짜-큰 날짜)
     , add_months(sysdate, 1) "nm"--다음 달 날짜
     , next_day(sysdate, '목') "nd"--돌아오는 목요일
     , next_day(sysdate, '수') "nd"--돌아오는 수요일
     , last_day(sysdate) "ld"--이 달의 마지막
  from dual;
  
select 987.654
     , round(987.654, 2) "r" --소수점 3째 자리에서 반올림
     , round(987.654, 0) "r" --소수점 1째 자리에서 반올림
     , round(987.654, -1) "r" --1의 자리에서 반올림
     , trunc(987.654, 2) "t" --2째 자리까지 자르기
     , trunc(987.654, 0) "t" --소수점 없음
     , trunc(987.654, -1) "t" --1의 자리 버림(자름)
  from dual;
  
select 'A-B-C-D'
     , instr('A-B-C-D', '-', 1, 3) "i" --첫번째부터 3번째로 나오는 곳
     , instr('A-B-C-D', '-', 3, 1) "i" --3번째부터 1번째로 나오는 곳
     , instr('A-B-C-D', '-', 3) "i"  --초기값 : , 1 생략
     , instr('A-B-C-D', '-') "i"  --초기값 : 1, 1 생략
     , instr('A-B-C-D', '-', 1, 1) "i"  --첫번째부터 처음으로 나오는 곳
     , instr('A-B-C-D', '-', -1, 3) "i"  --뒤에서 1번째부터 3번째로 나오는 곳
     , instr('A-B-C-D', '-', -3, 1) "i"  --뒤에서 3번째부터 1번째로 나오는 곳
     , instr('A-B-C-D', '-', -6, 1) "i"  --시작하자마자 본인을 찾음
     , instr('A-B-C-D', '-', -6, 2) "i"  --시작하자마자 찾고 그 뒤에 없다(?) 그래서 0
  from dual;
  
select name
     , id
     , lpad(id, 10, '*')
     , rpad(id, 10, '-')
     , ltrim(id, 'C')
     , rtrim(id, 'e')
     , replace(name, substr(name, 1, 2), '**')
  from student;
  
select 2
     , TO_NUMBER('2') "num"
     , 2 + '2' "num+ch" --묵시적 형변환
     , 2 + TO_NUMBER('2') "num+ch" --명시적 형변환
--     , 2 + 'A' "num+ch" 
  from dual;
  
select to_number('5') "n"
     , '2025-0903'
     , to_date('2025-0903')
  from dual;