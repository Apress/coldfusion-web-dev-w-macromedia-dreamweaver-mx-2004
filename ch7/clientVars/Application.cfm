<!--- before you can use client variables with a data source, you have to enable client variable storage for that data source in the ColdFusion Administrator. By default client variables are stored in the system registry, which is often less than ideal.--->

<cfapplication name="cfbook" clientmanagement="yes">
<!---
<cfapplication name="cfbook" clientmanagement="yes" clientstorage="cfbook">
--->