<!--- bad code. --->
<cflock type="readonly" scope="session" timeout="10">
	<cfif NOT IsDefined("Session.uhOH")>
		<cflock type="exclusive" scope="session" timeout="10">
			<cfquery name="Session.getDepartments" datasource="CompanyInfo">
				SELECT *
				FROM Departmt
			</cfquery>
		</cflock>
	</cfif>
</cflock>
<!--- // bade code. --->