<cfscript>
  thisDir = expandPath('.');
  targetXMLFile = variables.thisDir & "\mydata2.xml";
</cfscript>


<cffile action="read" file="#variables.targetXMLFile#" variable="originalXMLString">
 

<cfset originalXMLString = replace(variables.originalXMLString,chr(13),"","All")>


  <cfset myXMLDOM = XMLParse(variables.originalXMLString)>
 
<cfscript>
  //get all employees that have an fname of "Simon" OR that have a nested "<active>0</active>" child
  aSimonOrInactive = XMLSearch(myXMLDOM,"//employee[@fname='Simon' or active=0]");
</cfscript> 







<cfdump var="#myXMLDOM#" label="My XML Packet From File">


  
