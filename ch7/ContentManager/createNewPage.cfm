<cfparam name="Form.PageName" type="string">

<cfquery name="checkPageNameExists" datasource="cfbook_sql">
	SELECT PageName
	FROM ContentManager
	WHERE PageName = <cfqueryparam value="#Form.PageName#" cfsqltype="cf_sql_varchar">
</cfquery>

<cfif checkPageNameExists.RecordCount EQ 0>
	<cfquery datasource="cfbook_sql">
		INSERT INTO
			ContentManager (
				PageName,
				PageContents
			)
		VALUES
			(
				<cfqueryparam value="#Form.PageName#" cfsqltype="cf_sql_varchar">,
				<cfqueryparam value="" cfsqltype="cf_sql_varchar">
			)
	</cfquery>
	
	<cflock type="exclusive" name="cfbook_content" timeout="10">
		<cfset Application.ContentManager[ Form.PageName ] = "" >
	</cflock>
	
	<cflocation url="admin.cfm">
<cfelse>
	<cflocation url="admin.cfm?ErrorMessage=#URLEncodedFormat("This PageName already exists in the database. Unable to create page.")#">
</cfif>
