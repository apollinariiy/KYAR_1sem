<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="1.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> 
 <xsl:template match="/"> 
   <html> 
<head><title>My first template rule</title> 
</head> 
   <body> 
   <h2>Аттестация студентов</h2> 
   <table border="1"> 
     <tr bgcolor="#9acd32"> 
       <th>Фамилия</th> 
       <th>КЯР</th>
       <th>ОПИ</th>
       <th>ОАП</th>
       <th>АЛОЦВМ</th> 
     </tr> 
     <xsl:for-each select="catalog/cd"> 
      <xsl:sort select="artist"/> 
      <xsl:sort select="opi"/> 
       <tr> 
         <td><xsl:value-of select="title"/></td> 
         <!-- КЯР-->
    <xsl:choose> 
    <xsl:when test="artist &gt; 8"> 
           <td bgcolor="green"> 
           <xsl:value-of select="artist"/></td> 
    </xsl:when> 
    <xsl:otherwise> 
                 <xsl:choose> 
         <xsl:when test="artist &lt; 4"> 
           <td bgcolor="red"> 
           <xsl:value-of select="artist"/></td> 
        </xsl:when> 
         <xsl:otherwise> 
           <td><xsl:value-of select="artist"/></td> 
        </xsl:otherwise> 
            </xsl:choose> 
        </xsl:otherwise> 
    </xsl:choose> 
     <!--ОПИ-->
<xsl:choose> 
    <xsl:when test="opi &gt; 8"> 
           <td bgcolor="green"> 
           <xsl:value-of select="opi"/></td> 
    </xsl:when> 
    <xsl:otherwise> 
                 <xsl:choose> 
         <xsl:when test="opi &lt; 4"> 
           <td bgcolor="red"> 
           <xsl:value-of select="opi"/></td> 
        </xsl:when> 
         <xsl:otherwise> 
           <td><xsl:value-of select="opi"/></td> 
        </xsl:otherwise> 
            </xsl:choose> 
        </xsl:otherwise> 
    </xsl:choose> 
    <!--ОАП-->
    <xsl:choose> 
    <xsl:when test="oap &gt; 8"> 
           <td bgcolor="green"> 
           <xsl:value-of select="oap"/></td> 
    </xsl:when> 
    <xsl:otherwise> 
                 <xsl:choose> 
         <xsl:when test="oap &lt; 4"> 
           <td bgcolor="red"> 
           <xsl:value-of select="oap"/></td> 
        </xsl:when> 
         <xsl:otherwise> 
           <td><xsl:value-of select="oap"/></td> 
        </xsl:otherwise> 
            </xsl:choose> 
        </xsl:otherwise> 
    </xsl:choose> 
    <!--АЛОЦВМ-->
    <xsl:choose> 
    <xsl:when test="alocvm &gt; 8"> 
           <td bgcolor="green"> 
           <xsl:value-of select="alocvm"/></td> 
    </xsl:when> 
    <xsl:otherwise> 
                 <xsl:choose> 
         <xsl:when test="alocvm &lt; 4"> 
           <td bgcolor="red"> 
           <xsl:value-of select="alocvm"/></td> 
        </xsl:when> 
         <xsl:otherwise> 
           <td><xsl:value-of select="alocvm"/></td> 
        </xsl:otherwise> 
            </xsl:choose> 
        </xsl:otherwise> 
    </xsl:choose> 
       </tr> 
     </xsl:for-each> 
   </table> 
   </body> 
   </html> 
 </xsl:template> 
</xsl:stylesheet> 
