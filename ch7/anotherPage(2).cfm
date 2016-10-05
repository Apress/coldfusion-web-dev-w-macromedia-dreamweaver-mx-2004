<cflock scope="session" timeout="10" type="readonly">
	<cfoutput>#Session.Name#</cfoutput>
</cflock>
