<cfset myArray = ArrayNew(1)>
<cfset ArrayAppend(myArray, 'p')>
<cfset ArrayAppend(myArray, 'a')>
<cfset ArrayAppend(myArray, 'n')>
<cfset ArrayAppend(myArray, 't')>
<cfset ArrayAppend(myArray, 's')>
<cfset ArraySort(myArray, "textnocase", “ASC”)>

<cfloop from="1" to="#ArrayLen(myArray)#" index="i">
  <cfoutput>#myArray[i]#&nbsp;</cfoutput>
</cfloop>
