<cfset thisMonth = 1>

<cfif thisMonth EQ 1>
    It is January.
  <cfelseif thisMonth EQ 2>
    It is February.
  <cfelseif thisMonth EQ 3>
    It is March.
  <cfelse>
    It is some other month.
</cfif>
