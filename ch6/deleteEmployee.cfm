<cfif IsDefined("URL.Emp_ID") AND #URL.Emp_ID# NEQ "">
  <cfquery datasource="CompanyInfo">
  DELETE FROM Employee WHERE Emp_ID=#URL.Emp_ID# 
  </cfquery>
  <cflocation url="master2.cfm">
</cfif>
