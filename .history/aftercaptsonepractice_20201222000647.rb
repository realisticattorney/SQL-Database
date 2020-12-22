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
