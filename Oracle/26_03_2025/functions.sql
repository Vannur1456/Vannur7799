desc employees;

--Length function.....
select length(first_name) from employees
where employee_id = 100;

select length(employee_id) from employees
where employee_id = 100; 

select length(hire_date) from employees
where employee_id = 100; 

--Dual

select 'charlie' from dual;
desc dual;

select length('jimmy') from dual;

--UPPER

select 'Chandeep' from dual;

select UPPER('Chandeep') from dual;

select first_name, UPPER(first_name) first_name_c_upper from employees
where employee_id = 100;

--LOWER

select LOWER('vannur') from dual;

select first_name, LOWER(first_name) first_name_c_upper from employees
where employee_id = 100;

--INTIP

select 'vamsi' from dual;

select INITCAP('vamsi') from dual;

select email, INITCAP(email) from employees
where employee_id = 100;


--CONCAT

select 'jimmy', 'Vali', 'chandu' from dual;

select CONCAT('jimmy', 'Vali') from dual;


select 'jimmy'|| 'Vali'||'Vamsi'||'chandu'||'charlie'||'arun' from dual;


--TRIM.......

select 'uuuuuchandeepuuuuu' from dual;

select TRIM('u' from 'uuuuuchandeepuuuuu') from dual;

select '       chandeep    ' from dual;

select TRIM('       chandeep    ') from dual;

--LTRIM.......

select LTRIM('eeeeeeeValieeeeee', 'e') from dual;

select LTRIM('       Vali    ') from dual;


--RTRIM.......

select RTRIM('gggggvamsiggggg', 'e') from dual;

select RTRIM('       vamsi    ') from dual;


