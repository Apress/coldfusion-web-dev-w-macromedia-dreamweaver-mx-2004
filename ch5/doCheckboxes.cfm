<cfdump var="#Form#">

<cfloop list="#Form.color#" index="thisColor">
<cfoutput>You selected #thisColor#<br></cfoutput>
</cfloop>
