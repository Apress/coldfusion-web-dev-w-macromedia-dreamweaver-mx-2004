<form action="replace.cfm" method="post">
  <textarea cols="40" rows="5" name="myString"></textarea>
  <input type="Submit" value="Replace()">
</form>

<cfif IsDefined( "Form.myString" )>
  <cfset crlf = Chr(13) & Chr(10)>
  <cfset newString = Replace(Form.myString, crlf, "<br />")>
  <cfoutput>#newString#</cfoutput>
</cfif>
