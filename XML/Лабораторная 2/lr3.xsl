<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<h2> Список специальностей факультета ИТ</h2>
 <table border="1">
 <tr bgcolor="#9acd32">
 <th style="text-align:center">Специальность</th>
 <th style="text-align:center">Срок обучения</th>
 <th style="text-align:center">Предметы ЦТ</th>
 <th style="text-align:center">План набора</th>
 <th style="text-align:center">Проходной балл</th>
 </tr>
<xsl:for-each select="FACULTY/SPECIALIZATION">
 <tr>
 <td><xsl:value-of select="NAME"></td>
 <td><xsl:value-of select="TIME"></td>
 <td><xsl:value-of select="EXAM"></td>
 <td><xsl:value-of select="PAGES"></td>
 <td><xsl:value-of select="PASSING"></td>
 </tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
