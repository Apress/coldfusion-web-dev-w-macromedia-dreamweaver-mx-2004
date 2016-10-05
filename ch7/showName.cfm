<cfparam name="Form.Name" type="string">

<cfcookie name="Name" value="#Form.Name#">

<cfoutput>Your name is: #Cookie.Name#<br></cfoutput>
<a href="anotherPage.cfm">Another page</a>
