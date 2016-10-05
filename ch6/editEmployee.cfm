<cfset CurrentPage=GetFileFromPath(GetTemplatePath())>
<cfif IsDefined("FORM.MM_UpdateRecord") AND FORM.MM_UpdateRecord EQ "form1">
  <cfquery datasource="CompanyInfo">
  UPDATE Employee SET FirstName=
  <cfif IsDefined("FORM.FirstName") AND #FORM.FirstName# NEQ "">
	'#FORM.FirstName#'
	<cfelse>
	NULL
  </cfif>
  , LastName=
  <cfif IsDefined("FORM.LastName") AND #FORM.LastName# NEQ "">
	'#FORM.LastName#'
	<cfelse>
	NULL
  </cfif>
  , Dept_ID=
  <cfif IsDefined("FORM.Dept_ID") AND #FORM.Dept_ID# NEQ "">
	#FORM.Dept_ID#
	<cfelse>
	NULL
  </cfif>
  , StartDate=
  <cfif IsDefined("FORM.StartDate") AND #FORM.StartDate# NEQ "">
	#CreateODBCDateTime(FORM.StartDate)#
	<cfelse>
	NULL
  </cfif>
  , Salary=
  <cfif IsDefined("FORM.Salary") AND #FORM.Salary# NEQ "">
	#FORM.Salary#
	<cfelse>
	NULL
  </cfif>
  , Contract=
  <cfif IsDefined("FORM.Contract") AND #FORM.Contract# NEQ "">
	'#FORM.Contract#'
	<cfelse>
	NULL
  </cfif>
  WHERE Emp_ID=#FORM.Emp_ID# 
  </cfquery>
  <cflocation url="viewEmployees.cfm">
</cfif>
<cfquery name="getEmployee_byEmployeeID" datasource="CompanyInfo">
SELECT * FROM Employee WHERE Employee.Emp_ID = #URL.Emp_ID# 
</cfquery>
 
<form method="post" name="form1" action="<cfoutput>#CurrentPage#</cfoutput>">
  <table align="center">
	<tr valign="baseline"> 
	  <td nowrap align="right">Emp_ID:</td>
	  <td><cfoutput>#getEmployee_byEmployeeID.Emp_ID#</cfoutput></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">FirstName:</td>
	  <td><input type="text" name="FirstName" value="<cfoutput>#getEmployee_byEmployeeID.FirstName#</cfoutput>" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">LastName:</td>
	  <td><input type="text" name="LastName" value="<cfoutput>#getEmployee_byEmployeeID.LastName#</cfoutput>" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">Dept_ID:</td>
	  <td><input type="text" name="Dept_ID" value="<cfoutput>#getEmployee_byEmployeeID.Dept_ID#</cfoutput>" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">StartDate:</td>
	  <td><input type="text" name="StartDate" value="<cfoutput>#getEmployee_byEmployeeID.StartDate#</cfoutput>" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">Salary:</td>
	  <td><input type="text" name="Salary" value="<cfoutput>#getEmployee_byEmployeeID.Salary#</cfoutput>" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">Contract:</td>
	  <td><input type="text" name="Contract" value="<cfoutput>#getEmployee_byEmployeeID.Contract#</cfoutput>" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">&nbsp;</td>
	  <td><input type="submit" value="Update Record"></td>
	</tr>
  </table>
  <input type="hidden" name="Emp_ID" value="<cfoutput>#getEmployee_byEmployeeID.Emp_ID#</cfoutput>">
  <input type="hidden" name="MM_UpdateRecord" value="form1">
</form>
<p>&nbsp;</p>
  