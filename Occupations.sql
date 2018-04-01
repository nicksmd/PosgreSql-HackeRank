/* https://www.hackerrank.com/challenges/occupations/problem
/* using: https://www.postgresql.org/docs/9.1/static/tutorial-window.html


CREATE TABLE Occupations (
     NAME text,
     Occupation text
    );
    
INSERT INTO Occupations
VALUES
        ('Samantha','Doctor'),
        ('Julia','Actor'),
        ('Maria','Actor'),
        ('Meera','Singer'),
        ('Ashley','Professor'),
        ('Ketty','Professor'),
        ('Christeen','Professor'),
        ('Jane','Actor'),
        ('Jenny','Doctor'),
        ('Priya','Singer');

select * from occupations;

select max(Doctor), max(Professor), max(Singer), max(Actor)  
from
	(select 
		case when occupation = 'Doctor' then name end as Doctor,
		case when occupation = 'Professor' then name end as Professor,
		case when occupation = 'Singer' then name end as Singer,
		case when occupation = 'Actor' then name end as Actor,
		rank() over (partition by Occupation order by name) as RowNum
	from Occupations) x
group by x.RowNum
