<cfset myString = "       this is a sentence with no social significance     ">

<cfset LTrim_String = LTrim( myString )>
<cfset RTrim_String = RTrim( myString )>
<cfset Trim_String = Trim( myString )>

<cfoutput>
<pre>
[#LTrim_String#] 
[#RTrim_String#]
[#Trim_String#]
</pre>
</cfoutput>
