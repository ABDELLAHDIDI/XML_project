<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    version="1.0">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="main"
                    page-height="53.98mm"
                    page-width="85.6mm"
                    margin-top="0mm"
                    margin-bottom="0mm"
                    margin-left="0mm"
                    margin-right="0mm">
                    <fo:region-body margin-top="0mm" />
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="main">
                <fo:flow flow-name="xsl-region-body">

                <fo:block background-image="./res/images/icone/background.png">
                    <fo:block >
                        <fo:table>
                            <fo:table-column column-width="15mm" />
                            <fo:table-column column-width="53.1mm" />
                            <fo:table-column column-width="18.1mm" />

                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="center" padding-left="3.5mm" padding-top="1mm">
                                            <fo:external-graphic height="10.5mm" width="12mm"
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                scaling="non-uniform"
                                                src="./res/images/logo/uae.png">
                                            </fo:external-graphic>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-family="Arial" font-size="6.4pt" text-align="center" padding-top="1.5mm"> Université Abdelmalek Essaadi</fo:block>
                                        <fo:block font-weight="bold" font-family="Arial" font-size="6.4pt" text-align="center"> Ecole National des Sciences Appliquées</fo:block>
                                        <fo:block margin-bottom="2mm" font-weight="bold" font-family="Arial" font-size="6.4pt" text-align="center"> Tanger</fo:block>

                                        <fo:block font-weight="bold" font-family="Arial" font-size="9pt" text-align="center">
                                            <fo:leader leader-pattern="rule" leader-length="100%"
                                                color="red" rule-style="solid"
                                                rule-thickness="1.5pt" /> CARTE D'ETUDIANT </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block margin-left="1mm" padding-top="1mm">
                                            <fo:external-graphic 
                                                scaling="non-uniform"
                                                width="13mm" height="11mm" 
                                                content-width="scale-to-fit" content-height="scale-to-fit"
                                                src="./res/images/logo/ensat.png">
                                            </fo:external-graphic>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>

                        </fo:table>
                    </fo:block>

                    <fo:block>
                        <fo:table>
                            <fo:table-column column-width="20.3mm" />
                            <fo:table-column column-width="45mm" />
                            <fo:table-column column-width="18mm" />

                            <fo:table-body>
                                
                                <fo:table-row>
                                    <fo:table-cell>
                                         
                                    <fo:block text-align="center" padding-top="4mm" padding-left="1.5mm">
                                            <fo:external-graphic height="19mm" width="14.5mm"
                                                scaling="non-uniform"
                                                content-height="scale-to-fit"
                                                content-width="scale-to-fit"
                                                src="{concat('res/images/photo/',etudiant/@code_apogée,'.png')}">
                                            </fo:external-graphic>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block padding-top="10mm">

                                            <fo:block font-weight="bold" font-family="Arial" font-size="8pt">
                                                <xsl:value-of select="etudiant/Nom" />
                                            </fo:block>
                                            <fo:block font-weight="bold" font-family="Arial" font-size="8pt">
                                                <xsl:value-of select="etudiant/Prénom" />
                                            </fo:block>
                                            <fo:block font-weight="bold" font-family="Arial" font-size="8pt">
                                                <xsl:value-of select="etudiant/@code_apogée" />
                                            </fo:block>
                                            <xsl:variable name="var">
                                                <xsl:value-of select="substring(etudiant/@code_apogée, 2, 1)"/>
                                            </xsl:variable>
                                            
                                            <fo:block padding-top="6.5mm" padding-bottom="4mm" font-weight="bold" font-family="Arial" font-size="8pt">Première Inscription : 
                                                <xsl:value-of select="$var + 2010" /> / <xsl:value-of select="$var + 2011" />
                                        </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block text-align="center" padding-top="5.5mm">
                                            <fo:external-graphic height="10mm" width="15mm"
                                                content-height="18mm"
                                                content-width="16mm"
                                                src="./res/images/icone/qr.png">
                                            </fo:external-graphic>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>


                            </fo:table-body>

                        </fo:table>
                    </fo:block>
                

                </fo:block>

                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>