<cfset myStruct = StructNew()>
<cfset myStruct["a"] = "one">
<cfset myStruct["b"] = "two">

<cfset otherStruct = myStruct>

<table>
<tr bgcolor="EEEEEE">
	<td colspan="2">PRE</td>
</tr>
<tr>
	<td><cfdump var="#myStruct#" label="myStruct"></td>
	<td><cfdump var="#otherStruct#" label="otherStruct"></td>
</tr>

<cfset otherStruct["a"] = "seven">

<tr bgcolor="EEEEEE">
	<td colspan="2">POST</td>
</tr>
<tr>
	<td><cfdump var="#myStruct#" label="myStruct"></td>
	<td><cfdump var="#otherStruct#" label="otherStruct"></td>
</tr>
</table>
