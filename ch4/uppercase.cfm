<cfset myName = "jen">
<cfset newName = UCase(Left( myName, 1 )) & LCase(Right(myName, Len(myName)-1))>

<cfoutput>#newName#</cfoutput>
