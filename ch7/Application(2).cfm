<cfapplication name="cfbook" sessionmanagement="yes">

<cfif IsDefined("Cookie.CFID") AND IsDefined("Cookie.CFTOKEN")>
	<cfcookie name="CFID" value="#Cookie.CFID#">
	<cfcookie name="CFTOKEN" value="#Cookie.CFTOKEN#">
</cfif>
