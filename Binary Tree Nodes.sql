/* https://www.hackerrank.com/challenges/binary-search-tree-1/problem

select N, 
       case
            when P is null then 'Root'
            when (select count(*) from BST as tree2 where tree1.N = tree2.P) = 0 then 'Leaf'
            else 'Inner'
       end
from BST as tree1
order by N
