<cfparam name="Url.date" default="#Now()#" type="date">
<cfset firstOfMonth = CreateDate( Year(Url.date), Month(Url.date), 1)>
<cfoutput>
  <table>
    <tr>
      <td colspan="2" nowrap>#DateFormat( Url.date, "mmmm yyyy" )#</td>
    </tr>
    <cfloop from="1" to="#DaysInMonth( Url.date )#" index="thisDay">
      <cfset tempDate = DateAdd("d", thisDay-1, firstOfMonth)>
      <tr>
        <td>#DateFormat(tempDate, "dddd")#</td>
        <td>#thisDay#</td>
      </tr>
    </cfloop>
  </table>
</cfoutput>
