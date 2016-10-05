<cfscript>
  thisDir = expandPath('.');
  targetXMLFile = variables.thisDir & "\mydata.xml";
</cfscript>


<cffile action="read" file="#variables.targetXMLFile#" variable="originalXMLString">
 

<cfset originalXMLString = replace(variables.originalXMLString,chr(13),"","All")>


  <cfset myXMLDOM = XMLParse(variables.originalXMLString)>
 
<cfscript>
// remove 'active' attribute from all XML Children off of the DOM root
  for (i = 1; i LTE arrayLen(variables.myXMLDOM.XMLRoot.XMLChildren); i = i + 1){
  structDelete(variables.myXMLDOM.XMLRoot.XMLChildren[i].XMLAttributes,"active",0);
  }
</cfscript>



<cfdump var="#myXMLDOM#" label="My XML Packet From File">


  
