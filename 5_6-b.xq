
let $counts := (for $master in //master
group by $master
return count(//voyage[leftpage/master=$master]) )

let $masters := for $master in //master
where count(//voyage[leftpage/master=$master]) = max($counts)
return $master

return distinct-values($masters)

