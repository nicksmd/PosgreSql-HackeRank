/* https://www.hackerrank.com/challenges/the-pads/problem

select concat(name, '(', SUBSTRING(occupation, 1, 1),')')
from OCCUPATIONS
order by name;

select concat('There are a total of ', count(name),' ', lower(occupation), 's.')
from OCCUPATIONS
group by occupation
order by count(name), occupation ;
