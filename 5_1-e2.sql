SELECT XMLELEMENT(NAME movie,
                  XMLELEMENT(NAME name, name),
                   XMLELEMENT(NAME year, year), 
                   XMLELEMENT(NAME rating, rating),
                 XMLAGG(XMLELEMENT(NAME role, acts.role))) as result
FROM movie, acts
WHERE movie.mid = acts.mid
GROUP BY movie.mid