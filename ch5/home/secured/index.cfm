<cflock scope="Session" type="ReadOnly" timeout="30" throwontimeout="no">
  <cfset MM_Username=Iif(IsDefined("Session.MM_Username"),"Session.MM_Username",DE(""))>
  <cfset MM_UserAuthorization=Iif(IsDefined("Session.MM_UserAuthorization"),"Session.MM_UserAuthorization",DE(""))>
</cflock>
<cfif MM_Username EQ "">
  <cfset MM_referer=CGI.SCRIPT_NAME>
  <cfif CGI.QUERY_STRING NEQ "">
	<cfset MM_referer=MM_referer & "?" & CGI.QUERY_STRING>
  </cfif>
  <cfset MM_failureURL="../../login.cfm?accessdenied=" & URLEncodedFormat(MM_referer)>
  <cflocation url="#MM_failureURL#" addtoken="no">
</cfif>

This is a secured page.<br>
you would put all sorts of secret password protected stuff here.<br>
<a href="../../secured/logout.cfm">Click here to log out</a> 