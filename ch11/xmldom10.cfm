<cfscript>
  thisDir = expandPath('.');
  targetXMLFile = variables.thisDir & "\mydata.xml";
</cfscript>


<cffile action="read" file="#variables.targetXMLFile#" variable="originalXMLString">
 

<cfset originalXMLString = replace(variables.originalXMLString,chr(13),"","All")>


  <cfset myXMLDOM = XMLParse(variables.originalXMLString)>
 
<cfscript>
    // use structure syntax to set the "lname" attribute of the first node to "Badhwar"
  variables.myXMLDOM.figs.employee.XMLAttributes.lname = "Badhwar";
</cfscript>





<cfdump var="#myXMLDOM#" label="My XML Packet From File">


  
