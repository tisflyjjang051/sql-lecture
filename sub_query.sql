--
SELECT * FROM EMP;

-- 이름이 JONES보다 월급 많이 받는 사람 알고 싶다.
SELECT SAL FROM EMP
WHERE ENAME = 'JONES';

SELECT * FROM EMP
WHERE SAL > 2975;


-- QUERY안에 QUERY 또 쓰기...
SELECT * FROM EMP
WHERE SAL > (SELECT SAL FROM EMP
WHERE ENAME = 'JONES');

--JONES보다 입사일이 빠른 사람...
SELECT * FROM EMP
WHERE HIREDATE < (SELECT HIREDATE FROM EMP
WHERE ENAME = 'JONES');


-- 이름이 ALLEN인 사원의 추가수당보다 더 많은 추가 수당을 받는 사람 구해 보기...
SELECT COMM FROM EMP
WHERE ENAME = 'ALLEN';

SELECT * FROM EMP 
WHERE COMM > (SELECT COMM FROM EMP
WHERE ENAME = 'ALLEN');

-- 20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 많은 급여를 받는 사원 정보 뽑아보기....

--SELECT AVG(SAL) FROM EMP;
SELECT E.EMPNO,E.ENAME, E.JOB, E.SAL, D.DEPTNO, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO 
      AND D.DEPTNO = 20
      AND E.SAL > (SELECT AVG(SAL) FROM EMP);

-- DEPTNO 20, 30 부서 정보 다 뽑아 보기...





