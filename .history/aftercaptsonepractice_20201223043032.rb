/** Grocery list: 
Bananas (4)
Peanut Butter (1)
Dark Chocolate Bars (2)
**/

CREATE TABLE groceries ( integer, name TEXT, quantity INTEGER );

INSERT INTO groceries VALUES (2, "Bananas", 4);
INSERT INTO groceries VALUES (3, "Peanut Butter", 1);
INSERT INTO groceries VALUES (4, "Dark chocolate bars", 2);
SELECT * FROM groceries;



CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 4, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

SELECT * FROM groceries WHERE aisle > 5 ORDER BY aisle;

# id	name	quantity	aisle
# 1	Bananas	4	7
# 4	Ice cream	1	12




CREATE TABLE movies (id INTEGER PRIMARY KEY, name TEXT, release_year INTEGER);
INSERT INTO movies VALUES (1, "Avatar", 2009);
INSERT INTO movies VALUES (2, "Titanic", 1997);
INSERT INTO movies VALUES (3, "Star Wars: Episode IV - A New Hope", 1977);
INSERT INTO movies VALUES (4, "Shrek 2", 2004);
INSERT INTO movies VALUES (5, "The Lion King", 1994);
INSERT INTO movies VALUES (6, "Disney's Up", 2009);
 
SELECT * FROM movies;
SELECT * FROM movies WHERE release_year > 2000 ORDER BY release_year
# id	name	release_year
# 4	Shrek 2	2004
# 1	Avatar	2009
# 6	Disney's Up	2009


CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 4, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

SELECT SUM(quantity) FROM groceries;
# SUM(quantity)
# 15

CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 56, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

SELECT MAX(quantity) FROM groceries;
# MAX(quantity)
# 56

CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 56, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

SELECT SUM(quantity) FROM groceries GROUP BY aisle;
# SUM(quantity)
# 9
# 1
# 56
# 1

CREATE TABLE groceries (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 56, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 6, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 1, 4);

SELECT aisle, SUM(quantity) FROM groceries GROUP BY aisle; # SQL first GROUP BY aisle; then  SUM(quantity) in each group, then SELECT aisle (selects the tfi)
# aisle	SUM(quantity)
# 2	   9
# 4	   1
# 7   	56
# 12  	1


1
SELECT population FROM world
  WHERE name = 'Germany'
##################



2
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway','Denmark');

The word IN allows us to check if an item is in a list. 
###########



3
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND  250000 

  BETWEEN allows range checking (range specified is inclusive of boundary values)



  WHERE IS A CONDITONAL , SELECT IS A FILTER, FROM IS THE WHOLE HASH, GROUP, ARRAY, Object







  #############
  ###########
  ##############
  SELECT from WORLD Tutorial


  1
  SELECT name, continent, population FROM world

  2
  SELECT name
  FROM world
 WHERE population > 200000000

3
SELECT name, gdp / population FROM world WHERE population > 200000000

4
SELECT name, population / 1000000 FROM world WHERE continent = 'South America'

5
SELECT name, population FROM world WHERE name IN ( 'France', 'Germany','Italy')


6
SELECT name FROM world WHERE name LIKE '%United%'

7
SELECT  name, population, area FROM world WHERE area > 3000000 or population > 250000000

8

SELECT name, population, area FROM world WHERE area > 3000000 xor population > 250000000


9
SELECT name, round(population / 1000000, 2), round(gdp / 1000000000, 2) from world where continent = 'South America'




10
SELECT name, round(gdp / population, -3) from world where gdp >= 1000000000000

11
select name, capital from world where length(name) = length(capital)



12

select name, capital from world where left(name, 1) = left(capital, 1) and name = capital



13
SELECT name
   FROM world
WHERE name LIKE '%o%a%i%u%e'
AND name NOT LIKE '% %'



#####
####

select from nobel

1
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950


 2
 SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'


3
select yr, subject from nobel where winner = 'Albert Einstein'


4
select winner from nobel where yr >= 2000 and subject = 'Peace'


5
select yr, subject, winner from nobel where subject = 'Literature'  and yr  between 1980 and 1989


6
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
'Barack Obama')


7
select winner from nobel where left(winner, 4) like '%John%'


8
select yr, subject, winner from nobel where subject = 'Physics' and yr = 1980 or subject = 'Chemistry' and yr = 1984


9
select yr, subject, winner from nobel where yr = 1980 and subject != 'Chemistry' and subject != 'Medicine' 

10
select yr, subject, winner from nobel where subject = 'Medicine' and yr < 1910 or subject = 'Literature' and yr >= 2004


11
select * from nobel where winner = 'Peter Grünberg'


12
select * from nobel where winner = 'Eugene O\'Neill'


13
select winner, yr, subject from nobel where left(winner, 3) = 'Sir' 


14
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN('Physics','Chemistry'), subject, winner



##########

#########


select within select


1
      SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name = 'Russia')

2
      SELECT name FROM world
  WHERE gdp / population >
     (SELECT gdp / population FROM world
      WHERE name = 'United Kingdom') and continent = 'Europe'

3
      select name, continent from world where continent = (select continent from world where name = 'Argentina') or continent = (select continent from world where name = 'Australia') order by name


 4     select name, population from world where population > (select population from world where name = 'Canada') and population < (select population from world where name = 'Poland')


  5    select name, concat(round((population / (select population from world where name = 'Germany') * 100),0),'%') from world where continent = 'Europe' 

  
  
  
  
  
  6

  SELECT name
    FROM world
   WHERE gdp > ALL(SELECT gdp
                             FROM world
                            WHERE continent = 'Europe' and gdp > 0)
  
  7
  SELECT continent, name, area FROM world x
    WHERE area >= ALL
      (SELECT area FROM world y
          WHERE y.continent=x.continent
            AND area>0)
  
  8
  SELECT continent, name FROM world x
    WHERE name <= ALL
      (SELECT name FROM world y
          WHERE x.continent=y.continent)
  
  
          9          
          SELECT name,continent, population FROM world x
          WHERE population <= ALL
            (SELECT name FROM world y
                WHERE x.continent=y.continent and
           population >= 25000000)
   

                  
          10
          
          SELECT name, continent FROM world x
            WHERE population / 3  > ALL
             (SELECT population FROM world y
                  WHERE x.continent=y.continent and population > 0 and y.name != x.name)
          
          






SUM and COUNT
1
SELECT SUM(population)
FROM world

2
select continent from world x where name < all (select name from world y where y.continent = x.continent and y.name != x.name)

3
select sum( gdp) from world where continent = 'Africa'

4
select count(name) from world where area >= 1000000

5
select sum (population) from world where name in  ('Estonia', 'Latvia', 'Lithuania')

     
                  
6
SELECT continent, count(name)
  FROM world
 GROUP BY continent


 7
 SELECT continent, count(name)
  FROM world
where population >= 10000000
 GROUP BY continent


 8
 SELECT continent
  FROM world
 GROUP BY continent
having sum(population) >= 100000000





the join operator
1
SELECT matchid, player FROM goal 
  WHERE teamid= 'GER'


2
  SELECT id,stadium,team1,team2
  FROM game where id = 1012
  
  3
  SELECT  player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid and teamid = 'GER') where team1 = 'GER' or team2 = 'GER'

4
  SELECT   team1, team2, player
  FROM game JOIN goal ON (id=matchid) where player LIKE 'Mario%'

5
  SELECT player, teamid, coach, gtime
  FROM goal join eteam on teamid = id
 WHERE gtime<=10

 6

 SELECT mdate, teamname
  FROM game join eteam on team1 = eteam.id
 WHERE coach = 'Fernando Santos'


 7

 select player from game join goal on id = matchid where stadium = 'National Stadium, Warsaw'

  8 
  SELECT DISTINCT player
  FROM game JOIN goal ON matchid = id 
    WHERE ((team1='GER' or team2='GER') and teamid != 'GER') 

9
SELECT teamname, count(player)
FROM eteam JOIN goal ON id=teamid
group BY teamname

10
 select stadium, count(teamid) from game join goal on id = matchid group by stadium


 11 
 SELECT matchid,mdate, count(teamid)
 FROM game JOIN goal ON matchid = id 
WHERE (team1 = 'POL' OR team2 = 'POL') group by matchid, mdate

12
SELECT matchid,mdate, count(teamid)
  FROM game JOIN goal ON matchid = id 
 WHERE ( teamid = 'GER') group by matchid, mdate

 13

 SELECT mdate,
  team1,
  SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1,
  team2,
  SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2
  FROM game LEFT JOIN goal ON matchid = id 
GROUP BY mdate,matchid,team1,team2


#####

more join 

1SELECT id, title
FROM movie
WHERE yr=1962





2
select yr from movie where title = 'Citizen Kane'

3
select id, title, yr from movie where title like ('%Star Trek%') order by yr


4
select id from actor where name =  'Glenn Close'


5
select id from movie where title =  'Casablanca'


6
select name from casting, actor
where movieid=(
select id from movie 
where title='Casablanca') and actorid=actor.id


7

select name from casting, actor
where movieid=(
select id from movie 
where title='Alien') and actorid=actor.id




8
select title from movie join casting on id = movieid where actorid = any (select id from actor where name = 'Harrison Ford')


9
select title from movie join casting on id = movieid where actorid = any (select id from actor where name = 'Harrison Ford' and ord != 1)


10 select title, name from movie, casting, actor where yr=1962 and movieid=movie.id and actor.id = actorid and ord =1

11
SELECT yr,COUNT(title) FROM
  movie JOIN casting ON movie.id=movieid
        JOIN actor   ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2




12

select title, name from movie, casting, actor where movieid=movie.id and actorid=actor.id and ord=1
  and movieid in
  (select movieid from casting, actor
   where actorid=actor.id
   and name='Julie Andrews')



13
select distinct name from actor, casting, movie where movieid=movie.id and actorid=actor.id and ord=1   group by name
having count(actorid)>=15  

14
select title, count(actorid) from actor, casting, movie where movieid=movie.id and actorid=actor.id and yr = 1978   group by title desc order by count(actorid) desc


15





#######

#######

#
#####




null 

1
SELECT name FROM teacher
  WHERE dept IS NULL

2
SELECT teacher.name, dept.name
 FROM teacher INNER JOIN dept
           ON (teacher.dept=dept.id)


           3
           SELECT DISTINCT teacher.name, dept.name
            FROM teacher left JOIN dept ON dept = dept.id 
           
           
           4
           SELECT DISTINCT teacher.name, dept.name
            FROM teacher right JOIN dept ON dept = dept.id 
           
           
            5
           
           SELECT  name mobile
                 ,COALESCE(mobile, '07986 444 2266')
             FROM teacher
           
           
           
             6
           
             SELECT  teacher.name
                 ,COALESCE(dept.name, 'None')
             FROM teacher left join dept on teacher.dept = dept.id 
           
           
             7
             select count(name), count (mobile) from teacher
             
             
             8
             select dept.name, count(teacher.name) from teacher right join dept on teacher.dept = dept.id group by dept.name
             
             
             9
             SELECT name
      ,CASE WHEN dept = 1
            THEN 'Sci'
            WHEN dept = 2
            THEN 'Sci'
            ELSE 'Art'
       END
  FROM teacher


  10

  SELECT name
      ,CASE WHEN dept = 1 or dept = 2
            THEN 'Sci'
            WHEN dept = 3
            THEN 'Art'
            ELSE 'None'
       END
  FROM teacher



  #######
#####
####

self join 

1
select count(id) from stops


2
select id from stops where name = 'Craiglockhart'

3
select  id, name from stops join route on id = stop  and company = 'LRT'  and num = '4'


4
SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
having count(stop) = 2


5

SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53 and b.stop=149

6

SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and stopb.name ='London Road' 


7

SELECT distinct a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Haymarket' and stopb.name ='Leith' 

8

SELECT distinct a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' and stopb.name ='Tollcross' 

9

SELECT stopb.name, a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' 





SELECT distinct a.num, a.company,  stopb.name, b.num, b.company
FROM route a  JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' or  stopb.name='Lochend'

SELECT a.num, a.company, stopb.name, d.num, d.company
FROM route a  JOIN route b ON
  (a.company=b.company AND a.num=b.num)
   JOIN route c ON (b.stop = c.stop)
   JOIN route d ON (d.company = c.company AND c.num = d.num)
   JOIN stops stopa ON (a.stop=stopa.id)
   JOIN stops stopb ON (b.stop=stopb.id)
     
             JOIN stops stopc ON c.stop = stopc.id
             JOIN stops stopd ON d.stop = stopd.id
WHERE stopa.name = 'Craiglockhart' AND stopd.name = 'Lochend'