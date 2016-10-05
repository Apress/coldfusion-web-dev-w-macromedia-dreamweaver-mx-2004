<cfset myArray = ArrayNew(1)>
<cfset ArrayAppend( myArray, 7.6 )>
<cfset ArrayAppend( myArray, 7.7)>
<cfset ArrayAppend( myArray, 8.1)>

<cfoutput>Sum: #ArraySum( myArray )#</cfoutput>
