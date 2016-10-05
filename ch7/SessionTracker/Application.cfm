<cfapplication name="countOnineUsers" sessionmanagement="Yes" sessiontimeout="#CreateTimeSpan(0,0,15,0)#">

<cflock type="EXCLUSIVE" name="user_init" timeout="10">
	<cfparam name="Session.UniqueID" default="#CreateUUID()#">
	<cfset Variables.thisUniqueID = Session.UniqueID >
</cflock>

<cflock name="app_init" type="READONLY" timeout="10">
	<cfset app_init = IsDefined("Application.onlineUsers") >
</cflock>

<cfif NOT app_init>
	<cfset Variables.onlineUsers = StructNew() >
<cfelse>
	<cflock name="app_init" type="READONLY" timeout="10">
		<cfset Variables.onlineUsers = Application.onlineUsers >
	</cflock>
</cfif>

<cfset StructInsert( Variables.onlineUsers, Variables.thisUniqueID, Now( ), TRUE ) >

<cfloop collection="#Variables.onlineUsers#" item="thisUUID">
	<cfif DateDiff( "n", Variables.onlineUsers[ thisUUID ], Now() ) GT 16>
		<cfset StructDelete( Variables.onlineUsers, thisUUID ) >
	</cfif>
</cfloop>

<cfset Request.numOnlineUsers = StructCount(Variables.onlineUsers) >

<cflock type="EXCLUSIVE" name="app_init" timeout="15">
	<cfset Application.onlineUsers = Duplicate( Variables.onlineUsers ) >
</cflock>
