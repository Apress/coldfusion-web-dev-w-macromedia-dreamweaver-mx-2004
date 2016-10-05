<cfquery name="Recordset1" datasource="CompanyInfo">
SELECT * FROM Employee WHERE Emp_ID = #URL.recordID# ORDER BY Employee.LastName, Employee.FirstName 
 
</cfquery>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
<table border="1" align="center">
  <cfoutput>
  <tr>
    <td>Emp_ID</td>
    <td>#Recordset1.Emp_ID#</td>
  </tr>
  <tr>
    <td>FirstName</td>
    <td>#Recordset1.FirstName#</td>
  </tr>
  <tr>
    <td>LastName</td>
    <td>#Recordset1.LastName#</td>
  </tr>
  <tr>
    <td>Dept_ID</td>
    <td>#Recordset1.Dept_ID#</td>
  </tr>
  <tr>
    <td>StartDate</td>
    <td>#Recordset1.StartDate#</td>
  </tr>
  <tr>
    <td>Salary</td>
    <td>#Recordset1.Salary#</td>
  </tr>
  <tr>
    <td>Contract</td>
    <td>#Recordset1.Contract#</td>
  </tr>
  </cfoutput>
</table>


</body>
</html>
