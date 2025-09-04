--개발자를 위한 HELP FUNCTION
create or replace FUNCTION HELP(V_MODULE VARCHAR2)
    RETURN VARCHAR2 IS V_USAGE VARCHAR2(100);
BEGIN
    v_usage := v_module || '는(은) 등록되지 않은 모듈입니다.';  --기본값 세팅 
    IF UPPER(V_MODULE) = 'ADJUST_SAL' THEN
        v_usage := '종류 : PROC, 사용법 : ADJUST_SAL(INCREASE|DECREASE, 사번, 증감율)';
    ELSIF UPPER(V_MODULE) = 'GET_ANNUAL_SAL' THEN
        v_usage := '종류 : FUNC, 사용법 : GET_ANNUAL_SAL(사번)';
    ELSIF UPPER(V_MODULE) = 'GET_RETIRE_MONEY' THEN
        v_usage := '종류 : FUNC, 사용법 : GET_RETIRE_MONEY(사번)';
    ELSIF UPPER(V_MODULE) = 'REMOVE_EMP' THEN
        v_usage := '종류 : PROC, 사용법 : REMOVE_EMP(사번)';
    ELSIF UPPER(V_MODULE) = 'GET_HIREDATE' THEN
        v_usage := '종류 : FUNC, 사용법 : GET_HIREDATE(사번, 형식)';
    END IF;
    RETURN v_usage;
END;