<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes" media-type="image/svg" />
    
    <xsl:template match="/">
        <svg width="500" height="300" xmlns="http://www.w3.org/2000/svg">
            <text x="150" y="30" font-family="Arial" font-size="20">Températures (Date: <xsl:value-of select="meteo/mesure[1]/@date"/>)</text>
            
            <xsl:for-each select="meteo/mesure[1]/ville">
                <xsl:variable name="pos" select="position() * 50"/>
                <xsl:variable name="h" select="@temperature * 8"/>
                
                <text x="{$pos}" y="280" font-family="Arial" font-size="10" text-anchor="middle">
                    <xsl:value-of select="@nom"/>
                </text>
                
                <rect x="{$pos - 15}" y="{260 - $h}" width="30" fill="skyblue">
                    <animate attributeName="height" from="0" to="{$h}" dur="1s" fill="freeze" />
                    <animate attributeName="y" from="260" to="{260 - $h}" dur="1s" fill="freeze" />
                </rect>
                
                <text x="{$pos}" y="{255 - $h}" font-family="Arial" font-size="10" text-anchor="middle">
                    <xsl:value-of select="@temperature"/>°
                </text>
            </xsl:for-each>
            
            <line x1="20" y1="260" x2="480" y2="260" stroke="black" />
        </svg>
    </xsl:template>
</xsl:stylesheet>