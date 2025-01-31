<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:f="http://fxsl.sf.net/"
  xmlns:myFun="f:myFun" 
  exclude-result-prefixes="f myFun" 
 >
 
 <xsl:import href="../f/iter.xsl"/>

 <!-- To be applied on any xml file -->
 
 <xsl:output omit-xml-declaration="yes" indent="yes"/>
 
 <xsl:variable name="vmyFun" select="document('')/*/myFun:*[1]"/>
  
  <xsl:template match="/">
    <xsl:variable name="vResult">
      <xsl:call-template name="scanIter">
        <xsl:with-param name="arg1" select="9"/> <!-- times -->
        <xsl:with-param name="arg2" select="$vmyFun"/>
        <xsl:with-param name="arg3" select="1"/> <!-- x0 -->
      </xsl:call-template>
    </xsl:variable>
    
    <xsl:for-each select="$vResult/*/node()">
      <xsl:value-of select="concat(., ' ')"/>
    </xsl:for-each>
  </xsl:template>
 
   <myFun:myFun/>
   <xsl:template match="myFun:*" mode="f:FXSL">
     <xsl:param name="arg1" select="/.."/>
      <xsl:copy-of select="$arg1+1"/>
   </xsl:template>

</xsl:stylesheet>
