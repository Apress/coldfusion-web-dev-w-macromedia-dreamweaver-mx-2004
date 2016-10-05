<cfif IsDefined("URL.message")>
	<cfoutput>#URL.message#</cfoutput><br>
<cfelse>
	<br>
</cfif>

<cfform action="uploadImage.cfm" method="post" enctype="multipart/form-data">
<table>
<tr>
	<td>Thumb:</td>
	<td><input type="file" name="ImageThumbSrc"><input type="hidden" name="ImageThumbSrc_hidden" value="Please enter a thumbnail image."></td>
</tr>
<tr>
	<td>Full:</td>
	<td><input type="file" name="ImageFullSrc"><input type="hidden" name="ImageFullSrc_hidden" value="Please enter a full image."></td>
</tr>
<tr>
	<td>Alt:</td>
	<td><textarea cols="20" rows="3" wrap="soft" name="ImageAltTag"></textarea></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" value="Upload Image"></td>
</tr>
</table>
</cfform>
