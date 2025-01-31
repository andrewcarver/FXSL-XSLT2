<xsl:stylesheet version="2.0" 
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
 xmlns:f="http://fxsl.sf.net/"
 xmlns:myFun="f:myFun"
 xmlns:myFunPrim="f:myFunPrim" 
 exclude-result-prefixes="xsl f myFun myFunPrim"
 >
 
  <xsl:import href="../f/findRoot.xsl"/>
  <xsl:import href="../f/trignm.xsl"/>
  
  <xsl:output method="text"/>
  
  <myFun:myFun/>
  <myFunPrim:myFunPrim/>
 
  <xsl:template match="/">
    <xsl:call-template name="findRootNR">
      <xsl:with-param name="pFun" select="document('')/*/myFun:*[1]"/>
      <xsl:with-param name="pFunPrim" select="document('')/*/myFunPrim:*[1]"/>
      <xsl:with-param name="pX0" select="$pi div 4"/>
      <xsl:with-param name="pEps" select="0.0000001"/>
    </xsl:call-template>
    
  </xsl:template>
  
  <xsl:template match="myFun:*" mode="f:FXSL">
    <xsl:param name="arg1"/>
    
    <xsl:value-of select="$arg1 * $arg1 - 4"/>
  </xsl:template>

  <xsl:template match="myFunPrim:*" mode="f:FXSL">
    <xsl:param name="arg1"/>
    
    <xsl:value-of select="2 * $arg1"/>
  </xsl:template>
</xsl:stylesheet>