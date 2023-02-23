SELECT * FROM EMP;
-- Create (INSERT)  Read (SELECT)  Update (UPDATE)  Delete (DELETE);
-- DESC는 테이블 구조 보기
DESC EMP;

-- 필요한 열만 뽑아서 보기
SELECT EMPNO, ENAME, JOB, MGR FROM EMP;

-- DISTINCT를 붙이면 중복 제거하고 보여준다.
SELECT  DISTINCT DEPTNO FROM EMP;

-- ALL 를 붙이면 중복없이 다 보여주기.  
SELECT ALL DEPTNO FROM EMP; 

SELECT DEPTNO FROM EMP;

SELECT * FROM EMP;

-- 연봉 구해보기
SELECT ENAME AS 이름, SAL AS 월급, SAL*12 AS 연봉 FROM EMP;

-- 오름 차순/내림차순
SELECT * FROM EMP ORDER BY DEPTNO ASC, SAL DESC;

-- 하나만 조회
SELECT * FROM EMP WHERE EMPNO = 7566;

-- DEPTNO 30
SELECT * FROM EMP
WHERE DEPTNO = 30 AND JOB = 'SALESMAN';

SELECT * FROM EMP
WHERE DEPTNO = 20 OR JOB = 'SALESMAN';

-- SAL 3000 
SELECT * FROM EMP
WHERE SAL  = 3000;

--SAL 3000 아닌 사람 뽑아보기...
SELECT * FROM EMP
WHERE SAL  != 3000;

SELECT * FROM EMP
WHERE SAL  <> 3000;

SELECT * FROM EMP
WHERE SAL  ^= 3000;

--  JOB
SELECT * FROM EMP 
WHERE JOB = 'MANAGER' OR JOB = 'CLERK' OR JOB = 'SALESMAN';

-- IN 구문으로 바꿔 보기...
SELECT * FROM EMP 
WHERE JOB IN ('MANAGER','CLERK','SALESMAN');

-- IN 구문으로 바꿔 보기...
SELECT * FROM EMP 
WHERE JOB NOT IN ('MANAGER','CLERK','SALESMAN');

-- 부서 번호가 10, 20인 사람 뽑아보기...
SELECT * FROM EMP 
WHERE DEPTNO = 20 OR DEPTNO = 30;

-- 부서 번호가 10, 20인 사람 in구문으로 뽑아보기...
SELECT * FROM EMP
WHERE DEPTNO IN (20,30);

-- SAL 2000이상 3000이하 뽑기...
SELECT * FROM EMP
WHERE SAL  >= 2000 AND SAL <=3000;

-- SAL 2000이상 3000이하 BETWEEN으로 뽑기...
SELECT * FROM EMP
WHERE SAL NOT BETWEEN 2000 AND 3000;


--EMP NO 7000이상 7600이하 뽑기...
SELECT * FROM EMP
WHERE EMPNO BETWEEN 7000 AND 7600;


--이름이 ABC로 시작하는 사람 뽑기...
SELECT * FROM EMP
WHERE ENAME BETWEEN 'A' AND 'D';

-- LIKE  AM
SELECT * FROM EMP
WHERE ENAME LIKE '%AM%';

-- M I 있는 사람 뽑아보기
SELECT * FROM EMP
WHERE ENAME LIKE '%M%I%';

-- ER로 끝나는 사람 뽑아보기
SELECT * FROM EMP
WHERE ENAME LIKE '%ER';


--사원이름이 두번째 글자가 L 인 사람 뽑기
SELECT * FROM EMP
WHERE ENAME LIKE '_L%';

--사원이름이 세번째 글자가 A 인 사람 뽑기
SELECT * FROM EMP
WHERE ENAME LIKE '__A%';

--  사원이름이 5글자인 사람 뽑기
SELECT * FROM EMP
WHERE ENAME LIKE '_____';


-- NULL 체크하기...  NULL = 초 체크 안됨...
SELECT * FROM EMP
WHERE COMM IS NOT NULL;

-- 잊기전에 한번 더 문제 풀이 1~5
---------------1번-------------------
SELECT * FROM EMP
WHERE ENAME LIKE '%S';

---------------2번-------------------
SELECT EMPNO,ENAME,JOB, SAL, DEPTNO FROM EMP
WHERE DEPTNO = 30 AND JOB = 'SALESMAN';

---------------3번-------------------
SELECT EMPNO,ENAME,JOB,SAL,DEPTNO FROM EMP
WHERE (DEPTNO = 20 OR DEPTNO = 30) AND SAL > 2000;

SELECT EMPNO,ENAME,JOB,SAL,DEPTNO FROM EMP
WHERE DEPTNO IN(20,30) AND SAL > 2000;

---------------4번-------------------
SELECT * FROM EMP
WHERE SAL < 2000 OR SAL > 3000;


---------------5번-------------------
SELECT ENAME,EMPNO,SAL,DEPTNO FROM EMP
WHERE ENAME  LIKE '%E%'
AND DEPTNO = 30
AND SAL NOT BETWEEN 1000 AND 2000;

---------------6번-------------------
SELECT * FROM EMP
WHERE COMM IS NULL
AND MGR IS NOT NULL 
AND JOB IN('MANAGER','CLERK')
AND ENAME NOT LIKE '_L%';





















