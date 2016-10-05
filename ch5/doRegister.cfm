<cfset ErrorMessage = "">
<cfif NOT IsDefined("Form.Name") OR Len(Trim(Form.Name)) EQ 0>
	<cfset invalidForm = TRUE>
	<cfset ErrorMessage = ErrorMessage & "Name was not defined, or was blank.<br>">
</cfif>
<cfif NOT IsDefined("Form.Email") OR Len(Trim(Form.Email)) EQ 0>
	<cfset invalidForm = TRUE>
	<cfset ErrorMessage = ErrorMessage & "Email was not defined, or was blank.<br>">
</cfif>
<cfif NOT IsDefined("Form.Birthdate") OR NOT IsDate(Form.Birthdate)>
	<cfset invalidForm = TRUE>
	<cfset ErrorMessage = ErrorMessage & "Birthdate was not defined, or was invalid date.">
</cfif>

<cfparam name="invalidForm" default="FALSE" type="boolean">

<cfif invalidForm>
	<!-- The form is invalid. Display error message here. -->
	<cfoutput>#ErrorMessage#</cfoutput>
<cfelse>
	<!-- The form is valid, begin processing data. -->
	<cfdump var="#Form#">
</cfif>
