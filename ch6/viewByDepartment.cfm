<cfset CurrentPage=GetFileFromPath(GetTemplatePath())>
<cfparam name="PageNum_getEmployees_byDeptID" default="1">

<cfquery name="getDepartments" datasource="CompanyInfo">
SELECT * FROM Departmt ORDER BY Departmt.Dept_Name 
</cfquery>





 <form action="viewByDepartment.cfm" method="GET">
  <select name="Dept_ID">
	<cfoutput query="getDepartments">
	  <option value="#getDepartments.Dept_ID#">#getDepartments.Dept_Name#</option>
	</cfoutput> 
  </select>
  <input type="Submit" value="View">
</form>

<cfif IsDefined("URL.Dept_ID")>
	<!-- form was submitted -->
	<cfquery name="getEmployees_byDeptID" datasource="CompanyInfo">
	SELECT * FROM Employee WHERE Employee.Dept_ID = #URL.Dept_ID# ORDER BY Employee.LastName, 
	Employee.FirstName 
	</cfquery>

	<cfset MaxRows_getEmployees_byDeptID=5>
	<cfset StartRow_getEmployees_byDeptID=Min((PageNum_getEmployees_byDeptID-1)*MaxRows_getEmployees_byDeptID+1,Max(getEmployees_byDeptID.RecordCount,1))>
	<cfset EndRow_getEmployees_byDeptID=Min(StartRow_getEmployees_byDeptID+MaxRows_getEmployees_byDeptID-1,getEmployees_byDeptID.RecordCount)>
	<cfset TotalPages_getEmployees_byDeptID=Ceiling(getEmployees_byDeptID.RecordCount/MaxRows_getEmployees_byDeptID)>
  <cfset QueryString_getEmployees_byDeptID=Iif(CGI.QUERY_STRING NEQ "",DE("&"&CGI.QUERY_STRING),DE(""))>
  <cfset tempPos=ListContainsNoCase(QueryString_getEmployees_byDeptID,"PageNum_getEmployees_byDeptID=","&")>
  <cfif tempPos NEQ 0>
	<cfset QueryString_getEmployees_byDeptID=ListDeleteAt(QueryString_getEmployees_byDeptID,tempPos,"&")>
  </cfif>
  <table>
	
	<cfoutput query="getEmployees_byDeptID" startRow="#StartRow_getEmployees_byDeptID#" maxRows="#MaxRows_getEmployees_byDeptID#">
	  <tr> 
		<td>#getEmployees_byDeptID.LastName#, #getEmployees_byDeptID.FirstName#</td>
		<td>#getEmployees_byDeptID.StartDate#</td>
		<td>#getEmployees_byDeptID.Salary#</td>
		<td>#getEmployees_byDeptID.Contract#</td>
	  </tr>
	</cfoutput> 
  </table>




  <table border="0" width="50%" align="center">
	<cfoutput> 
	  <tr> 
		<td width="23%" align="center"> <cfif PageNum_getEmployees_byDeptID GT 1>
			<a href="#CurrentPage#?PageNum_getEmployees_byDeptID=1#QueryString_getEmployees_byDeptID#">First</a> 
		  </cfif> </td>
		<td width="31%" align="center"> <cfif PageNum_getEmployees_byDeptID GT 1>
			<a href="#CurrentPage#?PageNum_getEmployees_byDeptID=#Max(DecrementValue(PageNum_getEmployees_byDeptID),1)##QueryString_getEmployees_byDeptID#">Previous</a> 
		  </cfif> </td>
		<td width="23%" align="center"> <cfif PageNum_getEmployees_byDeptID LT TotalPages_getEmployees_byDeptID>
			<a href="#CurrentPage#?PageNum_getEmployees_byDeptID=#Min(IncrementValue(PageNum_getEmployees_byDeptID),TotalPages_getEmployees_byDeptID)##QueryString_getEmployees_byDeptID#">Next</a> 
		  </cfif> </td>
		<td width="23%" align="center"> <cfif PageNum_getEmployees_byDeptID LT TotalPages_getEmployees_byDeptID>
			<a href="#CurrentPage#?PageNum_getEmployees_byDeptID=#TotalPages_getEmployees_byDeptID##QueryString_getEmployees_byDeptID#">Last</a> 
		  </cfif> </td>
	  </tr>
	</cfoutput> 
  </table>
</cfif>
