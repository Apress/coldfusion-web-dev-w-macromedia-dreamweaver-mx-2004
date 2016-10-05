<cfquery name="qEmployee" datasource="CompanyInfo">
SELECT * FROM Employee ORDER BY Employee.Emp_ID, Employee.FirstName, Employee.LastName 
</cfquery>
<cfxml variable="xmlEmps">
  <employees>
    <cfoutput query="qEmployee">
  <employee id="#qEmployee.emp_ID#" fname="#xmlFormat(qEmployee.FirstName)#"      lname="#xmlFormat(qEmployee.LastName)#" />
    </cfoutput>
  </employees>
</cfxml>
<cfdump var = "#xmlEmps#">