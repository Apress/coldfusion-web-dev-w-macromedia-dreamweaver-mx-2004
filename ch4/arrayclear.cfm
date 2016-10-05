<cfset myArray = ArrayNew(1)>
<cfset ArrayPrepend( myArray, "a" )>
<cfset ArrayPrepend( myArray, "b" )>

<cfset ArrayClear( myArray )>

<cfdump var="#myArray#">
