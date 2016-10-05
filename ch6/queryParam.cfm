<cfparam name="URL.Dept_ID" default="1">

<cfquery name="getDepartments" datasource="cfbook_sql">
	SELECT *
	FROM Departmt
	WHERE Dept_ID = <cfqueryparam value="#URL.Dept_ID#" cfsqltype="cf_sql_integer">
</cfquery>


<!---
<cfparam name="URL.Dept_ID" default="1">

<cfquery name="getDepartments" datasource="cfbook_sql">
	SELECT *
	FROM Departmt
	WHERE Dept_ID = #URL.Dept_ID#
</cfquery>
--->