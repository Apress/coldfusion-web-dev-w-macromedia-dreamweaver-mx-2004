<!--- version 1 --->
<!---
<cfform action="doUpload.cfm" method="post" enctype="multipart/form-data">
<table>
<tr>
	<td>File</td>
	<td><input type="file" name="file_to_upload"></td>
	<td><input type="submit" value="Upload file"></td>
</tr>
</table>
</cfform>
--->

<!--- version 2 --->
<cfform action="doUpload.cfm" method="post" enctype="multipart/form-data">
<table>
<tr>
	<td>Thumbnail image</td>
	<td><input type="file" name="thumbnail_img"></td>
</tr>
<tr>
	<td>Full image</td>
	<td><input type="file" name="full_img"></td>
</tr>
<tr align="center">
	<td colspan="2"><input type="submit" value="Upload file"></td>
</tr>
</table>
</cfform>
