	<table>
	<cfform action="doMultipleSubmit.cfm" method="post">
	<tr>
		<td>Name</td>
		<td><cfinput type="text" name="Name" required="yes"
message="Please enter a name."></td>
		<td><input type="submit" name="submit" value="Search"></td>
		<td><input type="submit" name="submit" value="Create"></td>
	</tr>
	</cfform>
	</table>
