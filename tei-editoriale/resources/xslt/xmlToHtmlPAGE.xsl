<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="tei" version="2.0">
    <xsl:template match="/">
        <xsl:apply-templates select="//partie"/>
    </xsl:template>
    
    <xsl:template match="partie">
        <h2>
            <xsl:value-of select="titre"/>
        </h2>
        <xsl:for-each select="p">
            <p>
                <xsl:value-of select="."/>
            </p>
        </xsl:for-each>
        <xsl:apply-templates select="etape"/>
        <xsl:apply-templates select="liste"/>
    </xsl:template>
    
    <xsl:template match="etape">
        <h3>
            <xsl:value-of select="titre"/>
        </h3>
        <xsl:for-each select="p">
            <p>
                <xsl:value-of select="."/>
            </p>
        </xsl:for-each>
        <xsl:apply-templates select="image"/>
    </xsl:template>
    
     <xsl:template match="liste">
        <ul>
        <xsl:for-each select="element">
            <li>
                    <xsl:value-of select="."/>
                </li>
        </xsl:for-each>
        </ul>
    </xsl:template>
    
    <xsl:template match="image">
        <center>
            <xsl:element name="img">
            <xsl:attribute name="src">
                    <xsl:value-of select="."/>
                </xsl:attribute>
            </xsl:element>
        </center>
    </xsl:template>
    
</xsl:stylesheet>