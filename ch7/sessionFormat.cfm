<cfoutput>
<a href="index.cfm?CFID=#Client.CFID#&CFTOKEN=#Client.CFTOKEN#">link A</a><br>
<a href="index.cfm?#Client.URLTOKEN#">link B</a><br>
<hr>
<a href="#URLSessionFormat('index.cfm')#">link C</a><br>
<a href="#URLSessionFormat('index.cfm?error=true')#">link D</a><br>
</cfoutput>
