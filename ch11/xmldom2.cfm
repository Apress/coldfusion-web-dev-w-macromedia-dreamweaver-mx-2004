<cfscript>
//create object and initialize root element
    xmlEmps = XMLNew();
    xmlEmps.xmlRoot = XMLElemNew(xmlEmps, "employees");
//add first child element
    xmlEmps.xmlRoot.xmlChildren[1] = XMLElemNew(xmlEmps,"employee");
    xmlEmps.xmlRoot.xmlChildren[1].XMLAttributes.id = "1";
    xmlEmps.xmlRoot.xmlChildren[1].XMLAttributes.fname = "Simon";
    xmlEmps.xmlRoot.xmlChildren[1].XMLAttributes.lname = "Horwith";	
//add second child element
    xmlEmps.xmlRoot.xmlChildren[2] = XMLElemNew(xmlEmps,"employee");
    xmlEmps.xmlRoot.xmlChildren[2].XMLAttributes.id = "2";
    xmlEmps.xmlRoot.xmlChildren[2].XMLAttributes.fname = "Dave";
    xmlEmps.xmlRoot.xmlChildren[2].XMLAttributes.lname = "Watts";
//add third child element using slightly different syntax to reference the root
    xmlEmps.xmlRoot.xmlChildren[3] = XMLElemNew(xmlEmps,"employee");
    xmlEmps.employees.xmlChildren[3].XMLAttributes.id = "3";
    xmlEmps.employees.xmlChildren[3].XMLAttributes.fname = "Steve";
    xmlEmps.employees.xmlChildren[3].XMLAttributes.lname = "Drucker";		
</cfscript>
  <!---:: output xml object ::--->
  <cfdump var="#variables.xmlEmps#">
