module namespace gsupport = 'gsupport';
 (:function book2:)
declare
  %rest:path("/gsupport/lifep")
  %rest:GET
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
  function gsupport:support()
    {
      
       let $book2 := doc("./xml/lifepay.xml")
       let $title := $book2/support/title
       let $style := doc("./xsl/support.xsl")      
       
       return xslt:transform($book2, $style, map {"title":$title })
    };
    
declare
  %rest:path("/gsupport/{$title}/{$num}")
  %rest:GET
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
  function gsupport:supportaa($title as xs:string, $num as xs:int)
    {
      let $support := doc(concat('./xml/',$title,'.xml'))      
      let $style := doc("./xsl/support_item.xsl")      
      
      return xslt:transform($support, $style, map {"title":$title, "num":$num })
      (:return $support/support/quest[$num]/following-sibling::answer[1]:)

      
    };        

 (:function book2:)
declare
  %rest:path("/gsupport/housingp")
  %rest:GET
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
  function gsupport:support2()
    {
       let $book2 := doc("./xml/housingpay.xml")
       let $title := $book2/support/title
       let $style := doc("./xsl/support.xsl")      
       
       return xslt:transform($book2, $style, map {"title":$title })
    };    
    
 (:function book2:)
declare
  %rest:path("/gsupport/medp")
  %rest:GET
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
  function gsupport:support3()
    {
       let $book2 := doc("./xml/medpay.xml")
       let $title := $book2/support/title
       let $style := doc("./xsl/support.xsl")      
       
       return xslt:transform($book2, $style, map {"title":$title })
    };   
    
 (:function book2:)
declare
  %rest:path("/gsupport/edup")
  %rest:GET
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
  function gsupport:support4()
    {
       let $book2 := doc("./xml/edupay.xml")
       let $title := $book2/support/title
       let $style := doc("./xsl/support.xsl")      
       
       return xslt:transform($book2, $style, map {"title":$title })
    };             


 (:function book2:)
declare
  %rest:path("/gsupport/emergencyp")
  %rest:GET
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
  function gsupport:support5()
    {
       let $book2 := doc("./xml/emergencypay.xml")
       let $title := $book2/support/title
       let $style := doc("./xsl/support.xsl")      
       
       return xslt:transform($book2, $style, map {"title":$title })
    };
    
 (:function book2:)
declare
  %rest:path("/gsupport/deliveryp")
  %rest:GET
  %output:method("xhtml")
  %output:omit-xml-declaration("no")
  %output:doctype-public("-//W3C//DTD XHTML 1.0 Transitional//EN")
  %output:doctype-system("http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd")
  function gsupport:support6()
    {
       let $book2 := doc("./xml/deliverypay.xml")
       let $title := $book2/support/title
       let $style := doc("./xsl/support.xsl")      
       
       return xslt:transform($book2, $style, map {"title":$title })
    };             
                 
