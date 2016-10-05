<cfset CurrentPage=GetFileFromPath(GetTemplatePath())>
<cfparam name="PageNum_getEmployees" default="1">
<cfquery name="getEmployees" datasource="CompanyInfo">
SELECT Employee.Emp_ID, Employee.FirstName, Employee.LastName, Departmt.Dept_Name, 
Departmt.Location FROM Employee, Departmt WHERE Departmt.Dept_ID = Employee.Dept_ID 
ORDER BY Employee.LastName, Employee.FirstName 
</cfquery>
<cfset MaxRows_getEmployees=10>
<cfset StartRow_getEmployees=Min((PageNum_getEmployees-1)*MaxRows_getEmployees+1,Max(getEmployees.RecordCount,1))>
<cfset EndRow_getEmployees=Min(StartRow_getEmployees+MaxRows_getEmployees-1,getEmployees.RecordCount)>
<cfset TotalPages_getEmployees=Ceiling(getEmployees.RecordCount/MaxRows_getEmployees)>
<cfset QueryString_getEmployees=Iif(CGI.QUERY_STRING NEQ "",DE("&"&CGI.QUERY_STRING),DE(""))>
<cfset tempPos=ListContainsNoCase(QueryString_getEmployees,"PageNum_getEmployees=","&")>
<cfif tempPos NEQ 0>
  <cfset QueryString_getEmployees=ListDeleteAt(QueryString_getEmployees,tempPos,"&")>
</cfif>
 
<table>
  
  <cfoutput query="getEmployees" startRow="#StartRow_getEmployees#" maxRows="#MaxRows_getEmployees#">
	<tr bgcolor="<cfif getEmployees.CurrentRow MOD 2 EQ 0>##EEEEEE<cfelse>##FFFFFF</cfif>">
	  <td>#getEmployees.LastName#, #getEmployees.FirstName#</td>
	  <td>#getEmployees.Dept_Name#</td>
	  <td>#getEmployees.Location#</td>
	  <td><a href="deleteEmployee.cfm?Emp_ID=#getEmployees.Emp_ID#">Delete</a></td>
	</tr>
  </cfoutput> 
</table>


<table border="0" width="50%" align="center">
  
  <cfoutput> 
	<tr> 
	  <td width="23%" align="center"> <cfif PageNum_getEmployees GT 1>
		  <a href="#CurrentPage#?PageNum_getEmployees=1#QueryString_getEmployees#">First</a> 
		</cfif> </td>
	  <td width="31%" align="center"> <cfif PageNum_getEmployees GT 1>
		  <a href="#CurrentPage#?PageNum_getEmployees=#Max(DecrementValue(PageNum_getEmployees),1)##QueryString_getEmployees#">Previous</a> 
		</cfif> </td>
	  <td width="23%" align="center"> <cfif PageNum_getEmployees LT TotalPages_getEmployees>
		  <a href="#CurrentPage#?PageNum_getEmployees=#Min(IncrementValue(PageNum_getEmployees),TotalPages_getEmployees)##QueryString_getEmployees#">Next</a> 
		</cfif> </td>
	  <td width="23%" align="center"> <cfif PageNum_getEmployees LT TotalPages_getEmployees>
		  <a href="#CurrentPage#?PageNum_getEmployees=#TotalPages_getEmployees##QueryString_getEmployees#">Last</a> 
		</cfif> </td>
	</tr>
  </cfoutput> 
</table>


<cfoutput>Records #StartRow_getEmployees# to #EndRow_getEmployees# of #getEmployees.RecordCount# </cfoutput> 