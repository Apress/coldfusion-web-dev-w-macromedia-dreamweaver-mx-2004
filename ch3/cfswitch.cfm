<cfset thisMonth = 1>

<cfswitch expression="#thisMonth#">
  <cfcase value="1">
    It is January.
  </cfcase>
  <cfcase value="2">
    It is February.
  </cfcase>
  <cfcase value="3">
    It is March.
  </cfcase>
  <cfdefaultcase>
    It is some other month.
  </cfdefaultcase>
</cfswitch>
