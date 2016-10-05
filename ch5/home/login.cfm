<cfif IsDefined("FORM.UserID")>
  <cfset MM_redirectLoginSuccess="../secured/index.cfm">
  <cfset MM_redirectLoginFailed="../loginError.cfm">
  <cfquery  name="MM_rsUser" datasource="CompanyInfo">
  SELECT UserID,Password FROM LoginInfo WHERE UserID='#FORM.UserID#' AND Password='#FORM.Password#' 
  </cfquery>
  <cfif MM_rsUser.RecordCount NEQ 0>
	<cftry>
	  <cflock scope="Session" timeout="30" type="Exclusive">
		<cfset Session.MM_Username=FORM.UserID>
		<cfset Session.MM_UserAuthorization="">
	  </cflock>
	  <cfif IsDefined("URL.accessdenied") AND true>
		<cfset MM_redirectLoginSuccess=URL.accessdenied>
	  </cfif>
	  <cflocation url="#MM_redirectLoginSuccess#" addtoken="no">
	  <cfcatch type="Lock">
		<!--- code for handling timeout of cflock --->
	  </cfcatch>
	</cftry>
  </cfif>
  <cflocation url="#MM_redirectLoginFailed#" addtoken="no">
  <cfelse>
  <cfset MM_LoginAction=CGI.SCRIPT_NAME>
  <cfif CGI.QUERY_STRING NEQ "">
	<cfset MM_LoginAction=MM_LoginAction & "?" & CGI.QUERY_STRING>
  </cfif>
</cfif>
 
<form action="<cfoutput>#MM_loginAction#</cfoutput>" method="POST">
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
	  <td colspan="2"><input type="submit" value="Login"></td>
	</tr>
  </table>
</form>
