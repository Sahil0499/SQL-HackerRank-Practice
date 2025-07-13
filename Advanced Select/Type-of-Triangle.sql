-- https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

select case
when A+B<=C or A+C<=B or C+B<=A then 'Not A Triangle'
when A=B and B=C then 'Equilateral'
when A=B or A=C or C=A then 'Isosceles'
else 'Scalene'
end
from triangles