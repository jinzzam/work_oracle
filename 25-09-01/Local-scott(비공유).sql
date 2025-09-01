delete
  from dept2;

commit;

--14
select *
  from dept2;

--작업 확정
commit;
--작업 취소
rollback;
  
insert into dept2(dcode, dname, pdept, area) 
       values    (9000, 'temp_1', 1006, 'Temp Area'); 
       
--컬럼명 목록 생략 가능
insert into dept2
       values    (8000, 'temp_1', 1006, 'Temp Area');
       
--삽입할 데이터가 일부이면 컬럼명 목록 생략 불가. 직접 적어줘야 함.
insert into dept2(dcode, dname, pdept)
       values    (7000, 'temp_1', 1006);