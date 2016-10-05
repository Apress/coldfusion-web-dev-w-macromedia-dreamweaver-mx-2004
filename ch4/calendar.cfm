<cfparam name="Url.date" default="#Now()#" type="date">
<cfoutput>
  <table border="1">
    <tr>
      <td colspan="2" nowrap>
        #MonthAsString( Month(Url.date) )# #Year(Url.date)#
      </td>
    </tr>
    <cfloop from="1" to="#DaysInMonth( Url.date )#" index="thisDay">
      <cfset tempDate = CreateDate( Year(Url.date), Month(Url.date), thisDay )>
      <tr>
        <td>#DayOfWeekAsString(DayOfWeek(tempDate))#</td>
        <td>#thisDay#</td>
      </tr>
    </cfloop>
  </table>
</cfoutput>
