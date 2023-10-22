<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template  match="/" >
<html>
    <head>
    <title>emploi du temps</title>
    </head>
    <body>
    
        <div >
            <div style="font-family:sans-serif; font-size:2em; font-weight:bold; background-color:#c8c8c8; ">
                <div style="text-align:center;" >EMPLOIT DU TEMPS</div>
            </div>
                  
                <div>
                    <table style="border-style:solid; border-width:0.5mm; width:100%; text-align:center; text-transform:uppercase;">
                        
                        
                         <tr >
                          <td  style="width:4%;background-color:#c8c8c8;">
                            <div>
                            <table style="width:100%; text-align:center; text-transform:uppercase;" >
                        
                                                    <tr style="height:10mm">
                                                        <td >
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                08:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                08:30
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                09:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                09:30
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                10:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                10:30
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                11:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                11:30
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                12:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                12:30
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                13:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                13:30
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                14:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                14:30
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                15:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                15:30
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                16:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                16:30
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                17:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                17:30
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:6mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                                18:00
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    <tr style="height:3mm">
                                                        <td>
                                                            <div style="font-size:0.7em">
                                                            </div>
                                                        </td>

                                                    </tr>
                                
                            </table>
                          </div>
                        </td>
                          <td >
                            <div>
                            
                          <table style="width:100%; text-align:center;" >
                            
                            <xsl:variable name="CM" select="concat('#','b5a9fc')"/>
                            <xsl:variable name="TD" select="concat('#','f9fca9')"/>
                            <xsl:variable name="TP" select="concat('#','a9fcad')"/>
                            
                            
                                <tr style="text-align:center">
                                    <td style="width:16.66%;border-right-style:solid; border-right-width:0.5mm;">
                                        <div >
                                            <table style="width:100%; text-align:center;  overflow:hidden">
                                                
                                                    <tr style="height:15mm; background-color:#c8c8c8" >
                                                        
                                                        <td >
                                                            <div>
                                                                Lundi
                                                            </div>
                                                            <div>
                                                                <xsl:value-of select="semaine/lundi/@date" />
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <xsl:choose>                                                               
                                                    <xsl:when test="count(semaine/lundi/séance)=0">
                                                    <xsl:for-each select="(//*)[position()&lt;=42]">
                                                        <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                                <div>
                                                                    
                                                                </div>
                                                            </td>
    
                                                        </tr>
                                                        
                                                        </xsl:for-each>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:for-each select="semaine/lundi/séance[1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>   
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -32" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                
                                                            <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    
                                                    
                                                    
                                                    
                                                    <xsl:for-each select="semaine/lundi/séance[position()&gt;1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>
                                                    <xsl:variable name="pos" select="position()"/>
                                                    <xsl:variable name="hour0" select="substring(/semaine/lundi/séance[$pos]/@fin,1,2)"/>
                                                    <xsl:variable name="min0" select="substring(/semaine/lundi/séance[$pos]/@fin,4,2)"/>    
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -(4*$hour0 + ($min0 div 15))" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <xsl:variable name="last_hour" select="substring(/semaine/lundi/séance[last()]/@fin,1,2)"/>
                                                    <xsl:variable name="last_min" select="substring(/semaine/lundi/séance[last()]/@fin,4,2)"/>
                                                    <xsl:variable name="last_empty" select="74 -(4*$last_hour + ($last_min div 15))" />


                                                    <xsl:for-each select="(//*)[position()&lt;=$last_empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    
                                                    </xsl:for-each>
                                                    </xsl:otherwise>
                                                    </xsl:choose>
                                                
                                            </table>

                                        </div>
                                    </td>
                                    <td style="width:16.66%;border-right-style:solid; border-right-width:0.5mm;">
                                        <div>
                                            <table style="width:100%; text-align:center; ">
                                                
                                                    <tr style="height:15mm; background-color:#c8c8c8" >
                                                        <td >
                                                            <div>
                                                                Mardi
                                                            </div>
                                                            <div>
                                                                <xsl:value-of select="semaine/mardi/@date" />
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <xsl:choose>                                                               
                                                    <xsl:when test="count(semaine/mardi/séance)=0">
                                                    <xsl:for-each select="(//*)[position()&lt;=42]">
                                                        <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                                <div>
                                                                    
                                                                </div>
                                                            </td>
    
                                                        </tr>
                                                        
                                                        </xsl:for-each>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                    <xsl:for-each select="semaine/mardi/séance[1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>   
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -32" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                
                                                            <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    
                                                    
                                                    
                                                    
                                                    <xsl:for-each select="semaine/mardi/séance[position()&gt;1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>
                                                    <xsl:variable name="pos" select="position()"/>
                                                    <xsl:variable name="hour0" select="substring(/semaine/mardi/séance[$pos]/@fin,1,2)"/>
                                                    <xsl:variable name="min0" select="substring(/semaine/mardi/séance[$pos]/@fin,4,2)"/>    
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -(4*$hour0 + ($min0 div 15))" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <xsl:variable name="last_hour" select="substring(/semaine/mardi/séance[last()]/@fin,1,2)"/>
                                                    <xsl:variable name="last_min" select="substring(/semaine/mardi/séance[last()]/@fin,4,2)"/>
                                                    <xsl:variable name="last_empty" select="74 -(4*$last_hour + ($last_min div 15))" />


                                                    <xsl:for-each select="(//*)[position()&lt;=$last_empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    
                                                    </xsl:for-each>
                                                    </xsl:otherwise>
                                                    </xsl:choose>
                                                
                                            </table>
                                        </div>
                                    </td>
                                    <td style="width:16.66%;border-right-style:solid; border-right-width:0.5mm;">
                                        <div>
                                            <table style="width:100%; text-align:center; ">
                                                
                                                    <tr style="height:15mm; background-color:#c8c8c8" >
                                                        <td >
                                                            <div>
                                                                Mercredi
                                                            </div>
                                                            <div>
                                                                <xsl:value-of select="semaine/mercredi/@date" />
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <xsl:choose>                                                               
                                                    <xsl:when test="count(semaine/mercredi/séance)=0">
                                                    <xsl:for-each select="(//*)[position()&lt;=42]">
                                                        <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                                <div>
                                                                    
                                                                </div>
                                                            </td>
    
                                                        </tr>
                                                        
                                                        </xsl:for-each>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                    <xsl:for-each select="semaine/mercredi/séance[1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>   
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -32" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                
                                                            <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    
                                                    
                                                    
                                                    
                                                    <xsl:for-each select="semaine/mercredi/séance[position()&gt;1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>
                                                    <xsl:variable name="pos" select="position()"/>
                                                    <xsl:variable name="hour0" select="substring(/semaine/mercredi/séance[$pos]/@fin,1,2)"/>
                                                    <xsl:variable name="min0" select="substring(/semaine/mercredi/séance[$pos]/@fin,4,2)"/>    
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -(4*$hour0 + ($min0 div 15))" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <xsl:variable name="last_hour" select="substring(/semaine/mercredi/séance[last()]/@fin,1,2)"/>
                                                    <xsl:variable name="last_min" select="substring(/semaine/mercredi/séance[last()]/@fin,4,2)"/>
                                                    <xsl:variable name="last_empty" select="74 -(4*$last_hour + ($last_min div 15))" />


                                                    <xsl:for-each select="(//*)[position()&lt;=$last_empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    
                                                    </xsl:for-each>
                                                    </xsl:otherwise>
                                                    </xsl:choose>
                                                
                                            </table>
                                        </div>
                                    </td>
                                    <td style="width:16.66%;border-right-style:solid; border-right-width:0.5mm;">
                                        <div>
                                            <table style="width:100%; text-align:center; ">
                                                
                                                    <tr style="height:15mm; background-color:#c8c8c8" >
                                                        <td >
                                                            <div>
                                                                Jeudi
                                                            </div>
                                                            <div>
                                                                <xsl:value-of select="semaine/jeudi/@date" />
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <xsl:choose>                                                               
                                                    <xsl:when test="count(semaine/jeudi/séance)=0">
                                                    <xsl:for-each select="(//*)[position()&lt;=42]">
                                                        <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                                <div>
                                                                    
                                                                </div>
                                                            </td>
    
                                                        </tr>
                                                        
                                                        </xsl:for-each>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                    <xsl:for-each select="semaine/jeudi/séance[1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>   
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -32" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                
                                                            <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    
                                                    
                                                    
                                                    
                                                    <xsl:for-each select="semaine/jeudi/séance[position()&gt;1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>
                                                    <xsl:variable name="pos" select="position()"/>
                                                    <xsl:variable name="hour0" select="substring(/semaine/jeudi/séance[$pos]/@fin,1,2)"/>
                                                    <xsl:variable name="min0" select="substring(/semaine/jeudi/séance[$pos]/@fin,4,2)"/>    
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -(4*$hour0 + ($min0 div 15))" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <xsl:variable name="last_hour" select="substring(/semaine/jeudi/séance[last()]/@fin,1,2)"/>
                                                    <xsl:variable name="last_min" select="substring(/semaine/jeudi/séance[last()]/@fin,4,2)"/>
                                                    <xsl:variable name="last_empty" select="74 -(4*$last_hour + ($last_min div 15))" />


                                                    <xsl:for-each select="(//*)[position()&lt;=$last_empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    
                                                    </xsl:for-each>
                                                    </xsl:otherwise>
                                                    </xsl:choose>
                                                
                                            </table>
                                        </div>
                                    </td>
                                    <td style="width:16.66%;border-right-style:solid; border-right-width:0.5mm;">
                                        <div>
                                            <table style="width:100%; text-align:center; ">
                                                
                                                    <tr style="height:15mm; background-color:#c8c8c8" >
                                                        <td >
                                                            <div>
                                                                Vendredi
                                                            </div>
                                                            <div>
                                                                <xsl:value-of select="semaine/vendredi/@date" />
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <xsl:choose>                                                               
                                                    <xsl:when test="count(semaine/vendredi/séance)=0">
                                                    <xsl:for-each select="(//*)[position()&lt;=42]">
                                                        <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                                <div>
                                                                    
                                                                </div>
                                                            </td>
    
                                                        </tr>
                                                        
                                                        </xsl:for-each>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                    <xsl:for-each select="semaine/vendredi/séance[1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>   
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -32" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                
                                                            <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    
                                                    
                                                    
                                                    
                                                    <xsl:for-each select="semaine/vendredi/séance[position()&gt;1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>
                                                    <xsl:variable name="pos" select="position()"/>
                                                    <xsl:variable name="hour0" select="substring(/semaine/vendredi/séance[$pos]/@fin,1,2)"/>
                                                    <xsl:variable name="min0" select="substring(/semaine/vendredi/séance[$pos]/@fin,4,2)"/>    
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -(4*$hour0 + ($min0 div 15))" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <xsl:variable name="last_hour" select="substring(/semaine/vendredi/séance[last()]/@fin,1,2)"/>
                                                    <xsl:variable name="last_min" select="substring(/semaine/vendredi/séance[last()]/@fin,4,2)"/>
                                                    <xsl:variable name="last_empty" select="74 -(4*$last_hour + ($last_min div 15))" />


                                                    <xsl:for-each select="(//*)[position()&lt;=$last_empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    
                                                    </xsl:for-each>
                                                    </xsl:otherwise>
                                                    </xsl:choose>
                                                
                                            </table>
                                        </div>
                                    </td>
                                    <td >
                                        <div>
                                            <table style="width:100%; text-align:center; ">
                                                
                                                    <tr style="height:15mm; background-color:#c8c8c8" >
                                                        <td >
                                                            <div>
                                                                Samedi
                                                            </div>
                                                            <div>
                                                                <xsl:value-of select="semaine/samedi/@date" />
                                                            </div>
                                                        </td>
                                                    </tr>

                                                    <xsl:choose>                                                               
                                                    <xsl:when test="count(semaine/samedi/séance)=0">
                                                    <xsl:for-each select="(//*)[position()&lt;=42]">
                                                        <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                                <div>
                                                                    
                                                                </div>
                                                            </td>
    
                                                        </tr>
                                                        
                                                        </xsl:for-each>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                    <xsl:for-each select="semaine/samedi/séance[1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>   
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -32" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                
                                                            <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>
                                                    
                                                    
                                                    
                                                    
                                                    <xsl:for-each select="semaine/samedi/séance[position()&gt;1]">
                                                    <xsl:variable name="hour" select="substring(@debut,1,2)"/>
                                                    <xsl:variable name="min" select="substring(@debut,4,2)"/>
                                                    <xsl:variable name="pos" select="position()"/>
                                                    <xsl:variable name="hour0" select="substring(/semaine/samedi/séance[$pos]/@fin,1,2)"/>
                                                    <xsl:variable name="min0" select="substring(/semaine/samedi/séance[$pos]/@fin,4,2)"/>    
                                                    <xsl:variable name="empty" select="4*$hour + ($min div 15) -(4*$hour0 + ($min0 div 15))" />
                                                    <xsl:variable name="color">
                                                        <xsl:choose>
                                                        <xsl:when test="@type = 'CM'">
                                                            <xsl:value-of select="$CM"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TD'">
                                                            <xsl:value-of select="$TD"/>
                                                        </xsl:when>
                                                        <xsl:when test="@type = 'TP'">
                                                            <xsl:value-of select="$TP"/>
                                                        </xsl:when>
                                                        <xsl:otherwise></xsl:otherwise>
                                                        </xsl:choose>
                                                    </xsl:variable>
                                                    <xsl:for-each select="(//*)[position()&lt;=$empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <tr style="height:17.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div style="margin:0.1mm; border:0.3mm solid;  border-radius:5pt 5pt;" >
                                                                <div style="font-size:2.2mm; background-color:{$color}; border-radius:5pt 5pt; overflow:hidden; border:0.2mm solid">
                                                                    <xsl:value-of select="@type" /> - <xsl:value-of select="@debut" /> - <xsl:value-of select="@fin" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm; font-weight:bold; margin-top:4mm; margin-bottom:1mm; overflow-wrap:no-wrap; overflow:hidden">
                                                                        <xsl:value-of select="module" />
                                                                    </div >
                                                                    <div style=" font-size:2.2mm">
                                                                        <xsl:value-of select="Professeur" />
                                                                    </div>
                                                                    <div style="font-size:2.2mm; margin-bottom:4mm">
                                                                        <xsl:value-of select="salle" />
                                                                    </div>

                                                            </div>
                                                        </td>

                                                    </tr>
                                                    </xsl:for-each>


                                                    <xsl:variable name="last_hour" select="substring(/semaine/samedi/séance[last()]/@fin,1,2)"/>
                                                    <xsl:variable name="last_min" select="substring(/semaine/samedi/séance[last()]/@fin,4,2)"/>
                                                    <xsl:variable name="last_empty" select="74 -(4*$last_hour + ($last_min div 15))" />


                                                    <xsl:for-each select="(//*)[position()&lt;=$last_empty]">
                                                    <tr style="height:2.8mm; border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                        <td style="border-top-style:solid; border-top-width:0.2mm; border-top-color:#c8c8c8">
                                                            <div>
                                                                
                                                            </div>
                                                        </td>

                                                    </tr>
                                                    
                                                    </xsl:for-each>
                                                    </xsl:otherwise>
                                                    </xsl:choose>
                                                    

                                                
                                            </table>
                                        </div>
                                    </td>

                                </tr>
                                   
                            
                        </table>
                          </div>
                        </td>
                         </tr>
                        
                        
                       </table>       
                
                
                    </div>
                    


        </div>
        
        <div>
            <img src="https://lh3.googleusercontent.com/DmN_WgxHHgsPmWB_Wh986Gtw1SdTyB8dgjHWlcusemVx2Y9zO3d-PfPIuUgnmRjb8O0TRJAv2Yyb6Gqqo8nY6yaS5EAL22qi0LQYPvb2xlBH82ekqrqqLPvoHVxQgYQAa34gCt9cVXkw9mvmIkYhqjZR4Tkp90gif_pMdo4Z2NDXvECVGeARr3cYWnYLV9OQ-zUsKp76R7J6bN67e9rSdKD6mwU2Vt7rsDOfMpynjvPC9eayNoANltDQ3zP61Y2L8yxlKMnC4zXFL_EAf_WEly3FChkcI0jy5aLp4r9yfvGO559Vj3EITxXGIatez9X4OWphROnLOkWpD_ONLUyEpGG4SK59xFz-7LdG_I5-CBjMeHT93HVV3x-g6jtLKTAy8_einjkLmzOhH6zeA9T-LrbST_MfkyVfdvcSHEL77mGTIFbc0iqYdLe_QUTvAZ1BKPBfuIHVL4DeQrNYDjU3YwEi77f_2FOvC5Wsz2lmzcXDQ6MoV4LrxwkcqzByP9cIYV1Lg_JHv-YCh1Vwlmi3KrteSR3cU4MtlxrLtxD7lPrMyF5NjH19PAw2nobAU8_WIE_0lsJZChjdhdTu0ayK5SkrJT-rU2RMRKq_B7sZk8LhlO5fV8xVnA2Oo8S1yM9N3ScgwmhDpZWF9GGA2DxUnGK8gpFJ34x_lDLn1LIt9sTAqFXRIrVuUbCBFUsJkeMv52Ku2kLasmeJ_hBA2nJ2HatUe1fnXY9TocL8xbgWoGYLjSgtLCT0MX0GFgLOqqTNDHi0cZRx2VAJUAl-GSodILrRMzU5XpZxlQPRxjs4GOoFROWqVpoGEtJgrJ_z6SAM3n-orW0lGvtCuJoGI8fapboo7XkHIlOI3PxeNs1Urw43PXRgijjQogfrMd2jVd8uAHD2r7r57OBz1Ch9D83tgz66GLPOmT_xr2gzSGXiIJ2wtqvS=w1486-h56-no?authuser=0" />     
        </div>
    
    </body>
    </html>

</xsl:template>

</xsl:stylesheet>