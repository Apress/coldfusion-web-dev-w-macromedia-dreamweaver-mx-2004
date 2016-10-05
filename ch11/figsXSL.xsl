<?xml version="1.0"?>
  <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
     xmlns="http://www.w3.org/TR/REC-html40"
     xmlns:xlink="http://www.w3.org/1999/xlink">
  <xsl:template match="/">
<html>
<head>
  <title>Active Employees</title>
</head>

<body>
<table border="1" width="350">
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
  </tr>
  <xsl:for-each select="/figs/employee">
  <xsl:if test="active=1">
  <tr>
    <td align="center"><xsl:value-of select="@fname"/></td>
    <td align="center"><xsl:value-of select="@lname"/></td>
  </tr>
  </xsl:if>
  </xsl:for-each>
</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
