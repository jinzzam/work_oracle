select max(decode(day, 'SUN', dayno)) SUN
     , max(decode(day, 'MON', dayno)) MON
     , max(decode(day, 'TUE', dayno)) TUE
     , max(decode(day, 'WED', dayno)) WED
     , max(decode(day, 'THU', dayno)) THU
     , max(decode(day, 'FRI', dayno)) FRI
     , max(decode(day, 'SAT', dayno)) SAT
  from cal
 group by weekno
 order by weekno;


desc cal;
--dayno 유형이 varchar2라서 아스키 코드의 영향을 받음
--따라서 아스키 값이 가장 큰 것이 나온다.
select max(decode(day, 'SUN', dayno)) SUN
     , max(decode(day, 'MON', dayno)) MON
     , max(decode(day, 'TUE', dayno)) TUE
     , max(decode(day, 'WED', dayno)) WED
     , max(decode(day, 'THU', dayno)) THU
     , max(decode(day, 'FRI', dayno)) FRI
     , max(decode(day, 'SAT', dayno)) SAT
  from cal;

select decode(day, 'SUN', dayno) SUN
     , decode(day, 'MON', dayno) MON
     , decode(day, 'TUE', dayno) TUE
     , decode(day, 'WED', dayno) WED
     , decode(day, 'THU', dayno) THU
     , decode(day, 'FRI', dayno) FRI
     , decode(day, 'SAT', dayno) SAT
  from cal;

select *
    from cal;