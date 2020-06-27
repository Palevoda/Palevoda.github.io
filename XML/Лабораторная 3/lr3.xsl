<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheetversion="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
<body>
<h2> Список специальностей факультета ИТ</h2>

 <table border = "1">
 <tr bgcolor="#9acd32">
 <th>Университет</th>
 <th>Город</th>
 <th>План набора</th>
 <th>Проходной балл</th>
 </tr>

<xsl:for-each select="table/tr">
 <tr>
 <td><xsl:value-of select="university"></td>
 <td><xsl:value-of select="city"></td>
 <td><xsl:value-of select="point"></td>
 <td><xsl:value-of select="plan"></td>
 </tr>
</xsl:for-each>
</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>