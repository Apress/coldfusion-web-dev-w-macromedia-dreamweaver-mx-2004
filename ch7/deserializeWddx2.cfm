<cfparam name="Client.myWddxPacket" type="string">

<cfwddx action="wddx2cfml" input="#Client.myWddxPacket#" output="myArray">

<cfdump var="#myArray#">
