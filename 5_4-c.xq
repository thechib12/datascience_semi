
 (for $v in //voyage[leftpage/master="Jakob de Vries"]
order by number($v/number) ascending
return $v)[1]
