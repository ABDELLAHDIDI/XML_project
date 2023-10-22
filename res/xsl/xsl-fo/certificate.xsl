<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xsi:schemaLocation="http://www.w3.org/1999/XSL/Format "
                xmlns:date="http://exslt.org/dates-and-times"
                extension-element-prefixes="date">
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simpleA4" page-height="29.7cm" page-width="21cm" margin-top="1.5cm"
                                       margin-bottom="0.5cm" margin-left="1.5cm" margin-right="1.5cm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
             <fo:page-sequence master-reference="simpleA4">         
                <fo:flow flow-name="xsl-region-body">
                    <fo:block background-color="white" margin-top="Opx" border-style="solid" padding-after="8pt" padding-before="8pt" margin-bottom="8pt" border-width="2px">
                        <fo:block font-weight="bold" font-family="sans-sérif" font-style="normal" text-align="center" margin-bottom="3pt">
                            UNIVERSITE ABDELMALEK ESSAEDI
                        </fo:block>
                        <fo:block font-weight="bold" font-family="sans-sérif" font-style="normal" text-align="center" margin-bottom="3pt">
                            Ecole Nationale des Sciences Appliquées de Tanger
                        </fo:block>
                        <fo:block font-weight="bold" font-family="sans-sérif" font-style="normal" text-align="center">
                            Année universitaire : 2022-2023
                        </fo:block>
                    </fo:block>
                    <fo:block   padding-after="8pt" padding-before="8pt" margin-bottom="8pt">
                       <fo:block text-align="center" font-weight="bold">
                           ATTESTATION DE REUSSITE 
                       </fo:block>
                    </fo:block>

                    <fo:block margin-top="100px"  font-weight="bold" font-family="sans-sérif" font-style="normal" text-align="center">

					<fo:block   padding-after="8pt" padding-before="8pt" margin-bottom="8pt" >
						Le Directeur  de l'Ecole Nationale des Siences Appliqueés de Tanger  atteste que 
						</fo:block>

                    <fo:block  margin-bottom="30px"   padding-after="8pt" padding-before="8pt" >
                        <fo:block  font-weight="bold" font-family="sans-sérif">
                           L'étudiant(e)  <xsl:value-of select="normalize-space(concat(etudiant/Nom,' ',etudiant/Prénom,' ',generationalSuffix))"/>
                        </fo:block>
                       
						<fo:block text-align="center" margin-bottom="10pts"  padding-bottom="4pt" font-weight="bold" font-family="sans-sérif">

							<xsl:variable name="d" select="etudiant/Date_Naissance/day"/>
							<xsl:variable name="m" select="etudiant/Date_Naissance/month"/>
							<xsl:variable name="y" select="etudiant/Date_Naissance/year"/>

                            Né le  :  <xsl:value-of select="normalize-space(concat($d,'/',$m,'/',$y,' à : ',etudiant/Lieu_Naissance,' ',generationalSuffix))"/>   
                        </fo:block> 
                        <fo:block font-weight="bold" font-family="sans-sérif">
                           a été  déclarée admise  au  niveau 
                        </fo:block>
                        <fo:block  font-weight="bold" font-family="sans-sérif">
                           3 Année  GENIE INFORMATIQUE  
                        </fo:block>
						<fo:block font-weight="bold" font-family="sans-sérif">
                          au titre de l'année universitaire 2022/2023 avec mention : 
						    <xsl:variable name="n1" select="etudiant/NOTES/note[1]/note_elm[1]"/>
						    <xsl:variable name="n2" select="etudiant/NOTES/note[1]/note_elm[2]"/>
						    <xsl:variable name="n3" select="etudiant/NOTES/note[2]/note_elm[1]"/>
						    <xsl:variable name="n4" select="etudiant/NOTES/note[2]/note_elm[2]"/>
						    <xsl:variable name="n5" select="etudiant/NOTES/note[2]/note_elm[3]"/>
						    <xsl:variable name="n6" select="etudiant/NOTES/note[3]/note_elm[1]"/>
						    <xsl:variable name="n7" select="etudiant/NOTES/note[3]/note_elm[2]"/>
						    <xsl:variable name="n8" select="etudiant/NOTES/note[3]/note_elm[3]"/>
						    <xsl:variable name="n9" select="etudiant/NOTES/note[4]/note_elm[1]"/>
						    <xsl:variable name="n10" select="etudiant/NOTES/note[4]/note_elm[2]"/>
						    <xsl:variable name="n11" select="etudiant/NOTES/note[4]/note_elm[3]"/>
						    <xsl:variable name="n12" select="etudiant/NOTES/note[5]/note_elm[1]"/>
						    <xsl:variable name="n13" select="etudiant/NOTES/note[5]/note_elm[2]"/>
						    <xsl:variable name="n14" select="etudiant/NOTES/note[6]/note_elm[1]"/>
						    <xsl:variable name="n15" select="etudiant/NOTES/note[6]/note_elm[2]"/>
						    <xsl:variable name="n16" select="etudiant/NOTES/note[6]/note_elm[3]"/>
						    <xsl:variable name="n17" select="etudiant/NOTES/note[7]/note_elm[1]"/>
						    <xsl:variable name="n18" select="etudiant/NOTES/note[7]/note_elm[2]"/>
						    <xsl:variable name="n19" select="etudiant/NOTES/note[8]/note_elm[1]"/>
						    <xsl:variable name="n20" select="etudiant/NOTES/note[8]/note_elm[2]"/>
						    <xsl:variable name="n21" select="etudiant/NOTES/note[8]/note_elm[3]"/>
						    <xsl:variable name="n22" select="etudiant/NOTES/note[9]/note_elm[1]"/>
						    <xsl:variable name="n23" select="etudiant/NOTES/note[9]/note_elm[2]"/>
						    <xsl:variable name="n24" select="etudiant/NOTES/note[9]/note_elm[3]"/>
						    <xsl:variable name="n25" select="etudiant/NOTES/note[10]/note_elm[1]"/>
						    <xsl:variable name="n26" select="etudiant/NOTES/note[10]/note_elm[2]"/>
						    <xsl:variable name="n27" select="etudiant/NOTES/note[11]/note_elm[1]"/>
						    <xsl:variable name="n28" select="etudiant/NOTES/note[11]/note_elm[2]"/>
						    <xsl:variable name="n29" select="etudiant/NOTES/note[12]/note_elm[1]"/>
						    <xsl:variable name="n30" select="etudiant/NOTES/note[12]/note_elm[2]"/>
						    <xsl:variable name="n31" select="etudiant/NOTES/note[12]/note_elm[3]"/>
						    
						    <xsl:variable name="m1" select="($n1 +$n2) div 2"/>
						    <xsl:variable name="m2" select="($n3 +$n4 +$n5) div 3"/>
						    <xsl:variable name="m3" select="($n6 +$n7 +$n8) div 3"/>
						    <xsl:variable name="m4" select="($n9 +$n10 +$n11) div 3"/>
						    <xsl:variable name="m5" select="($n12 +$n13) div 2"/>
						    <xsl:variable name="m6" select="($n14 +$n15 +$n16) div 3"/>
						    <xsl:variable name="m7" select="($n17 +$n18) div 2"/>
						    <xsl:variable name="m8" select="($n19 +$n20 +$n21) div 3"/>
						    <xsl:variable name="m9" select="($n22 +$n23 +$n24) div 3"/>
						    <xsl:variable name="m10" select="($n26+$n25) div 2"/>
						    <xsl:variable name="m11" select="($n27 +$n28) div 2"/>
						    <xsl:variable name="m12" select="($n29 +$n30 +$n31) div 3"/>
						    <xsl:variable name="y" select="($m1+$m2+$m3+$m4+$m5+$m6+$m7+$m8+$m9+$m10+$m11+$m12) div 12 "/>
						    
						    <xsl:value-of select="format-number($y,'##.##')"/>
                          <xsl:choose >
                          <xsl:when test="$y  =  12">
                            <fo:block>
                              ADMIS
                            </fo:block>
                        </xsl:when>
                        <xsl:when test="$y   &lt;14">
                            <fo:block text-align="center">
                                BIEN
                            </fo:block>
                        </xsl:when>
                        <xsl:when test="$y  &lt; 17">
                            <fo:block text-align="center">
                                TRES BIEN
                            </fo:block>
                        </xsl:when>
                        <xsl:when test="$y  &lt; 20">
                            <fo:block text-align="center">
                                EXCELANT
                            </fo:block>
                        </xsl:when>
                    </xsl:choose>


                        </fo:block>
                    </fo:block>
                </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>