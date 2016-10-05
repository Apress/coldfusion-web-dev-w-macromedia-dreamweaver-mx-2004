<cfif NOT IsDefined("Application.getDepartments")>
	<cfquery name="getDepartments" datasource="CompanyInfo">
		SELECT *
		FROM Departmt
		ORDER BY Dept_Name ASC
	</cfquery>
	<cflock type="exclusive" name="companyInfo_departmt" timeout="15">
		<cfset Application.getDepartments = getDepartments>
	</cflock>
</cfif>

<cflock type="readonly" name="companyInfo_departmt" timeout="15">
	<cfset Request.getDepartments = Application.getDepartments>
</cflock>

<cfform action="index.cfm" method="post">
<cfselect name="Dept_ID" query="Request.getDepartments" value="Dept_ID" display="Dept_Name"></cfselect>
<input type="submit" value="View Employees">
</cfform>
