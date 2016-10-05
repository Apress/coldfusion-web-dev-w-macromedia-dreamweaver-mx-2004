<cfquery name="getDepartments" datasource="CompanyInfo" cachedwithin="#CreateTimeSpan(0,0,15,0)#">
	SELECT * FROM Departmt
</cfquery>
