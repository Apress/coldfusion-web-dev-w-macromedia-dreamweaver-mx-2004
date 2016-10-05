<!---:: create XML DOM ::--->
<cfxml variable="myXMLDOM">
<figs>
<employee id="1" fname="Simon" lname="Horwith">
  <active>1</active>
</employee>
<employee id="2" fname="Dave" lname="Watts">
  <active>1</active>
</employee>
<contractor id="1" fname="Charles" lname="Arehart">
  <active>1</active>
</contractor>
<contractor id="2" fname="Branden" lname="Hall">
  <active>1</active>
</contractor>
<employee id="3" fname="Steve" lname="Drucker">
  <active>1</active>
</employee>
<employee id="4" fname="Dave" lname="Gallerizzo">
  <active>0</active>
</employee>
</figs>
</cfxml>

<cffile action="read" variable="myXSL" file="#expandPath('.')#\figsXSL.xsl">

<cfset transformedXML = XMLTransform(variables.myXMLDOM, variables.myXSL)>
<cfoutput>#variables.transformedXML#</cfoutput>
