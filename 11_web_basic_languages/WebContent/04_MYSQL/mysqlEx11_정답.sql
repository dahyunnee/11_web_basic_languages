# 문제 1) D005 부서의 전체 사원들의 수 조회하기.

select
		dept_no,
        count(*)
from
		dept_emp
group by
		dept_no
having dept_no = 'D005';

# 문제 2) 전체 남자 사원의 수를 조회하기.

select
		gender,
        count(*)
from
		employees
group by
		gender
having 
		gender = 'M';
	
# 문제 3) 각 부서별 매니저의 수를 조회하기.

select
		dept_no,
        count(*)
from
		dept_manager
group by
		dept_no;

# 문제 4) 각 부서별 매니저의 수를 조회하기. ( 단 매니저가 3명 이상인 경우만 ) 

select
		dept_no,
        count(*)
from
		dept_manager
group by
		dept_no
having
		count(*) >= 3;

# 문제 5) 생일이 1월 1일인 사원의 수를 조회하기. ( substring함수 사용 )


select
		birth_date,
        count(*)
from
		employees
group by 
		birth_date
having
		substring(birth_date,6,5) = '01-01';