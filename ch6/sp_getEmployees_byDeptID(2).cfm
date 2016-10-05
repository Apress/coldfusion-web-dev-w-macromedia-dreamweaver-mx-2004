<cfstoredproc procedure="dbo.sp_getEmployees_byDeptID" datasource="cfbook_sql">
	<cfprocparam type="IN" dbvarname="@Dept_ID" value="#URL.Dept_ID#" cfsqltype="CF_SQL_INTEGER">
	<cfprocresult name="getEmployees" resultset="1">
	<cfprocresult name="getDepartments" resultset="2">
</cfstoredproc>
