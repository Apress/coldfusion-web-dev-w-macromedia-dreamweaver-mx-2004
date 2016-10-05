<cfquery name="getEmployees" datasource="CompanyInfo">
SELECT * FROM Employee ORDER BY Employee.LastName, Employee.FirstName 
</cfquery>
 
<table border="1" cellpadding="1" cellspacing="1">
  <tr> 
	<td>Emp_ID</td>
	<td>FirstName</td>
	<td>LastName</td>
	<td>Dept_ID</td>
	<td>StartDate</td>
	<td>Salary</td>
	<td>Contract</td>
	<td>&nbsp;</td>
  </tr>
  <cfoutput query="getEmployees"> 
	<tr> 
	  <td>#getEmployees.Emp_ID#</td>
	  <td>#getEmployees.FirstName#</td>
	  <td>#getEmployees.LastName#</td>
	  <td>#getEmployees.Dept_ID#</td>
	  <td>#DateFormat(getEmployees.StartDate,'MMMM DD, YYYY')#</td>
	  <td>#DollarFormat(getEmployees.Salary)#</td>
	  <td>#getEmployees.Contract#</td>
	  <td><a href="editEmployee.cfm?Emp_ID=#getEmployees.Emp_ID#">Edit</a></td>
	</tr>
  </cfoutput> 
  <tr>
	  <td colspan="8" align="right"><a href="addEmployee.cfm">Create new employee</a></td>
  </tr>
</table>

