<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template  match="/" >
<table   cellpadding ="2" cellspacing="2"  border="2" >
    <tr>
        <th rowspan="4">CIN</th>
        <th rowspan="4">CNE</th>
        <th rowspan="4">apogee</th>
        <th rowspan="4">NOM</th>
        <th rowspan="4">PERNOM</th>
        <th rowspan="4">LEIU DE NAISSANCE </th>
        <th rowspan="4">DATE DE NAISSANCE </th>

<xsl:for-each  select ="GINF2/etudiant[@CIN='k19006310']/NOTES/note" >




<xsl:choose>
  <xsl:when test="count(note_elm) = 2 ">
  <th colspan= "2">
    <xsl:value-of select ="@module_code"/>
</th>
  </xsl:when>
  <xsl:otherwise>
    <th colspan= "3">
        <xsl:value-of select ="@module_code"/>
</th>
  </xsl:otherwise>
</xsl:choose>




</xsl:for-each>






        <th rowspan="4">moyenne</th>
   
</tr>

<tr>
    <xsl:for-each  select ="GINF2/etudiant[@CIN='k19006310']/NOTES/note" >
    <xsl:choose>
            <xsl:when test="count(note_elm) = 2 ">
            <th colspan="2" >
              <xsl:value-of select ="@module_name"/>  
          </th>
            </xsl:when>
            <xsl:otherwise>
              <th colspan="3" >
                  <xsl:value-of select ="@module_name"/>  
              </th>
            </xsl:otherwise>
          </xsl:choose>

        </xsl:for-each>
  </tr>






  <tr>
    <xsl:for-each  select ="GINF2/etudiant[@CIN='k19006310']/NOTES/note" >

    <th colspan="1">
        <xsl:value-of select ="note_elm[1]/@elm_name"/>
    </th>
    <th colspan="1">
        <xsl:value-of select =
        "note_elm[2]/@elm_name"/>
    </th>

<xsl:choose>
<xsl:when test="count(note_elm) = 3 ">
<th colspan="1">
<xsl:value-of select ="note_elm[3]/@elm_name"/>
</th>
</xsl:when>
</xsl:choose>


</xsl:for-each>

</tr>

<tr>
    <xsl:for-each  select ="GINF2/etudiant[@CIN='k19006310']/NOTES/note" >

    <th >poid = 1</th>
    <th >poid = 1</th>
<xsl:choose>
      <xsl:when test="count(note_elm) = 3">
      <th >poid = 1</th>
      </xsl:when>
    </xsl:choose>

</xsl:for-each>
</tr>
<xsl:apply-templates select="GINF2" />




    </table>
</xsl:template>


<xsl:template match="GINF2">
    <xsl:apply-templates select="etudiant"></xsl:apply-templates>
</xsl:template>

<xsl:template match="etudiant">
<tr>
<td>
    <xsl:value-of select="@CIN" />
</td>
<td>
    <xsl:value-of select="@CNE" />
</td>
<td>
    <xsl:value-of select="@code_apogée" />
</td>
<td>
    <xsl:value-of select="Nom" />
</td>
<td>
    <xsl:value-of select="Prénom" />
</td>
<td>
    <xsl:value-of select="Lieu_Naissance" />
</td>
<xsl:apply-templates select="Date_Naissance"/>
<xsl:apply-templates select="NOTES"/>


<td >
    <xsl:variable name="n1" select="./NOTES/note[1]/note_elm[1]"/>
    <xsl:variable name="n2" select="./NOTES/note[1]/note_elm[2]"/>
    <xsl:variable name="n3" select="./NOTES/note[2]/note_elm[1]"/>
    <xsl:variable name="n4" select="./NOTES/note[2]/note_elm[2]"/>
    <xsl:variable name="n5" select="./NOTES/note[2]/note_elm[3]"/>
    <xsl:variable name="n6" select="./NOTES/note[3]/note_elm[1]"/>
    <xsl:variable name="n7" select="./NOTES/note[3]/note_elm[2]"/>
    <xsl:variable name="n8" select="./NOTES/note[3]/note_elm[3]"/>
    <xsl:variable name="n9" select="./NOTES/note[4]/note_elm[1]"/>
    <xsl:variable name="n10" select="./NOTES/note[4]/note_elm[2]"/>
    <xsl:variable name="n11" select="./NOTES/note[4]/note_elm[3]"/>
    <xsl:variable name="n12" select="./NOTES/note[5]/note_elm[1]"/>
    <xsl:variable name="n13" select="./NOTES/note[5]/note_elm[2]"/>
    <xsl:variable name="n14" select="./NOTES/note[6]/note_elm[1]"/>
    <xsl:variable name="n15" select="./NOTES/note[6]/note_elm[2]"/>
    <xsl:variable name="n16" select="./NOTES/note[6]/note_elm[3]"/>
    <xsl:variable name="n17" select="./NOTES/note[7]/note_elm[1]"/>
    <xsl:variable name="n18" select="./NOTES/note[7]/note_elm[2]"/>
    <xsl:variable name="n19" select="./NOTES/note[8]/note_elm[1]"/>
    <xsl:variable name="n20" select="./NOTES/note[8]/note_elm[2]"/>
    <xsl:variable name="n21" select="./NOTES/note[8]/note_elm[3]"/>
    <xsl:variable name="n22" select="./NOTES/note[9]/note_elm[1]"/>
    <xsl:variable name="n23" select="./NOTES/note[9]/note_elm[2]"/>
    <xsl:variable name="n24" select="./NOTES/note[9]/note_elm[3]"/>
    <xsl:variable name="n25" select="./NOTES/note[10]/note_elm[1]"/>
    <xsl:variable name="n26" select="./NOTES/note[10]/note_elm[2]"/>
    <xsl:variable name="n27" select="./NOTES/note[11]/note_elm[1]"/>
    <xsl:variable name="n28" select="./NOTES/note[11]/note_elm[2]"/>
    <xsl:variable name="n29" select="./NOTES/note[12]/note_elm[1]"/>
    <xsl:variable name="n30" select="./NOTES/note[12]/note_elm[2]"/>
    <xsl:variable name="n31" select="./NOTES/note[12]/note_elm[3]"/>
    
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
    <xsl:variable name="m" select="($m1+$m2+$m3+$m4+$m5+$m6+$m7+$m8+$m9+$m10+$m11+$m12) div 12 "/>
    
    <xsl:value-of select="format-number($m,'##.##')" />
    
 </td>



</tr>
</xsl:template>
<xsl:template match="Date_Naissance">
<td>
    <xsl:value-of select="day"/>
    <xsl:value-of select="month"/>
    <xsl:value-of select="year"/>
</td>
</xsl:template>

<xsl:template match="NOTES">
    <xsl:for-each select="note">


  <td>
  <xsl:value-of select="note_elm[1]"/>
</td>

<td>
  <xsl:value-of select="note_elm[2]"/>
</td>

<xsl:choose >
  <xsl:when   test="count(note_elm) = 3">
  <td>
      <xsl:value-of select="note_elm[3]"/>
    </td>
  </xsl:when>
</xsl:choose>


</xsl:for-each>
</xsl:template>
    
    
 
</xsl:stylesheet>