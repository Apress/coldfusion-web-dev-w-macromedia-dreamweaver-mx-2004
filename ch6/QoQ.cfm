<cfquery name="getEmployees" datasource="CompanyInfo">
	SELECT * FROM Employee
</cfquery>


<cfquery name="getEmployees_A" dbtype="query">
	SELECT * FROM getEmployees WHERE LastName LIKE 'A%'
</cfquery>
