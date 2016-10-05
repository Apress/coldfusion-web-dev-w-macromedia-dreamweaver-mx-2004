<cfdump var="#Form#">

<cfparam name="Form.submit" default="" type="string">

<cfswitch expression="#Form.submit#">
<cfcase value="Search">
	You want to search something or someone.
</cfcase>
<cfcase value="Create">
	You want to create something or someone.
</cfcase>
<cfdefaultcase>
	I have no idea what to do.
</cfdefaultcase>
</cfswitch>
