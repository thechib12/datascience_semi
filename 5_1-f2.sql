SELECT XMLELEMENT(NAME movie,
                  XMLELEMENT(NAME name, name),
                  XMLELEMENT(NAME year, year), 
                  XMLELEMENT(NAME rating, rating),
                  (SELECT XMLAGG(XMLELEMENT(NAME role, acts.role)) FROM acts WHERE acts.mid = movie.mid), 
                  (SELECT XMLAGG(XMLELEMENT(NAME director, person.name)) FROM directs, person WHERE directs.mid = movie.mid AND directs.pid = person.pid)) as result
FROM movie
