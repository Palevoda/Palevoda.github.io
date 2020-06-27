<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<table border="1" align = "center">
<tr bgcolor = "rgb(21, 189, 175)">
<th>Фамилия</th>
<th>Имя</th>
<th>Отчество</th>
<th>Средний балл</th>
<th>Дата рождения</th>
</tr>
<xsl:for-each select="table/tr">

<xsl:sort select = "date"/>

<tr>
<xsl:choose>
<xsl:when test = "point > 6">

<td><xsl:value-of select="sorname"/></td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="secondName"/></td>
<td><xsl:value-of select="point"/></td>
<td><xsl:value-of select="date"/></td>

</xsl:when>

<xsl:when test = "point = 6">

<td><xsl:value-of select="sorname"/></td>
<td bgcolor = "yellowgreen"><xsl:value-of select="name"/></td>
<td><xsl:value-of select="secondName"/></td>
<td><xsl:value-of select="point"/></td>
<td><xsl:value-of select="date"/></td>

</xsl:when>

<xsl:otherwise>

<td bgcolor = "red"><xsl:value-of select="sorname"/></td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="secondName"/></td>
<td><xsl:value-of select="point"/></td>
<td><xsl:value-of select="date"/></td>

</xsl:otherwise>


</xsl:choose>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>