<cfset Christmas = CreateDate(2003, 12, 25)>
<cfoutput>#DateFormat( Christmas, "mmm d, yyyy" )# is #DateDiff("d", Now(), Christmas)# days away.</cfoutput>
