<cfset CurrentPage=GetFileFromPath(GetTemplatePath())>
<cfif IsDefined("FORM.MM_InsertRecord") AND FORM.MM_InsertRecord EQ "form1">
  <cfquery datasource="CompanyInfo">
  INSERT INTO Employee (FirstName, LastName, Dept_ID, StartDate, Salary, Contract) 
  VALUES (
  <cfif IsDefined("FORM.FirstName") AND #FORM.FirstName# NEQ "">
	'#FORM.FirstName#'
	<cfelse>
	NULL
  </cfif>
  , 
  <cfif IsDefined("FORM.LastName") AND #FORM.LastName# NEQ "">
	'#FORM.LastName#'
	<cfelse>
	NULL
  </cfif>
  , 
  <cfif IsDefined("FORM.Dept_ID") AND #FORM.Dept_ID# NEQ "">
	#FORM.Dept_ID#
	<cfelse>
	NULL
  </cfif>
  , 
  <cfif IsDefined("FORM.StartDate") AND #FORM.StartDate# NEQ "">
	#CreateODBCDateTime(FORM.StartDate)#
	<cfelse>
	NULL
  </cfif>
  , 
  <cfif IsDefined("FORM.Salary") AND #FORM.Salary# NEQ "">
	#FORM.Salary#
	<cfelse>
	NULL
  </cfif>
  , 
  <cfif IsDefined("FORM.Contract") AND #FORM.Contract# NEQ "">
	'#FORM.Contract#'
	<cfelse>
	NULL
  </cfif>
  ) 
  </cfquery>
  <cflocation url="viewEmployees.cfm">
</cfif>


<form method="post" name="form1" action="<cfoutput>#CurrentPage#</cfoutput>">
  <table align="center">
	<tr valign="baseline"> 
	  <td nowrap align="right">FirstName:</td>
	  <td><input type="text" name="FirstName" value="" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">LastName:</td>
	  <td><input type="text" name="LastName" value="" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">Dept_ID:</td>
	  <td><input type="text" name="Dept_ID" value="" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">StartDate:</td>
	  <td><input type="text" name="StartDate" value="" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">Salary:</td>
	  <td><input type="text" name="Salary" value="" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">Contract:</td>
	  <td><input type="text" name="Contract" value="" size="32"></td>
	</tr>
	<tr valign="baseline"> 
	  <td nowrap align="right">&nbsp;</td>
	  <td><input type="submit" value="Insert Record"></td>
	</tr>
  </table>
  <input type="hidden" name="MM_InsertRecord" value="form1">
</form>
<p>&nbsp;</p>