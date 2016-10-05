<cfset Christmas = CreateDateTime( 2003, 12, 25, 7, 15, 0)>

<cfoutput>
  <strong>#Christmas#</strong><br />
  <cfloop list="yyyy,q,m,y,d,w,ww,h,n,s" index="thisDatePart">
    #thisDatePart#: #DatePart( thisDatePart, Christmas )#<br />
  </cfloop>
</cfoutput>
