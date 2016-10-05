<cfif NOT IsDefined("Form.ImageThumbSrc") OR NOT IsDefined("Form.ImageFullSrc") OR NOT IsDefined("Form.ImageAltTag")>
	<cflocation url="newImage.cfm?message=#UrlEncodedFormat('Thumbnail and Full image are required.')#">
</cfif>

<cfif Len(Trim(Form.ImageThumbSrc)) GT 0 AND Len(Trim(Form.ImageFullSrc)) GT 0>
	<cffile action="upload" filefield="ImageThumbSrc" destination="#ExpandPath('images')#" nameconflict="makeunique">
	<cfset ThumbSrc = cffile.serverfile>
	
	<cffile action="upload" filefield="ImageFullSrc" destination="#ExpandPath('images')#" nameconflict="makeunique">
	<cfset FullSrc = cffile.serverfile>
	
	<cfquery name="insertImage" datasource="cfbook">
		INSERT INTO Images (
			ImageThumbSrc, ImageFullSrc, ImageAltTag, ImageOrder
		)
		VALUES (
			'#ThumbSrc#',
			'#FullSrc#',
			'#Trim(Form.ImageAltTag)#',
			#CreateODBCDateTime(Now())#
		)
	</cfquery>
	<cflocation url="newImage.cfm?message=#UrlEncodedFormat('Image inserted successfully.')#">
</cfif>

<cflocation url="newImage.cfm">
