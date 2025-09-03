drop SEQUENCE jno_seq_rev;
drop SEQUENCE jno_seq;

SELECT jno_seq_rev.nextval FROM dual;
SELECT jno_seq_rev.currval FROM dual;

CREATE SEQUENCE jno_seq_rev
INCREMENT BY -2
START WITH 10
MAXVALUE 20
MINVALUE 0;
--기본 nocycle

ALTER SEQUENCE jno_seq
MAXVALUE 120
NOCYCLE 
CACHE 10;

--2
SELECT jno_seq.currval FROM dual;
--1
SELECT jno_seq.nextval FROM dual;

SELECT * FROM user_sequences; --데이터 딕셔너리

CREATE SEQUENCE jno_seq
INCREMENT BY 1
START WITH 100
MAXVALUE 110
MINVALUE 90
CYCLE 
-- 번호 2개씩 메모리에 올려두고 (두 개의 테이블에서 각각 사용하더라도 속도 빠르게)
CACHE 2;