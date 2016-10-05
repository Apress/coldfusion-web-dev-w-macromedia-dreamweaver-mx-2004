<cfparam name="Form.PageName" type="string">
<cfparam name="Form.PageContents" type="string">

<cfquery datasource="cfbook_sql">
	UPDATE
		ContentManager
	SET
		PageContents = <cfqueryparam value="#Form.PageContents#" cfsqltype="cf_sql_varchar" maxlength="4000">
	WHERE
		PageName = <cfqueryparam value="#Form.PageName#" cfsqltype="cf_sql_varchar">
</cfquery>

<cflock type="exclusive" name="cfbook_content" timeout="10">
	<cfset Application.ContentManager[ Form.PageName ] = Form.PageContents >
</cflock>

<cflocation url="admin.cfm">
