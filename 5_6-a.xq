for $master in //master
group by $master
return <master name="{$master}" nrofvoyages="{count(//voyage[leftpage/master=$master])}"> </master>
