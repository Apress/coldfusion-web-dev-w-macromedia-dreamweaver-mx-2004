<form action="urlencode.cfm" method="post">
  <input type="text" name="myString">
  <input type="submit" value="UrlEncodedFormat()">
</form>

<cfif IsDefined( "Form.myString" )>
  <cflocation url="urlencode.cfm?myString=#Form.myString#">
<cfelseif IsDefined( "Url.myString" )>
  <cfoutput>#Url.myString#</cfoutput>
</cfif>
