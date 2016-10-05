<cfparam name="Attributes.thisDate" type="date" default="#Now( )#">
<cfparam name="Attributes.dateFmt" type="string" default="mmm d, yyyy">
<cfparam name="Attributes.timeFmt" type="string" default="h:mm tt">
<cfoutput>#DateFormat( Attributes.thisDate, Attributes.dateFmt )#
  #TimeFormat( Attributes.thisDate, Attributes.timeFmt )#</cfoutput>
