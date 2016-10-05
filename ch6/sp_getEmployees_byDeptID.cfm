<CFSTOREDPROC procedure="dbo.sp_getEmployees_byDeptID" datasource="cfbook_sql">
<CFPROCPARAM type="IN" dbvarname="@Dept_ID" value="#URL.Dept_ID#" cfsqltype="CF_SQL_INTEGER">
<CFPROCRESULT name="getEmployees_byDeptID">
</CFSTOREDPROC>
