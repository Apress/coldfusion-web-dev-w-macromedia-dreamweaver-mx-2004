<cfloop from="1" to="#DaysInMonth(Now())#" index="thisDay">
  <cfset tempDate = CreateDate( Year(Now()), Month(Now()), thisDay)>
  <cfoutput>#thisDay#: #DateCompare( tempDate, Now(), "d")#<br></cfoutput>
</cfloop>
