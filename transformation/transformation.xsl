<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0"
    xmlns:ns="http://www.tei-c.org/ns/1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0"
    xmlns:meta="urn:oasis:names:tc:opendocument:xmlns:meta:1.0"
    xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0">
    
    <xsl:param name="meta.file" select="'meta.xml'" /> 
    <xsl:param name="style.file" select="'styles.xml'" /> 
    
    
    <xsl:template match="/">
    <xsl:result-document href="Madame-Bovary.xml" indent="yes">
    <ns:TEI >
        <ns:teiHeader>
            <ns:fileDesc>
                <ns:titleStmt>
                    <ns:title><xsl:value-of select="document($meta.file)/office:document-meta/office:meta/meta:user-defined[@meta:name='Titre']"/></ns:title>
                    <ns:author><xsl:value-of select="document($meta.file)/office:document-meta/office:meta/meta:user-defined[@meta:name='Auteur']"/></ns:author>
                </ns:titleStmt>
                <ns:publicationStmt>
                    <ns:p><xsl:value-of select="document($meta.file)/office:document-meta/office:meta/meta:user-defined[@meta:name='Date de publication']"/></ns:p>
                    <ns:p><xsl:value-of select="document($meta.file)/office:document-meta/office:meta/meta:user-defined[@meta:name='Licence']"/></ns:p>
                </ns:publicationStmt>
                <ns:sourceDesc>
                    <ns:p><xsl:value-of select="document($meta.file)/office:document-meta/office:meta/meta:user-defined[@meta:name='Date de la source']"/></ns:p>
                    <ns:p><xsl:value-of select="document($meta.file)/office:document-meta/office:meta/meta:user-defined[@meta:name='Source']"/></ns:p>
                </ns:sourceDesc>
            </ns:fileDesc>
            <ns:encodingDesc>
                <ns:projectDesc>
                    <ns:p><xsl:value-of select="document($meta.file)/office:document-meta/office:meta/meta:user-defined[@meta:name='Description']"/></ns:p>
                </ns:projectDesc>
            </ns:encodingDesc>
        </ns:teiHeader>
        <ns:text>
         <ns:body>
             <xsl:apply-templates select="//text:p"/>
        </ns:body>
        </ns:text>
    </ns:TEI>
    </xsl:result-document>
    </xsl:template>
    
    <xsl:template match="text:p">
        <xsl:for-each select=".">
            <ns:p><xsl:value-of select="."/></ns:p>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>