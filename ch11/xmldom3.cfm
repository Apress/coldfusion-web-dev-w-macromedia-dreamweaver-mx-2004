<cfscript>
  thisDir = expandPath('.');
  targetXMLFile = variables.thisDir & "\mydata.xml";
</cfscript>
<cfif not fileExists(variables.targetXMLFile)>
  <h3>Can't find target xml file</h3>
  <cfabort>
</cfif>
<cftry>
  <cffile action="read" file="#variables.targetXMLFile#" variable="originalXMLString">
  <cfcatch>
    <h3>error opening XML file!</h3>
    <cfabort>
  </cfcatch>
</cftry>
<cfset originalXMLString = replace(variables.originalXMLString,chr(13),"","All")>

<cftry>
  <cfset myXMLDOM = XMLParse(variables.originalXMLString)>
  <cfcatch>
    <h3>Error parsing XML!</h3>
    <cfabort>
  </cfcatch>
</cftry>

<cfdump var="#myXMLDOM#" label="My XML Packet From File">

<cfset newXMLString = toString(variables.myXMLDOM)>
  <cftry>
    <cffile action="write" file="#variables.targetXMLFile#" output="#variables.newXMLString#">
    <cfcatch>
      <h3>Error Writing to text file!</h3>
      <cfabort>
    </cfcatch>
</cftry>
