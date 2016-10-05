<!--- Scoped Locks. --->
<cflock scope="session" timeout="10" type="exclusive">
	<cfparam name="Session.Name" default="Barney" type="string">
</cflock>

<cflock scope="session" timeout="10" type="readonly">
	<cfoutput>#Session.Name#</cfoutput>
</cflock>
<!--- // Scoped Locks. --->


<!--- Named Locks. --->
<cflock name="getName" timeout="10" type="exclusive">
	<cfparam name="Session.Name" default="Barney" type="string">
</cflock>

<cflock name="getName" timeout="10" type="readonly">
	<cfoutput>#Session.Name#</cfoutput>
</cflock>
<!--- // Named Locks. --->