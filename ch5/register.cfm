<cfform action="doRegister.cfm" method="post">
<table>
<tr>
		<td>Name</td>
		<td><cfinput type="text" name="Name" required="yes" message="Please enter your name."></td>
</tr>
<tr>
		<td>Email</td>
		<td><cfinput type="text" name="Email" required="yes" message="Please enter your email address."></td>
</tr>
<tr>
		<td>Birthdate</td>
		<td><cfinput type="text" name="Birthdate" required="yes" validate="date" message="Please enter your birthdate."></td>
</tr>
<tr>
		<td colspan="2"><input type="submit" value="Register">
			<input type="hidden" name="Name_required" value="Please enter your name.">
			<input type="hidden" name="Email_required" value="Please enter your email address.">
			<input type="hidden" name="Birthdate_required" value="Please enter your birthdate.">
			<input type="hidden" name="Birthdate_date" value="Birthdate must be a valid date."></td>
</tr>
</table>
</cfform>
