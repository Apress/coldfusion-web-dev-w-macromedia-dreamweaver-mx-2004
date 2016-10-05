<cfset CurrentPage=GetFileFromPath(GetTemplatePath())>
<cfparam name="PageNum_getImages" default="1">
<cfquery name="getImages" datasource="cfbook">
SELECT * FROM Images ORDER BY ImageOrder ASC 
</cfquery>
<cfset MaxRows_getImages=4>
<cfset StartRow_getImages=Min((PageNum_getImages-1)*MaxRows_getImages+1,Max(getImages.RecordCount,1))>
<cfset EndRow_getImages=Min(StartRow_getImages+MaxRows_getImages-1,getImages.RecordCount)>
<cfset TotalPages_getImages=Ceiling(getImages.RecordCount/MaxRows_getImages)>
<cfset QueryString_getImages=Iif(CGI.QUERY_STRING NEQ "",DE("&"&CGI.QUERY_STRING),DE(""))>
<cfset tempPos=ListContainsNoCase(QueryString_getImages,"PageNum_getImages=","&")>
<cfif tempPos NEQ 0>
  <cfset QueryString_getImages=ListDeleteAt(QueryString_getImages,tempPos,"&")>
</cfif>
 
<table>
  <tr><cfoutput query="getImages" startRow="#StartRow_getImages#" maxRows="#MaxRows_getImages#">
	  <td><a href="viewFull.cfm?ImageFullSrc=#UrlEncodedFormat(getImages.ImageFullSrc)#"><img src="images/#getImages.ImageThumbSrc#" alt="#getImages.ImageAltTag#" border="0"></a></td>
  </cfoutput></tr>
</table>


<table border="0" width="50%" align="center">
  <cfoutput> 
	<tr> 
	  <td width="23%" align="center"> <cfif PageNum_getImages GT 1>
		  <a href="#CurrentPage#?PageNum_getImages=1#QueryString_getImages#"><img src="First.gif" border=0></a> 
		</cfif> </td>
	  <td width="31%" align="center"> <cfif PageNum_getImages GT 1>
		  <a href="#CurrentPage#?PageNum_getImages=#Max(DecrementValue(PageNum_getImages),1)##QueryString_getImages#"><img src="Previous.gif" border=0></a> 
		</cfif> </td>
	  <td width="23%" align="center"> <cfif PageNum_getImages LT TotalPages_getImages>
		  <a href="#CurrentPage#?PageNum_getImages=#Min(IncrementValue(PageNum_getImages),TotalPages_getImages)##QueryString_getImages#"><img src="Next.gif" border=0></a> 
		</cfif> </td>
	  <td width="23%" align="center"> <cfif PageNum_getImages LT TotalPages_getImages>
		  <a href="#CurrentPage#?PageNum_getImages=#TotalPages_getImages##QueryString_getImages#"><img src="Last.gif" border=0></a> 
		</cfif> </td>
	</tr>
  </cfoutput> 
</table>
