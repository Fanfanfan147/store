1. 查询出部门编号为30的所有员工
SELECT ename FROM `t_employees` WHERE deptno = 30
2. 所有销售员的姓名、编号和部门编号。
SELECT ename,empno,deptno FROM t_employees WHERE job = "销售员"
3. 找出奖金高于工资的员工。
SELECT ename FROM t_employees WHERE comm > sal
4. 找出奖金高于工资60%的员工。
SELECT ename FROM t_employees WHERE comm > 60%sal
5. 找出部门编号为10中所有经理，和部门编号为20中所有销售员的详细资料。
SELECT * FROM t_employees WHERE job = "经理" AND deptno = 10 OR job = "销售员" AND deptno = 20
6. 找出部门编号为10中所有经理，部门编号为20中所有销售员，还有即不是经理又不是销售员但其工资大或等于20000的所有员工详细资料。
SELECT * FROM t_employees WHERE job = "经理" AND deptno = 10 OR job = "销售员" AND deptno = 20 OR job !="经理" AND job != "销售员" AND sal >= 20000
7. 无奖金或奖金低于1000的员工。 
SELECT * FROM t_employees WHERE comm <= 1000 OR comm = "" OR comm IS NULL
8. 查询名字由三个字组成的员工。
SELECT * FROM t_employees WHERE ename LIKE "___"
9. 查询2000年入职的员工。
SELECT * FROM t_employees WHERE hiredate LIKE "%1981%"
10. 查询所有员工详细信息，用编号升序排序
SELECT * FROM t_employees ORDER BY empno ASC
11. 查询所有员工详细信息，用工资降序排序，如果工资相同使用入职日期升序排序   
SELECT * FROM t_employees ORDER BY sal DESC , hiredate ASC
12. 查询每个部门的平均工资
SELECT deptno,AVG(sal) FROM t_employees GROUP BY deptno	
13. 查询每个部门的雇员数量
SELECT deptno,COUNT(*) FROM t_employees GROUP BY deptno
14. 查询每种工作的最高工资、最低工资、人数
SELECT job,MAX(sal),MIN(sal),COUNT(*) FROM t_employees GROUP BY job
15.查出至少有一个员工的部门。显示部门编号、部门名称、部门位置、部门人数
SELECT COUNT(*), t_dept.* FROM t_dept,t_employees WHERE t_dept.`deptno`=t_employees.`deptno`GROUP BY deptno 
16.列出所有员工的姓名及其直接上级的姓名。
SELECT t1.ename,t2.ename FROM t_employees t1,t_employees t2 WHERE  t1.empno =  t2.MGR
17.列出受雇日期早于直接上级的所有员工的编号、姓名、部门名称。
SELECT t1.empno,t2.ename,t3.dname FROM t_employees t1,t_employees t2 ,t_dept t3 WHERE  t1.empno =  t2.MGR  AND t1.hiredate > t2.hiredate AND t1.deptno = t3.deptno
18.列出部门名称和这些部门的员工信息，同时列出那些没有员工的部门。
SELECT * FROM t_employees a RIGHT OUTER JOIN t_dept b ON a.deptno = b.deptno
19.列出最低薪金大于15000的各种工作及从事此工作的员工人数
SELECT job,COUNT(*) FROM t_employees WHERE  job OR sal > 15000
20.列出在销售部工作的员工的姓名，假定不知道销售部的部门编号。
SELECT *FROM t_employees a WHERE a.deptno = (SELECT deptno FROM t_dept WHERE dname="销售部")
21列出薪金高于公司平均薪金的所有员工信息，所在部门名称，上级领导，工资等级
SELECT * FROM t_employees  WHERE sal > (SELECT AVG(sal) FROM t_employees)
*/
SELECT e.*, d.dname, m.ename, s.grade
FROM t_deptemp e, t_dept d, t_employees m, salgrade s
WHERE e.sal>(SELECT AVG(sal) FROM emp) AND e.deptno=d.deptno AND e.mgr=m.empno AND e.sal BETWEEN s.losal AND s.hisal
22.列出与clack从事相同工作的所有员工及部门名称。
SELECT e.* ,d.dname
FROM t_employees e,t_dept d
WHERE e.deptno = d.deptno AND job =(SELECT job FROM t_employees e WHERE ename = "张飞")
23.列出薪金高于在部门30工作的所有员工的薪金的员工姓名和薪金、部门名称。
SELECT e.ename,e.sal,d.dname
FROM t_employees e ,t_dept d
WHERE e.deptno = d.deptno AND sal > ALL(SELECT sal FROM t_employees e WHERE deptno = 30)
