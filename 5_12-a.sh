cd ./apache-jena-3.10.0/bin
./tdbloader2 --loc ./apache-jena-3.10.0/database ../../royal92.nt
./tdbquery --loc ./apache-jena-3.10.0/database/ "$(cat ../../5_10-b.rq)" 
