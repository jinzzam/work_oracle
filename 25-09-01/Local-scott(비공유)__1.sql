update t_minus
   set no3=3
 where no3=2.22;
 
 commit;

select *
  from t_minus;

ROLLBACK;

--8
delete 
  from t_minus
 where no3=3;

--데이터 삭제
delete 
  from t_minus;

--데이터 삭제하는데 TRUNCATE 롤백 안 됨
TRUNCATE
  table t_minus;
  
--테이블 자체를 삭제
drop
  table t_minus;


INSERT INTO t_minus VALUES (1, 1, 1);
INSERT INTO t_minus VALUES (1.1, 1.1, 1.1);
INSERT INTO t_minus VALUES (-1.1, -1.1, -1.1);
--INSERT INTO t_minus VALUES (2.22, 2.22, 2.22); --오류
INSERT INTO t_minus VALUES (22.22, 22.22, 2.22);
INSERT INTO t_minus VALUES (77, 77, 77); --오류
INSERT INTO t_minus VALUES (77, 77, 7);
INSERT INTO t_minus VALUES (888, 888, 8);
INSERT INTO t_minus VALUES (9999, 9999, 9); --오류
INSERT INTO t_minus VALUES (9999, 999, 9);

SELECT * FROM t_minus;

create table t_minus
(no1 number
,no2 number(3) --정수만 3
,no3 number(3, 2) --정수 1자리, 소수점 2자리 까지
);