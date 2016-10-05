<cfif NOT IsDefined( "Cookie.UUID" )>
  <cfcookie name="UUID" value="#CreateUUID( )#">
</cfif>
