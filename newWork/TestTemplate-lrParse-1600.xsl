<xsl:stylesheet version="2.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:xs="http://www.w3.org/2001/XMLSchema"
 xmlns:f="http://fxsl.sf.net/"
 exclude-result-prefixes="f xs"
 >
 <xsl:import href="func-lrParse-tailRecursive.xsl"/>
 
 <xsl:output method="text"/>

 <xsl:template match="/">
 
   <xsl:call-template name="f:lrParse3">
     <xsl:with-param name="ppTables" select="/*"/>
     <xsl:with-param name="pInputInd" select="1"/>
     <xsl:with-param name="pStack" select="(0)"/>
     <xsl:with-param name="pInput" as="xs:string*" select=
                  "('1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '+',
                    '1','+','0', '+','0','+','1', '$end'
                    )"/>
   </xsl:call-template>
 </xsl:template>
</xsl:stylesheet>