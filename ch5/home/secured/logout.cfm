<cftry>
  <cflock scope="Session" type="Exclusive" timeout="30">
	<cfset Session.MM_Username="">
	<cfset Session.MM_UserAuthorization="">
  </cflock>
  <cflocation url="../index.cfm" addtoken="no">
  <cfcatch type="Lock">
	<!--- code for handling timeout of cflock --->
  </cfcatch>
</cftry>
