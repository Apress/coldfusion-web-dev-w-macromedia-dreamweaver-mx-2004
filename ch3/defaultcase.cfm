<cfset thisMonth = 1>

<cfswitch expression="#thisMonth#">
<cfcase value="1,2,3">
It is January, February or March.
</cfcase>
<cfcase value="4,5,6">
It is April, May or June.
</cfcase>
<cfdefaultcase>
It is something else.
</cfdefaultcase>
</cfswitch>
