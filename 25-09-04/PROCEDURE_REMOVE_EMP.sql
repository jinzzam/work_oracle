--사원 정보를 삭제하는 PROCEDURE 
create or replace PROCEDURE REMOVE_EMP
    (V_EMPNO NUMBER) AS
BEGIN
    DELETE FROM EMP 
     WHERE empno = V_EMPNO;
END;