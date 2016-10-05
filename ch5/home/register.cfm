<cfif IsDefined("FORM.UserID")>
  <cfquery name="MM_search" datasource="CompanyInfo">
  SELECT UserID FROM LoginInfo WHERE UserID='#FORM.UserID#' 
  </cfquery>
  <cfif MM_search.RecordCount GTE 1>
	<cflocation url="userAlreadyExists.cfm ?requsername=#FORM.UserID#" addtoken="no">
  </cfif>
</cfif>

<cfset CurrentPage=GetFileFromPath(GetTemplatePath())>
<cfif IsDefined("FORM.MM_InsertRecord") AND FORM.MM_InsertRecord EQ "form1">
  <cfquery datasource="CompanyInfo">
  INSERT INTO LoginInfo (UserID, Password) VALUES (
  <cfif IsDefined("FORM.UserID") AND #FORM.UserID# NEQ "">
	'#FORM.UserID#'
	<cfelse>
	NULL
  </cfif>
  , 
  <cfif IsDefined("FORM.Password") AND #FORM.Password# NEQ "">
	'#FORM.Password#'
	<cfelse>
	NULL
  </cfif>
  ) 
  </cfquery>
  <cflocation url="login.cfm">
</cfif>

<h1>Registration Form</h1>
	
<form name="form1" action="<cfoutput>#CurrentPage#</cfoutput>" method="POST">
  <table>
	<tr> 
	  <td>User ID</td>
	  <td><input type="text" name="UserID"></td>
	</tr>
	<tr> 
	  <td>Password</td>
	  <td><input type="password" name="Password"></td>
	</tr>
	<tr align="center"> 
	  <td colspan="2"><input type="submit" value="Register"></td>
	</tr>
  </table>
  <input type="hidden" name="MM_InsertRecord" value="form1">
</form>
