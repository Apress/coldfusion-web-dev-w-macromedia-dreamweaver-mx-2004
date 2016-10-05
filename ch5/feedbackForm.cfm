<cfform action="sendFeedback.cfm" method="post">
<table>
<tr>
	<td colspan="2"><h1>Feedback Form</h1></td>
</tr>
<tr>
	<td>Name:</td>
	<td><cfinput name="Name" type="text" size="32" maxlength="48" required="yes" message="Please enter your name."></td>
</tr>
<tr>
	<td>Email:</td>
	<td><cfinput type="text" name="Email" size="32" maxlength="128" required="yes" message="Please enter your email address."></td>
</tr>
<tr>
	<td>Comments:</td>
	<td><textarea name="Comments" cols="24" rows="4" wrap="virtual"></textarea></td>
</tr>
<tr align="center">
	<td colspan="2"><input type="submit" value="Send Comments"></td>
</tr>
</table>
</cfform>
