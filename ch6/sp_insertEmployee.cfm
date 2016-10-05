<CFSTOREDPROC procedure="dbo.sp_insertEmployee" datasource="cfbook_sql">
	<CFPROCPARAM type="IN" dbvarname="@FirstName" value="#Form.FirstName#" cfsqltype="CF_SQL_VARCHAR">
	<CFPROCPARAM type="IN" dbvarname="@LastName" value="#Form.LastName#" cfsqltype="CF_SQL_VARCHAR">
	<CFPROCPARAM type="IN" dbvarname="@Salary" value="#Form.Salary#" cfsqltype="CF_SQL_MONEY">
	<CFPROCPARAM type="IN" dbvarname="@StartDate" value="#Form.StartDate#" cfsqltype="CF_SQL_TIMESTAMP">
	<CFPROCPARAM type="IN" dbvarname="@Dept_ID" value="#Form.Dept_ID#" cfsqltype="CF_SQL_INTEGER">
	<CFPROCPARAM type="IN" dbvarname="@Contract" value="#Form.Contract#" cfsqltype="CF_SQL_VARCHAR">
	<CFPROCRESULT name="getEmpID">
</CFSTOREDPROC>
