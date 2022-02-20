#   We need check A, B and C form which typle of triangle:
#   1) check all the Not A Trigngle situation by check if there is any sum of 2 sides length smaller or equal to the third line length.
#   2) Check if A,B and C could form a Equilateral
#   3) Check any 2 lines are equal to form a Isosceles
#   4) the else situations are belong to Scalene


select
case 
    when A + B <= C or A + C <= B or B + C <= A then 'Not A Triangle'
    when A = B and B = C then 'Equilateral'
    when A = B or B = C or A = C then 'Isosceles'
    else 'Scalene'
    end from TRIANGLES;
                    
    
#  The CASE statement goes through conditions and returns a value when the first condition is met (like an if-then-else statement). 
#  So, once a condition is true, it will stop reading and return the result. If no conditions are true, it returns the value in the ELSE clause.
#  If there is no ELSE part and no conditions are true, it returns NULL.
