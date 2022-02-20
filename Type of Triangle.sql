   Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
    
    We need check A, B and C form which typle of triangle:
    1) check all the Not A Trigngle situation by check if there is any sum of 2 sides length smaller or equal to the third line length.
    2) Check if A,B and C could form a Equilateral
    3) Check any 2 lines are equal to form a Isosceles
    4) the else situations are belong to Scalene


select
case 
    when A + B <= C or A + C <= B or B + C <= A then 'Not A Triangle'
    when A = B and B = C then 'Equilateral'
    when A = B or B = C or A = C then 'Isosceles'
    else 'Scalene'
    end from TRIANGLES;
                    
    
