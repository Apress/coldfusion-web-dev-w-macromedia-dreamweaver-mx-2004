<cfparam name="Form.Name" type="string">

<cflock timeout="15" type="exclusive" scope="session">
	<cfset Session.Name = Form.Name >
</cflock>

<cflock timeout="10" type="readonly" scope="session">
	<cfoutput>#Session.Name#</cfoutput>
</cflock>
