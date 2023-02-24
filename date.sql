-- 날짜 관련 함수들....
SELECT SYSDATE AS NOW ,
SYSDATE-1 AS YESTERDAY,
SYSDATE+1 AS YESTERDAY
FROM DUAL;

-- ADD_MONTHS
SELECT SYSDATE AS NOW,
ADD_MONTHS(SYSDATE,3) AS 삼개월뒤
FROM DUAL;

SELECT EMPNO,ENAME,HIREDATE,
ADD_MONTHS(HIREDATE,120) AS WORK10YEAR
FROM EMP;

--MONTHS_BETWEEN
SELECT EMPNO, ENAME,HIREDATE,SYSDATE,
MONTHS_BETWEEN(HIREDATE,SYSDATE) AS MONTH01,
MONTHS_BETWEEN(SYSDATE, HIREDATE) AS MONTH02,
TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS MONTH03
FROM EMP;

--NEXT_DAY(),LAST_DAY()
SELECT SYSDATE, NEXT_DAY(SYSDATE,'일요일'),
LAST_DAY(SYSDATE)
FROM DUAL;

-- 형변환 함수  TO_CHAR(),TO_NUMBER(), TO_DATE()
SELECT TO_NUMBER('12345') FROM DUAL;

SELECT EMPNO,ENAME,EMPNO + '500' FROM EMP;

SELECT SYSDATE, TO_CHAR(SYSDATE,'YYYY-MM-DD HH:MI:SS') FROM DUAL;

SELECT SYSDATE, 
TO_CHAR(SYSDATE,'MM') AS MM ,
TO_CHAR(SYSDATE,'MON') AS MON,   --JAN
TO_CHAR(SYSDATE,'MONTH') AS MONTH, -- JANUARY
TO_CHAR(SYSDATE,'DDD') AS DD, -- 날짜를 숫자로 포맷
TO_CHAR(SYSDATE,'DY') AS DY, -- 날짜를 숫자로 포맷
TO_CHAR(SYSDATE,'DAY') AS DAY -- 날짜를 숫자로 포맷
FROM DUAL;




