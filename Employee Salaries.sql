
# We want to print the list of employee names which sorted by employee_id, and the employee need have a salary greater than $2000 per month who have been employees for less than  months.


select name from Employee
where salary > 2000 and months < 10
order by employee_id
