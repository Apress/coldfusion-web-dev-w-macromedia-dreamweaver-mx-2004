<!--- version 1 --->
<!---
<cfif IsDefined("Form.file_to_upload") AND Len(Trim(Form.file_to_upload)) GT 0>
	<cffile action="upload" filefield="file_to_upload" destination="#ExpandPath( '.' )#" nameconflict="makeunique">
	<cfoutput><a href="#cffile.serverfile#">click here to download</a> this file.</cfoutput>
	<cfdump var="#cffile#">
<cfelse>
	missing parameter, "Form.file_to_upload".
</cfif>
--->

<cfif IsDefined("Form.thumbnail_img") AND Len(Trim(Form.thumbnail_img))>
	<cffile action="upload" filefield="thumbnail_img" destination="#ExpandPath( '.' )#" nameconflict="makeunique">
	<cfset thumbnail_serverfile = cffile.serverfile>
</cfif>

<cfif IsDefined("Form.full_img") AND Len(Trim(Form.full_img))>
	<cffile action="upload" filefield="full_img" destination="#ExpandPath( '.' )#" nameconflict="makeunique">
	<cfset full_serverfile = cffile.serverfile>
</cfif>

<cfoutput>
<cfif IsDefined("thumbnail_serverfile")>
	Thumbnail was uploaded: #thumbnail_serverfile#<br>
</cfif>
<cfif IsDefined("full_serverfile")>
	Full was uploaded: #full_serverfile#<br>
</cfif>
</cfoutput>
