-- 오라클에서 제공하는 기본 함수  이름()

-- 대소문자 치환
SELECT ENAME,LOWER(ENAME),UPPER(ENAME), INITCAP(ENAME) FROM EMP;

-- 길이 구하는 함수
SELECT ENAME, LENGTH(ENAME) FROM EMP;

SELECT ENAME FROM EMP
WHERE LENGTH(ENAME) = 6;

-- LENGTHB()는 바이트 수 돌려받음  한글은 3바이트
SELECT LENGTH('오라클'), LENGTHB('오라클 SQL') FROM DUAL;

--글자 잘라내기...
SELECT JOB,SUBSTR(JOB,1,2),SUBSTR(JOB,3,2),SUBSTR(JOB,5) FROM EMP;

--글자 잘라내기...
SELECT JOB,SUBSTR(JOB,-3,2),SUBSTR(JOB,-3) FROM EMP;

-- 문자열의 위치를 찾는 함수 INSTR
SELECT INSTR('HELLO, ORACLE','L',-1)  FROM DUAL;

SELECT INSTR(UPPER('Oracle database 11g release'),'DATABASE') AS RESULT FROM DUAL;

SELECT * FROM EMP
WHERE ENAME LIKE '%S%';

SELECT * FROM EMP
WHERE INSTR(ENAME,'S') > 0;

-- REPLACE  
SELECT '010-1111-2222' AS ORIGINAL, 
REPLACE('010-1111-2222','-',' ') AS BLANK,
REPLACE('010-1111-2222','-') AS BLANK02 FROM DUAL;


SELECT '010 1111-2222' AS Original,
REPLACE(REPLACE('010 1111-2222','-'),' ') AS NEW
FROM  DUAL;

-- RPAD VS LPAD

SELECT 'ORACLE', 
LPAD('ORACLE',10,'#') AS LPAD01,
RPAD('ORACLE',10,'#') AS RPAD01,
LPAD('ORACLE',10) AS LPAD01,
RPAD('ORACLE',10) AS RPAD01
FROM DUAL;






