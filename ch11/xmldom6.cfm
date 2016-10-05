<cfscript>
  thisDir = expandPath('.');
  targetXMLFile = variables.thisDir & "\mydata.xml";
</cfscript>


<cffile action="read" file="#variables.targetXMLFile#" variable="originalXMLString">
 

<cfset originalXMLString = replace(variables.originalXMLString,chr(13),"","All")>


  <cfset myXMLDOM = XMLParse(variables.originalXMLString)>
 
<cfscript>
  //set the first employee's last name to 'Badhwar'
    variables.myXMLDOM.XMLRoot.XMLChildren[1].XMLAttributes.lname = "Badhwar";
</cfscript>



<cfdump var="#myXMLDOM#" label="My XML Packet From File">


  
