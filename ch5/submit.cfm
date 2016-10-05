<!---
cfoutput<br>
<cfoutput>#Form.EmailAddress#</cfoutput><br>

<hr>
--->

cfdump<br>
<cfdump var="#Form#">

<hr>

cfloop: list<br>
<cfoutput>
<cfloop list="#Form.FieldNames#" index="thisField">
#thisField#: #Form[ thisField ]#<br>
</cfloop>
</cfoutput>

<hr>

cfloop: collection<br>
<cfoutput>
<cfloop collection="#Form#" item="thisField">
#thisField#: #Form[ thisField ]#<br>
</cfloop>
</cfoutput>
