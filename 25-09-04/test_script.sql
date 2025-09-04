SELECT help('adjust_sal') FROM dual;
SELECT help('adjust_sal2') FROM dual;
SELECT help('GET_HIREDATE') FROM dual;

SELECT EMPNO "사번"
     , ENAME "성명"
     , get_annual_sal(EMPNO) "연봉"
     , get_retire_money(EMPNO) "퇴직금"
     , get_hiredate(EMPNO, 'YYYY-MM-DD') "입사일"
  FROM EMP;

EXEC emp_mgmt.adjust_sal('INCREASE', 7369, 10);
SELECT emp_mgmt.get_hiredate(7369, 'YYYY-MM-DD hh24:mi:ss') FROM dual;
--800 880 792
SELECT * FROM EMP;
--프로시저 동작
EXEC adjust_sal('INCREASE', 7369, 10);
EXEC adjust_sal('D', 7369, 10);

--함수 동작
SELECT GET_ANNUAL_SAL(7369) FROM dual;
SELECT GET_RETIRE_MONEY(7369) FROM dual;
SELECT GET_HIREDATE(7369, 'YYYY-MM-DD') FROM dual;
