<cfapplication name="ContentManagementSystem">

<cflock type="readonly" name="cfbook_content" timeout="10">
	<cfset content_init = IsDefined("Application.ContentManager")>
</cflock>

<cfif NOT content_init>
	<cfquery name="getContentManagerPages" datasource="cfbook_sql">
		SELECT PageName, PageContents
		FROM ContentManager
	</cfquery>

	<cfset Request.ContentManager = StructNew()>
	<cfloop query="getContentManagerPages">
		<cfset Request.ContentManager[ PageName ] = PageContents >
	</cfloop>

	<cflock type="exclusive" name="cfbook_content" timeout="10">
		<cfset Application.ContentManager = Duplicate(Request.ContentManager)>
	</cflock>
<cfelse>
	<cfset Request.ContentManager = Duplicate(Application.ContentManager)>
</cfif>
