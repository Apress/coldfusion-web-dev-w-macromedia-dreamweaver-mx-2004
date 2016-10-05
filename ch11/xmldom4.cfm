<cfscript>
  thisDir = expandPath('.');
  targetXMLFile = variables.thisDir & "\mydata.xml";
</cfscript>
<cffile action="read" file="#variables.targetXMLFile#" variable="originalXMLString">
<cfset originalXMLString = replace(variables.originalXMLString,chr(13),"","All")>
  <cfset myXMLDOM = XMLParse(variables.originalXMLString)>
<cfscript>
    // add an 'active' attribute to all XML Children off the DOM root
  for (i = 1; i LTE arrayLen(variables.myXMLDOM.XMLRoot.XMLChildren); i = i + 1)
  {structInsert(variables.myXMLDOM.XMLRoot.XMLChildren[i].XMLAttributes,"inactive",1,1);}
</cfscript>
<cfdump var="#myXMLDOM#" label="My XML Packet From File">


  
