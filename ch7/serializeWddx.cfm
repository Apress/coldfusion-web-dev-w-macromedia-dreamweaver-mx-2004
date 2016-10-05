<cfset myString = "Hello World">

<cfwddx action="cfml2wddx" input="#myString#" output="myWddxPacket">

<cfoutput>#HTMLEditFormat( myWddxPacket )#</cfoutput>
