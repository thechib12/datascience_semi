SELECT name, year, rating, COUNT(acts.role) as nr_of_roles
FROM movie, acts
WHERE movie.mid = acts.mid
GROUP BY movie.mid
