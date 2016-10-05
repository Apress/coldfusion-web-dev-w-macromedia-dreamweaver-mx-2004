<cfscript>
  thisDir = expandPath('.');
  targetXMLFile = variables.thisDir & "\mydata1.xml";
</cfscript>


<cffile action="read" file="#variables.targetXMLFile#" variable="originalXMLString">
 

<cfset originalXMLString = replace(variables.originalXMLString,chr(13),"","All")>


  <cfset myXMLDOM = XMLParse(variables.originalXMLString)>
 
<cfscript>
// find out how many employee elements there are
  numContractors = arrayLen(variables.myXMLDOM.figs.employee);
// if there are at least 3 employees, find out where the third employee is in the child elements array
  thirdEmployeePos = XMLChildPos(variables.myXMLDOM.figs,"employee",3);
  thirdEmployeeNode = variables.myXMLDOM.XMLroot.XMLChildren[variables.thirdEmployeePos];	
</cfscript>






<cfdump var="#myXMLDOM#" label="My XML Packet From File">


  
