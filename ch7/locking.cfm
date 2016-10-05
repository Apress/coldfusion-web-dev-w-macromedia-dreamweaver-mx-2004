<!--- bad code. --->
<cflock type="exclusive" scope="session" timeout="10">
	<cfquery name="Session.getDepartments" datasource="CompanyInfo">
	SELECT * FROM Departmt 
	</cfquery>
</cflock>

<cflock type="readonly" scope="session" timeout="10">
	<cfoutput query="Session.getDepartments">
	#Dept_Name#<br>
	</cfoutput>
</cflock>
<!--- // bad code. --->


<!--- good code. --->
<cfif NOT IsDefined("Session.getDepartments")>
	<cfquery name="getDepartments" datasource="CompanyInfo">
		SELECT * FROM Departmt 
	</cfquery>
	<cflock type="exclusive" scope="session" timeout="10">
		<cfset Session.getDepartments = getDepartments >
	</cflock>
</cfif>

<cflock type="readonly" scope="server" timeout="10">
	<cfset getDepartments = Session.getDepartments >
</cflock>

<cfoutput query="getDepartments">
#Dept_Name#<br>
</cfoutput>

<!--- // good code. --->