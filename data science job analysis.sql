select *
from `data science`;

-- highest salaries from each job category 
select 
job_category,
max(salary_in_usd) as max_salary
from `data science`
group by job_category;

-- what is the average salary for each job title
select 
round(avg(salary_in_usd),3) as avg_salary,
job_category
from `data science`
group by job_category;

-- average salary for each job title
select 
round(avg(salary_in_usd),3) as avg_salary,
job_title
from `data science`
group by job_title;

-- distribution of salaries among diffent experinec levels
select 
experience_level,
max(salary_in_usd) as max_salary,
min(salary_in_usd) as min_salary,
max(salary_in_usd)-min(salary_in_usd) as salary_range,
round(avg(salary_in_usd),3) as mean_salary,
stddev(salary_in_usd) as std_salary
from `data science`
group by experience_level;

-- disrribution of salaries accross diffrent company sizes
select 
company_size,
max(salary_in_usd) as max_salary,
min(salary_in_usd) as min_salary,
max(salary_in_usd)-min(salary_in_usd) as salary_range,
round(avg(salary_in_usd),3) as avg_salary,
stddev(salary_in_usd) as std_salary
from `data science`
group by company_size;

-- salary comparisons between different employee residencies
select 
employee_residence,
max(salary_in_usd) as max_salary,
min(salary_in_usd) as min_salary,
max(salary_in_usd)-min(salary_in_usd) as salary_range,
round(avg(salary_in_usd),3) as avg_salary,
stddev(salary_in_usd) as std_salary
from `data science`
group by employee_residence;

-- salary comaprisons between different work settings
select 
work_setting,
max(salary_in_usd) as max_salary,
min(salary_in_usd) as min_salary,
max(salary_in_usd)-min(salary_in_usd) as salary_range,
round(avg(salary_in_usd),3) as avg_salary,
stddev(salary_in_usd) as std_salary
from `data science`
group by work_setting;

-- number of employees at each experinece level
select 
experience_level,
count(*) as no_of_employees
from `data science`
group by experience_level;

-- distribution of employment types
select 
employment_type,
count(*) as no_of_employees
from `data science`
group by employment_type;

-- salary variation by employment type
select
employment_type,
max(salary_in_usd) as max_salary,
min(salary_in_usd) as min_salary,
max(salary_in_usd)-min(salary_in_usd) as salary_range,
round(avg(salary_in_usd),3) as avg_salary,
stddev(salary_in_usd) as std_salary
from `data science`
group by employment_type;

-- count of employees by residence
select 
employee_residence,
count(*) as no_of_employees
from `data science`
group by employee_residence;

-- average salary in usd by employee residence
select 
employee_residence,
round(avg(salary_in_usd),3) as avg_salary
from `data science`
group by employee_residence;

-- average salary in usd by company location and job title
select 
company_location,
round(avg(salary_in_usd),3) as avg_salary
from `data science`
group by company_location;

-- average salary for each combination of job title and experience level
select 
job_title,
experience_level,
round(avg(salary_in_usd),3) as avg_salary
from `data science`
group by job_title, experience_level;

-- top 10 highest paying job titles
select 
job_title,
round(avg(salary_in_usd),3) as avg_salary
from `data science`
group by job_title
order by avg_salary desc
limit 10;

-- most common experinece_level for each job tilte
with experience_level_count as(
select 
experience_level,
job_title,
count(*) as level_count
from `data science`
group by 
job_title,
experience_level
),
ranked_experience_level as(
select 
experience_level,
job_title,
level_count,
ROW_NUMBER() OVER (PARTITION BY job_title ORDER BY level_count DESC, experience_level) AS ranks
from experience_level_count
)
select 
job_title,
experience_level,
level_count
from ranked_experience_level
where ranks =1;

-- most common salary for each job title
with ordered_salary as(
select 
job_title,
salary_in_usd,
count(*) as frequency
from `data science`
group by 
job_title,
salary_in_usd
),
ranked_salaries as(
select 
job_title,
salary_in_usd,
frequency,
row_number() over (partition by job_title order by frequency desc, salary_in_usd) as ranks
from ordered_salary
)
select 
job_title,
salary_in_usd,
frequency
from ranked_salaries
where ranks=1;

-- employment trends over the years
select 
work_year,
employment_type,
count(*) as frequency 
from `data science`
group by 
work_year,
employment_type
order by frequency;

-- change in salaries over the years for specific job titles
select 
work_year,
job_title,
round(avg(salary_in_usd),3) as avg_salary
from `data science`
group by 
work_year,
job_title
order by 
work_year,
job_title;