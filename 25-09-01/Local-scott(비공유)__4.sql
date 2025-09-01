create TABLESPACE storm
datafile 'C:\oraclexe\app\oracle\oradata\XE\app_data.dbf' size 100M AUTOEXTEND ON NEXT 10M MAXSIZE 500M
default STORAGE 
(
    initial 10k
    next 10k
    MINEXTENTS 2
    MAXEXTENTS 50
    PCTINCREASE 50
);