--select 문
--select 문 기본형식
--select 출력하고자 하는 속성명
--form 테이블명
--where(선택) 조건
select *
from emp;
 
--as는 생략가능하다.
select empno as 사원번호,ename as 사원이름
from emp;
--문제1. 사원들 중에 이름이 JONES인 사원의 사원번호와 급여를 출력하시오
select empno,SAL
from emp
where ename like 'JONES';

--문제2. 사원들 중에  보너스가 있는 사원의 이름을 출력하시오.
select ename
from emp
where COMM is not null;

--문제2. 사원들 중에  보너스가 없는 사원의 이름을 출력하시오.
select ename
from emp
where COMM is null;

--두가지 조건이 있다면 where 절에 and를 활용한다.둘 중 하나만 만족해도된다면 or를 사용한다.
--문제4. 사원 중에서 고용일이 81년 12월 3일이면서 급여가 950원인 사원의 이름과 직업을 출력
select ename,job
from emp
where HIREDATE like '81/12/03' and SAL = 950;

--IN, NOT IN
--문제5. IN을 활용하여 사원 중에서 급여가 1600,1250,2450,3000원 중 하나라도 속하는 직원의 번호와 이름을 출력
select EMPNO,ENAME
from emp
where SAL IN (1600,1250,2450,3000);
-- no in을 붙이면 여기 속해 있지 않은 것들이 출력
--between a and B :a부터 b까지
--문제6.급여가 2500원이상 ,3000이하인 직원의 이름과 직업을 출력
select ename,job
from emp
where SAL between 2500 and 3000;

--%,_ %:0개 이상의 여러문자를 의미/_:1개 문자 의미
--ex)_구:두번째 글자가 구이면서 2글자 인 것 
--ex) %구 끝나는 것
--문제7. 직업중에서 L이 들어간 직업모두 출력 
select job
from emp
where job like '%L%';

--문제8.사원 중에서 직업이 매니저 이면서 급여가 2000원 이상인 직원의 이름 출력
select ename
from emp
where job like 'MANAGER' and SAL >= 2000;

--order by asc/desc
--문제9. 급여가 높은 순으로 사원의 이름 출력
select ename
from emp
order by  sal desc;

--문제10.급여가 높은 순이되,급여가 같다면 이름이 사전 역순으로 출력
select ename
from emp
order by sal desc,ename desc;

--insert문 기본 형식(새로운 데이터 행을 추가)
--insert into 테이블이름(선택적으로 속성명)
--values (데이터 값)
rollback;
insert into emp
values (8000,'seokjin','singer',7839,'91/12/31',300,null,null)--null 값을 적어줌
insert into emp (empno , ename , job , sal)
values(8001,'geunchan','teacher',6000);--나머지는 null값으로 들어간다(null 값을 생략했다.)
