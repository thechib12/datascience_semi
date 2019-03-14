import org.apache.jena.query.*;

class Nameless{
    public static void main(String[] args) {
        org.apache.log4j.Logger.getRootLogger().setLevel(org.apache.log4j.Level.OFF);
        Dataset dataset = DatasetFactory.create("royal92.nt");
        String prefixString = "PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#> \n PREFIX a: <http://www.daml.org/2001/01/gedcom/gedcom#> \n ";
        String queryString = "SELECT DISTINCT ?n ?t WHERE { ?i a:name ?n \n OPTIONAL {?i a:title ?t} \n FILTER ( regex(?n, \"Beatrix\") || regex(?n, \"Beatrice\")) \n }" ;
        String completeQuery = prefixString + queryString;
        Query query = QueryFactory.create(completeQuery);
        try {
            QueryExecution qexec = QueryExecutionFactory.create(query, dataset);
            ResultSet results = qexec.execSelect();
            while (results.hasNext()) {
                QuerySolution soln = results.next();
                System.out.println(soln);
            }
        } catch(Exception e) {
//            e.printStacktrace();
        }
    }
}