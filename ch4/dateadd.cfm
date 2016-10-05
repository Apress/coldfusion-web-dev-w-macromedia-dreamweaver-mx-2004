<cfset nextMonth = DateAdd("m", 1, Now() )>
<cfoutput>#DateFormat( nextMonth, "mmmm yyyy" )#</cfoutput>
