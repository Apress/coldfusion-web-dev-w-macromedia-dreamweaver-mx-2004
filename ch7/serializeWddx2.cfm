<cfset myArray = ArrayNew(1) >
<cfset myArray[1] = "One" >
<cfset myArray[2] = "Two" >
<cfset myArray[3] = "Three" >

<cfwddx action="cfml2wddx" input="#myArray#" output="Client.myWddxPacket">

<cfoutput>#HTMLEditFormat( Client.myWddxPacket )#</cfoutput>
