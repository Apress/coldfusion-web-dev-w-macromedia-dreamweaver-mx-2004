<cfif Len( Trim( Form.UserName ) ) EQ 0>
  <cfset Variables.errorMessage = "Please enter your user name.">
</cfif>
