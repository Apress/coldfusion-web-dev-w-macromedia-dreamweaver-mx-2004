<!--- version 1 --->
<!---
<cfapplication name="secureTest" sessionmanagement="yes">
--->

<cfapplication name="secureTest" sessionmanagement="yes" sessiontimeout="#CreateTimeSpan(0,0,5,0)#">