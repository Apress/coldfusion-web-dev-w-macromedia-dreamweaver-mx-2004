<cfscript>
  thisDir = expandPath('.');
  targetXMLFile = variables.thisDir & "\mydata.xml";
</cfscript>


<cffile action="read" file="#variables.targetXMLFile#" variable="originalXMLString">
 

<cfset originalXMLString = replace(variables.originalXMLString,chr(13),"","All")>


  <cfset myXMLDOM = XMLParse(variables.originalXMLString)>
 
<cfscript>
    // use structure syntax to set the "active" attribute of the second node to "0"
  variables.myXMLDOM.figs.employee[2].XMLAttributes.active = 0;
</cfscript>




<cfdump var="#myXMLDOM#" label="My XML Packet From File">


  
