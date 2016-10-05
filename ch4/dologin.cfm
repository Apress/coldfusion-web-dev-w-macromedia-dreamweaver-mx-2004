<cfset Variables.UserName = "admin">
<cfset Variables.Password = Hash("socks")>

<cfparam name="Form.UserName" type="string">
<cfparam name="Form.Password" type="string">

<cfif Form.UserName EQ Variables.UserName AND
Hash( Form.Password ) EQ Variables.Password>
  Login successful.<br />
  the correct hashed password is:
  <cfoutput>#Variables.Password#</cfoutput>.
  <cfelse>
  Invalid UserName/Password. Please try again.
  <cfinclude template="loginform.cfm">
</cfif>
