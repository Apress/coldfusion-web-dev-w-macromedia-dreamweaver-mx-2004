<form action="val.cfm" method="post">
  <input type="Text" name="myString">
  <input type="Submit" value="Val()">
</form>

<cfif IsDefined( "Form.myString" )>
  <cfoutput>
  You entered: '#Form.myString#'<br />
  Val() returns: '#Val( Form.myString )#'<br />
  </cfoutput>
</cfif>
