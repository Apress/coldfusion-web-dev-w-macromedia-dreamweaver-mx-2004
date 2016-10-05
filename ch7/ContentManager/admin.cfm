<cfform action="admin.cfm" method="post">
	<select name="PageName">
		<cfloop list="#StructKeyList(Request.ContentManager)#" index="thisPage">
		<cfoutput><option value="#thisPage#">#thisPage#</option></cfoutput>
		</cfloop>
	</select>
	<input type="Submit" value="Edit Page">
</cfform>

<cfform action="createNewPage.cfm" method="post">
	<cfinput type="text" name="PageName" value="" required="yes" message="Please enter a page name.">
	<input type="Submit" value="Add Page">
	<input type="Hidden" name="PageName_required" value="Please enter a page name.">
</cfform>

<cfif IsDefined("URL.ErrorMessage")>
	<cfoutput>#URL.ErrorMessage#</cfoutput>
</cfif>

<cfif IsDefined("Form.PageName")>
	<cfoutput>
	<h1>#UCase(Form.PageName)#</h1>
	<cfform action="updatePageContent.cfm" method="post">
		<textarea cols="80" rows="25" wrap="soft" name="PageContents">#Request.ContentManager[Form.PageName]#</textarea><br>
		<input type="Submit" value="Update Content"><input type="hidden" name="PageName" value="#Form.PageName#">
	</cfform>
	</cfoutput>
</cfif>
