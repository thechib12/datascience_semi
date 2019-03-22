doc("voc.xml")/child::voyage[child::number = "4144"]/child::*[position() = 4]

doc("voc.xml")/child::voyage[child::number = "4144"]//child::*/descendant-or-self::*[position() = 4]

doc("voc.xml")/child::voyage[child::number = "4144"]/descendant::*[position() = 4]
