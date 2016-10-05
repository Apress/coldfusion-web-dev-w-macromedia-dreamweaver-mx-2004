<!--- version 1 --->
<!---
<form action="submit.cfm" method="post">
<input type="text" name="EmailAddress"><input type="submit" value="send">
</form>
--->

<!--- version 2 --->
<form action="submit.cfm" method="post">
<input type="text" name="EmailAddress">
<input type="hidden" name="EmailAddress_required" value="Please enter an email address.">
<input type="submit" value="send">
</form>
