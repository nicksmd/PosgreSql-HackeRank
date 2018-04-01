/* https://www.hackerrank.com/challenges/what-type-of-triangle/problem


select
    case 
        when a+b <= c or b+c <= a or a+c <= b then 'Not A Triangle'
        when a = b and b = c then 'Equilateral'
        when a = b or b = c or c = a then 'Isosceles' 
        when a != b and b != c and c != a then 'Scalene'
    end
from triangles;
