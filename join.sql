-- join --
-- table 두개이상을 엮어서 쓰기....

SELECT * FROM EMP;
SELECT * FROM DEPT;

SELECT * FROM EMP,DEPT
ORDER BY EMPNO;

SELECT * FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
ORDER BY EMPNO;

--  오라클에서만 쓸 수 있다.    INNER JOIN
SELECT E.EMPNO,E.ENAME,E.MGR,E.HIREDATE,E.SAL,D.DEPTNO,D.DNAME,D.LOC 
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO AND E.SAL >= 3000
ORDER BY D.DEPTNO, E.EMPNO;

-- 등가 조인

-- SALGRADE  비등가 조인
SELECT * 
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;

-- SELF JOIN
SELECT 
E1.EMPNO,E1.ENAME,E1.MGR,
E2.EMPNO AS MANAGER_EMPNO,
E2.ENAME AS MANAGER_ENAME
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO(+);  -- 조건을 만족하지 않더라도 일단 표시는 해라... NULL이라도 뿌려라








