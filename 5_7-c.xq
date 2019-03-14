(: declare option output:method 'text';

let $text := <json type="array"> {for $i in (/)
return <_ type="object"> {((//_/text)[$i]) ((//_/user/name)[$i]) ((//_/created__at)[$i])} </_> } </json>

let $json := json:serialize($text)

return $text

:)
(: serialize result as plain text :)


(: ((//_/user/name)[$i]) ((//_/created__at)[$i]) :)


(:

let $objects := for $object in (//_) 


let $text := <json type="array"> {
for $a in (//_/text)
for $b in (//_/user/name)
for $c in (//_/created__at)
return <_ type="object"> $a </_> } </json>

return $text  :)

let $array := <json type="array"> {
for $object in (//_)
let $text := $object/text
let $username := $object/user/name
let $date := $object/created__at return <_ type="object"> {($text, $username, $date)} </_> } </json>

let $json := json:serialize($array)
return $json


(:
let $array := <json type="array"> { return <json type="object"> {($text, $username, $date)} }  :)
(:return <json type="object"> {($text, $username, $date)} </json> :)