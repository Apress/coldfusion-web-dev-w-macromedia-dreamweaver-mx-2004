<cfform action="dologin.cfm" method="post">
  User Name:
  <cfinput type="text" name="UserName" required="yes"
           message="Please enter your user name."><br />
  Password:
  <cfinput type="password" name="Password" required="yes"
           message="Please enter your password."><br />
  <input type="submit" value="Login">
</cfform>
