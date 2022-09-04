<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <table align="center" border="0.2px solid black" cellspacing="0">
          <tr bgcolor="#9acd32">
            <th style="text-align:center">Фамилия</th>
            <th style="text-align:center">АЛОЦВМ</th>
            <th style="text-align:center">ОПИ</th>
            <th style="text-align:center">КЯР</th>
          </tr>
          <xsl:for-each select="Spec/odnogrupniki">
            <xsl:sort select="year" order="descending"/>
            <tr>
              <xsl:choose>
                <xsl:when test="ball &gt; 8">
                  <td style="text-align:center" bgcolor="#ff9999">
                    <xsl:value-of select="firstname"/>
                  </td>
                </xsl:when>
                <xsl:when test="ball>1">
                  <td style="text-align:center; color:green" bgcolor="#ff9999">
                    <xsl:value-of select="ball"/>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td style="text-align:center; color:red" bgcolor="#ff9999">
                    <xsl:value-of select="firstname"/>
                  </td>
                </xsl:otherwise>
              </xsl:choose>
              <td style="text-align:center" bgcolor="wheat">
                <xsl:value-of select="name"/>
              </td>
              <td style="text-align:center" bgcolor="#cccc66">
                <xsl:value-of select="ball"/>
              </td>
              <td style="text-align:center" bgcolor="#ffffcc">
                <xsl:value-of select="year"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
