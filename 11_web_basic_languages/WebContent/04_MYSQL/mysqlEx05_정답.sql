# 문제 1) d003부서가 아닌 매니저들의 사원번호 , 부서번호를 조회하기.

select
	emp_no,
    dept_no
from
	dept_manager
where
	dept_no <> 'd003';
	

# 문제 2) 급여가 150000이상인 사원들의 사원번호 , 급여를 조회하기.

select
	emp_no,
    salary
from
	salaries
where
	salary >= 150000;
	


# 문제 3) 급여가 100000이하인 사원들의 사원번호 , 급여를 조회하기.

select
	emp_no,
    salary
from
	salaries
where
	salary <= 100000;

    
# 문제 4) 1990년 이후부터 매니저로 근무 하고 있는 사원들의 사원번호 , 부서번호 , 매니저 시작날짜 조회하기.

select
	emp_no,
    dept_no,
    from_date
from
	dept_manager
where
	from_date >= '1990-01-01';

	
# 문제 5) 1990년 이전에 입사한 사원들의 사원번호 , 입사일 조회하기.

select
	emp_no,
    from_date
from 
	dept_emp
where
	from_date < '1990-01-01';

		
# 문제 6) 1990년 이후에 입사한 남자사원의 사원번호 , 성별 , 입사일 조회하기.

select
	emp_no,
    gender,
    hire_date
from
	employees
where
	hire_date >= '1990-01-01';
    

# 문제 7) 1990년 이후부터 60000이상의 급여를 받는 사원의 사원번호 , 급여 시작 날짜 조회하기.

select
	emp_no,
    to_date
from
	salaries
where
	salary >= 60000 and to_date >= '1990-01-01';


# 문제 8) d001부서와 d002부서 매니저의 사원번호 , 부서번호 조회하기.
	
select
		emp_no,
        dept_no
from
		dept_emp
where
		dept_no = 'd001' or dept_no = 'd002';

# 문제 9) 직함이 Staff인 사원과 Engineer인 사원의 사원번호 , 직함을 조회하기.

select
	emp_no,
    title
from
	titles
where 
	title = 'Staff' or title = 'Engineer';

# 문제 10) d003부서의 매니저만 제외한 매니저의 사원번호 , 부서번호를 조회하기.

select
	emp_no,
    dept_no
from 
	dept_manager
where
	dept_no <> 'd003';

# 문제 11) 이름에 'o' 가 포함되어 있는 사원의 사원번호 , 이름을 조회하기.

select
	emp_no,
	first_name,
    last_name
from 
	employees
where 
	first_name like '%o%';
	
# 문제 12) 이름에 'o' 가 포함되어 있고 마지막글자가 'o'가 아닌 사원의 사원번호 , 이름을 조회하기.

select
	emp_no,
	first_name,
    last_name
from 
	employees
where 
	first_name like '%o%' and first_name not like '%o';

