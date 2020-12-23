
puts 'SELECT title, name
FROM movie, casting, actor
WHERE movieid=movie.id
  AND actorid=actor.id
  AND ord=1
  AND movieid IN
  (SELECT movieid FROM casting, actor
   WHERE actorid=actor.id
   AND name='Julie Andrews)"
'.downcase