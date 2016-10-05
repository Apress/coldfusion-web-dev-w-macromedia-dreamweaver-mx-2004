<cfset Client.VarA = "One" >
<cfset Client.VarB = "Two" >
<cfset Client.VarC = CreateDate(2003,2,28) >

<cfloop list="#GetClientVariablesList()#" index="i">
<cfoutput>#i#: #Client[ i ]#<br></cfoutput>
</cfloop>

<!---
<cfloop list="#GetClientVariablesList()#" index="i">
	<cfset DeleteClientVariable(i) >
</cfloop>
--->

<cfdump var="#Client#">