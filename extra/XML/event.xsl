<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
<center><h2>Event Database</h2></center>
<center><table border="\">
<tr>
 <td bgcolor="pink">Name of Event</td>
 <td bgcolor="pink">Fees</td>
 <td bgcolor="pink">Contact for register</td>
 <td bgcolor="pink">Head of Event</td>
</tr>
<tr> 
<xsl:for-each select="data/student">
<td width="200" >
<xsl:value-of select="name"/></td>
<td width="200" >
<xsl:value-of select="fees"/></td>
<td width="200" >
<xsl:value-of select="contact"/></td>
<td width="200" >
<xsl:value-of select="head"/></td>
</xsl:for-each>
</tr>
<tr> 
<xsl:for-each select="data/student1">
<td width="200" >
<xsl:value-of select="name"/></td>
<td width="200" >
<xsl:value-of select="fees"/></td>
<td width="200" >
<xsl:value-of select="contact"/></td>
<td width="200" >
<xsl:value-of select="head"/></td>
</xsl:for-each>
</tr>
<tr> 
<xsl:for-each select="data/student2">
<td width="200" >
<xsl:value-of select="name"/></td>
<td width="200" >
<xsl:value-of select="fees"/></td>
<td width="200" >
<xsl:value-of select="contact"/></td>
<td width="200" >
<xsl:value-of select="head"/></td>
</xsl:for-each>
</tr>
<tr> 
<xsl:for-each select="data/student3">
<td width="200" >
<xsl:value-of select="name"/></td>
<td width="200" >
<xsl:value-of select="fees"/></td>
<td width="200" >
<xsl:value-of select="contact"/></td>
<td width="200" >
<xsl:value-of select="head"/></td>
</xsl:for-each>
</tr>
<tr> 
<xsl:for-each select="data/student4">
<td width="200" >
<xsl:value-of select="name"/></td>
<td width="200" >
<xsl:value-of select="fees"/></td>
<td width="200" >
<xsl:value-of select="contact"/></td>
<td width="200" >
<xsl:value-of select="head"/></td>
</xsl:for-each>
</tr>
</table>
</center>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
