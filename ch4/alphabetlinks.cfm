<cfoutput>
  <cfloop from="#Asc('A')#" to="#Asc('Z')#" index="temp">
    <cfset currentLetter = Chr(temp)>
    <a href="index.cfm?letter=#currentLetter#">#currentLetter#</a>&nbsp;&nbsp;
  </cfloop>
</cfoutput>
