<!--- for this code to work, you need to pass 2 form fields (#Form.ItemID# and #Form.Quantity#) and this code will create a cart structure in the Session scope which will get duplicated into the Request scope and back). --->

<cfparam name="Form.ItemID" type="numeric">
<cfparam name="Form.Quantity" type="numeric">

<cflock name="myCart" type="exclusive" timeout="10">
	<!--- if Session cart does not already exist, create it. --->
	<cfif NOT IsDefined("Session.myCart")>
		<cfset Session.myCart = StructNew()>
		<!-- Cart Created. -->
	</cfif>
</cflock>
<cflock name="myCart" type="readonly" timeout="10">
	<!--- copy user's cart into the Request scope. --->
	<cfset Request.myCart = Duplicate(Session.myCart)>
</cflock>

<!--- code to insert the product into cart here or update quantity if it already exists. --->
<cfset Request.myCart[Form.ItemID] = Form.Quantity>
<cfdump var="#Request.myCart#">

<cflock name="myCart" type="exclusive" timeout="10">
	<!--- copy user's cart back into the Session scope. --->
	<cfset Session.myCart = Duplicate(Request.myCart)>
</cflock>
