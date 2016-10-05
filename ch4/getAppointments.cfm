<cffile action="read" file="#ExpandPath( 'appointments.html' )#"
        variable="myAppointments">
<cfset startBody = FindNoCase( "<body>", myAppointments )>
<cfset endBody = FindNoCase( "</body>", myAppointments )>

<cfset contents = Mid( myAppointments, startBody+6, endBody-startBody-6 )>

<cfoutput>#contents#</cfoutput>
