<cfmail to="you@yoursite.com" from="#Form.Email#" subject="Feedback from the site">
	#Form.Name# sent the following comments at #DateFormat( Now(), "mmm d, yyyy")# #TimeFormat( Now(), "h:mm tt")#;
	#Form.Comments#
</cfmail>
<cflocation url="thankYou.cfm">
