# 1）We need Query the list of all names in OCCUPATIONS ordered by alphabet.
# And followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses). 
# For example: AnActorName(A),

SELECT concat(NAME,concat("(",concat(substr(OCCUPATION,1,1),")")))  # concat: add 2 string together 
                                                                    # substr: extract substring from string
FROM OCCUPATIONS ORDER BY NAME ASC; 
                                                                    # order by: 
                                                                    
                                                                    
# 2）Query the number of ocurrences of each occupation in OCCUPATIONS, 
# Sort the occurrences in ascending order
# format:
#          There are a total of [occupation_count] [occupation]s.
# [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS
# [occupation] is the lowercase occupation name
# If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.

SELECT "There are a total of ", count(OCCUPATION), concat(lower(occupation),"s.") 
FROM OCCUPATIONS 
GROUP BY OCCUPATION 
ORDER BY count(OCCUPATION), OCCUPATION ASC

# ————————————————Count need work with Group by to caculate the quantity of each occupation
