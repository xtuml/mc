<?xml version='1.0'?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:import href="eclipse.xsl"/>
  <xsl:template match="GUIMenuItem|guimenuitem|GUILabel|guilabel|GUIButton|guibutton">
    <xsl:call-template name="inline.boldseq"/>
  </xsl:template>
  <xsl:param name="eclipse.plugin.name">MC-3020 Model Compiler User Guide</xsl:param>
  <xsl:param name="eclipse.plugin.id">org.xtuml.help.bp.mc</xsl:param>
  <xsl:param name="eclipse.plugin.provider">xtuml.org</xsl:param>
  <xsl:param name="admon.graphics" select="1"/>
  <xsl:param name="make.valid.html" select="1"></xsl:param>
  <xsl:param name="html.cleanup" select="1"></xsl:param>
  <xsl:param name="shade.verbatim" select="0"></xsl:param>
  <xsl:param name="graphic.default.extension">png</xsl:param>
  <xsl:param name="html.stylesheet">techpub.css</xsl:param>
  <xsl:param name="variablelist.as.table" select="1"></xsl:param>
  <xsl:param name="section.autolabel" select="0"></xsl:param>
  <xsl:param name="funcsynopsis.style">ansi</xsl:param>
  <xsl:param name="funcsynopsis.tabular.threshold" select="80"></xsl:param>
  <xsl:param name="generate.toc">
    appendix  nop
    article   toc,title
    book      toc,title,figure,table,example,equation
    chapter   nop
    part      nop
    preface   nop
    qandadiv  nop
    qandaset  nop
    reference toc,title
    section   nop
    set       toc
  </xsl:param>
</xsl:stylesheet>

