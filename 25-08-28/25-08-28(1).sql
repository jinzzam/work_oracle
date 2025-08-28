--2-13
select empno, ename, sal, comm, to_char((sal*12)+comm, '999,999') "salary" from emp where ename='ALLEN';

--2-14
select * from professor;
select name, pay, bonus, to_char((pay*12)+bonus, '999,999') "total" from professor where deptno=201;

--2-15
select * from emp;
select empno, ename, hiredate, 
to_char((sal*12)+comm, '$999,999') "sal",
to_char(((sal*12)+comm)*1.15, '$999,999') "15% up"
from emp
where exists comm ;

select empno,
        ename,
        to_char(hiredate, 'yyyy-mm-dd')
        ,to_char((sal*12)+comm, '$999,999') "sal"
        ,to_char(((sal*12)+comm)*1.15, '$999,999') "15% up"
        from emp;
        
select 'A'
    , decode('A', 'B', 1) D  
    , decode('A', 'A', 1) D
    --
    , decode('A', 'A', 1, 2) D
    , decode('A', 'B', 1, 2) D
    --
    , decode('A', 'B', 1, 'C', 2, 3) D
    , decode('A', 'B', 1, 'A', 2, 3) D
    , decode('A', 'A', 1, 'A', 2, 3) D
    --
    , decode('A', 'A', decode('C','D',1)) D
    , decode('A', 'B', decode('C','D',1)) D
    , decode('A', 'A', decode('C','C',1)) D
    --
    , decode('A', 'A', decode('C','C',1, 2)) D
    , decode('A', 'B', decode('C','C',1, 2), 3) D
    from dual;
--a가 b면 null, a가 a면 1
--decode 조건문 (중첩도 가능)

select case '3' when '1' then 'a'
                when '2' then 'b'
                when '3' then 'c'
                else 'etc'
        end "test"
     from dual;
     
     
select case when '2'='1' then 'a'
            when '2'='2' then 'b'
            else 'etc'
        end "test"
     from dual;

select * from dual;

select 'A'
    , decode('A', 'B', 1) D  
    , decode('A', 'A', 1) D
    --
    , decode('A', 'A', 1, 2) D
    , decode('A', 'B', 1, 2) D
    --
    , decode('A', 'B', 1, 'C', 2, 3) D
    , decode('A', 'B', 1, 'A', 2, 3) D
    , decode('A', 'A', 1, 'A', 2, 3) D
    --
    , decode('A', 'A', decode('C','D',1)) D
    , decode('A', 'B', decode('C','D',1)) D
    , decode('A', 'A', decode('C','C',1)) D
    --
    , decode('A', 'A', decode('C','C',1, 2)) D
    , decode('A', 'B', decode('C','C',1, 2), 3) D
    from dual;

select to_number('5')
    , '2025-0828'
    , to_date('2025-0825')
from dual;


select deptno
    ,name
    ,decode(deptno, 101, 'Computer Engineering') "dname"
    from professor;
    
select deptno
    , name
    , decode(deptno, 101, 'Computer Engineering', 'ETC') "dname"
    from professor;
    
select deptno
    , name
    , decode(deptno, 101, 'Computer Engineering'
    , 102, 'Multimedia Engineering' 
    , 103, 'Software Engineering','ETC') "dname"
    from professor;
    
select deptno
    , name
    , decode(deptno, 101, decode(name, 'Audie Murphy', 'BEST!')) "ETC"
    from professor;
    
select deptno
    , name
    , decode(deptno, 101, decode(name, 'Audie Murphy', 'BEST!', 'GOOD!')) "ETC"
    from professor;
    
select deptno
    , name
    , decode(deptno, 101, decode(name, 'Audie Murphy', 'BEST!', 'GOOD!'), 'N/A') "ETC"
    from professor;
    
select name
    , jumin 
    ,decode(substr(jumin, 7, 1), '1', 'MAN', '2', 'WOMAN') "Gender" 
    from student 
    where deptno1=101;

select name
    , tel
    ,decode(substr(tel,1 ,instr(tel, ')')-1),02, 'SEOUL',031, 'GYEONGGI', 051, 'BUSAN', 052, 'ULSAN', 055, 'GYEONGNAM') "LOC" 
    from student 
    where deptno1=101;
--    뭐가 틀림?
    
select name
    ,tel
    ,case (substr(tel , 1 ,instr(tel, ')')-1)) when '02' then 'SEOUL'
                                             when '031' then 'GYEONGGI'
                                            when  '051' then 'BUSAN'
                                            when '052' then 'ULSAN'
                                            when '055' then 'GYEONGNAM' 
                                                else 'ETC' 
                                            end "LOC"
                                        from student 
                                        where deptno1=201;
--어디가 틀림?

select name
    , substr(jumin, 3, 2) "Mont"
    , case
    when substr(jumin, 3, 2) between '01' and '03' then '1/4'
    when substr(jumin, 3, 2) between '04' and '06' then '2/4'
    when substr(jumin, 3, 2) between '07' and '09' then '3/4'
    when substr(jumin, 3, 2) between '10' and '12' then '4/4'    
    end "Qua"
from student;
--???

select empno
    , ename
    , sal
    , case
        when sal between '1' and '1000' then 'LEVEL 1'
        when sal between '1001' and '2000' then 'LEVEL 2'
        when sal between '2001' and '3000' then 'LEVEL 3'
        when sal between '3001' and '4000' then 'LEVEL 4'    
    else 'LEVEL 5' 
end "LEVEL" 
from emp 
order by sal desc;

    
select case '3' when '1' then 'a'
                when '2' then 'b'
                when '3' then 'c'
                else 'etc'
        end "test"
     from dual;
     
     
select case when '2'='1' then 'a'
            when '2'='2' then 'b'
            else 'etc'
        end "test"
     from dual;

select * from dual;

select name
    ,tel
    from student
    where REGEXP_LIKE (tel, '^[0-9]{2}\)[0-9]{4}'); 