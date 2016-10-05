<cfscript>
  thisDir = expandPath('.');
  targetXMLFile = variables.thisDir & "\mydata.xml";
</cfscript>


<cffile action="read" file="#variables.targetXMLFile#" variable="originalXMLString">
 

<cfset originalXMLString = replace(variables.originalXMLString,chr(13),"","All")>


  <cfset myXMLDOM = XMLParse(variables.originalXMLString)>
 
 <cfscript>
    // get array position of next XML child to add
  newNodePos = arrayLen(variables.myXMLDOM.XMLRoot.XMLChildren) + 1;
    // add new node then set it's attributes
  variables.myXMLDOM.XMLRoot.XMLChildren[variables.newNodePos] =   XMLElemNew(myXMLDOM,"employee");                          
  structInsert(variables.myXMLDOM.XMLRoot.XMLChildren[variables.newNodePos].XMLAttributes,"fname","Ashu",1);  structInsert(variables.myXMLDOM.XMLRoot.XMLChildren[variables.newNodePos].XMLAttributes,"lname","Courchesne",1);
structInsert(variables.myXMLDOM.XMLRoot.XMLChildren[variables.newNodePos].XMLAttributes,"active",1,1); 
</cfscript>


<cfdump var="#myXMLDOM#" label="My XML Packet From File">


  
