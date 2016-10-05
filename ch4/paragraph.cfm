<cfquery name="getNews" datasource="myCompanyDsn">
  SELECT
    PressReleaseID,
    PressReleaseTitle,
    PressReleaseText
  FROM
    PressReleases
  WHERE
    PressReleaseID = #Url.prid#
</cfquery>

<cfoutput query="getPressReleases">
  #PressReleaseTitle#<br />
  #ParagraphFormat( PressReleaseText )#<br />
</cfoutput>
