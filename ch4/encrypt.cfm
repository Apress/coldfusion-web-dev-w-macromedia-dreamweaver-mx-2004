<cfset myPassword = "taintedbeef">
<cfset myKey = "arbitrary string">
<cfset encryptedPassword = Encrypt( myPassword, myKey )>

<cfoutput>
  original password: #myPassword#<br>
  encrypted password: #encryptedPassword#<br>
  decrypted password: #Decrypt( encryptedPassword, myKey )#<br>
</cfoutput>
