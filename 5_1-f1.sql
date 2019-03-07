SELECT name, year, rating,
	(SELECT COUNT(acts.pid) FROM acts WHERE acts.mid = movie.mid) as nr_of_roles,
    (SELECT COUNT(directs.pid) FROM directs WHERE directs.mid = movie.mid) as nr_of_directors
FROM movie;

