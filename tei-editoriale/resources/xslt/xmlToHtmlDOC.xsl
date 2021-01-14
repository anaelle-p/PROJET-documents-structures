<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="tei" version="2.0">
    <xsl:template match="/">
        <h2>
            <xsl:text>Informations sur l'œuvre :</xsl:text>
        </h2>
        <xsl:apply-templates select="//tei:teiHeader"/>
        <h2>
            <xsl:text>Texte :</xsl:text>
        </h2>
        <xsl:apply-templates select="//tei:body"/>
        <h2>
            <xsl:text>Fin!</xsl:text>
        </h2>
    </xsl:template>
    
    <xsl:template match="tei:teiHeader">
        <ul>
            <li>
                <xsl:text>Titre : </xsl:text>
                <xsl:value-of select="//tei:title"/>
            </li>
            <li>
                <xsl:text>Auteur : </xsl:text>
                <xsl:value-of select="//tei:author"/>
            </li>
            <li>
                <xsl:text>Publication :</xsl:text>
                <xsl:value-of select="//tei:publicationStmt/tei:p"/>
            </li>
            <li>
                <xsl:text>Source : </xsl:text>
                <xsl:value-of select="//tei:sourceDesc/tei:p"/>
            </li>
            <li>
                <xsl:text>Projet : </xsl:text>
                <xsl:value-of select="//tei:projectDesc/tei:p"/>
            </li>
        </ul>
    </xsl:template>
    
    <xsl:template match="tei:body">
        <xsl:for-each select="tei:p">
            <p>
                <xsl:value-of select="."/>
            </p>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>