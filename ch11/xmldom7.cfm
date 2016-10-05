<cfscript>
  thisDir = expandPath('.');
  targetXMLFile = variables.thisDir & "\mydata.xml";
</cfscript>


<cffile action="read" file="#variables.targetXMLFile#" variable="originalXMLString">
 

<cfset originalXMLString = replace(variables.originalXMLString,chr(13),"","All")>


  <cfset myXMLDOM = XMLParse(variables.originalXMLString)>
 
<cfscript>
  //remove the second employee
    arrayDeleteAt(variables.myXMLDOM.XMLRoot.XMLChildren, 2);
</cfscript>



<cfdump var="#myXMLDOM#" label="My XML Packet From File">


  
