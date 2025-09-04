--사원 급여 조정 PROCEDURE 
create or replace PROCEDURE ADJUST_SAL
    (V_FLAG VARCHAR2, V_EMPNO NUMBER, V_PCT NUMBER) AS
BEGIN
    IF V_FLAG = 'INCREASE' THEN
        UPDATE emp SET SAL = SAL + (SAL * (V_PCT/100))
        WHERE empno = V_EMPNO;
    ELSE
        UPDATE emp SET SAL = SAL - (SAL * (V_PCT/100))
        WHERE empno = V_EMPNO;
    END IF;
END;