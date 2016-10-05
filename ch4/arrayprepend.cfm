<cfset myArray = ArrayNew(1)>
<cfset ArrayPrepend( myArray, "a" )>
<cfset ArrayPrepend( myArray, "b" )>
<cfset ArrayPrepend( myArray, "c" )>

<cfdump var="#myArray#">
