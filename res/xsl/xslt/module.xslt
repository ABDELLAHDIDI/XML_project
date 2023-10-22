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
<xsl:choose>
  <xsl:when test="count(/module/etudiant[@CIN='k19006310']/note/note_elm) = 2 ">
  <th colspan= "2">
    <xsl:value-of select ="module/etudiant/note/@module_code"/>
</th>
  </xsl:when>
  <xsl:otherwise>
    <th colspan= "3">
        <xsl:value-of select ="module/etudiant/note/@module_code"/>
</th>
  </xsl:otherwise>
</xsl:choose>
        <th rowspan="4">moyenne</th>
        <th rowspan="4">décision</th>
</tr>
<tr>
  <xsl:choose>
          <xsl:when test="count(/module/etudiant[@CIN='k19006310']/note/note_elm) = 2 ">
          <th colspan="2" >
            <xsl:value-of select ="module/etudiant/note/@module_name"/>  
        </th>
          </xsl:when>
          <xsl:otherwise>
            <th colspan="3" >
                <xsl:value-of select ="module/etudiant/note/@module_name"/>  
            </th>
          </xsl:otherwise>
        </xsl:choose>
</tr>
    <tr>
        <th colspan="1">
            <xsl:value-of select ="module/etudiant/note/note_elm[1]/@elm_name"/>
        </th>
        <th colspan="1">
            <xsl:value-of select =
            "module/etudiant/note/note_elm[2]/@elm_name"/>
        </th>

<xsl:choose>
  <xsl:when test="count(/module/etudiant[@CIN='k19006310']/note/note_elm) = 3 ">
  <th colspan="1">
    <xsl:value-of select ="module/etudiant/note/note_elm[3]/@elm_name"/>
</th>
  </xsl:when>
</xsl:choose>

    </tr>

    <tr>
        <th >poid = 1</th>
        <th >poid = 1</th>
    <xsl:choose>
          <xsl:when test="count(/module/etudiant[@CIN='k19006310']/note/note_elm) = 3">
          <th >poid = 1</th>
          </xsl:when>
        </xsl:choose>
    </tr>
    <xsl:apply-templates select="module" />
</table>
</xsl:template>

<xsl:template match="module">
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
<xsl:apply-templates select="note"/>
<xsl:variable name="moy" select="sum(./note/note_elm) div count(./note/note_elm)"/>
<xsl:choose>
  <xsl:when test="$moy &lt; 7">
  <td bgcolor="red">
    <xsl:value-of select="format-number($moy,'##.##')"/>
 </td>
 <td>PAS DE RATTRAPAGE</td>
  </xsl:when>
  <xsl:when test="$moy &lt; 12">
  <td bgcolor="orange">
    <xsl:value-of select="format-number($moy,'##.##')"/>
 </td>
 <td>RATTRAPAGE</td>
  </xsl:when>
  <xsl:otherwise>
    <td bgcolor="green">
        <xsl:value-of select="format-number($moy,'##.##')"/>
     </td>
     <td>VALIDER</td>
  </xsl:otherwise>
</xsl:choose></tr>
</xsl:template>
<xsl:template match="Date_Naissance">
<td>
    <xsl:value-of select="day"/>/
    <xsl:value-of select="month"/>/
    <xsl:value-of select="year"/>
</td>
</xsl:template>

<xsl:template match="note">
  <td>
  <xsl:value-of select="note_elm[1]"/>
</td>
<td>
  <xsl:value-of select="note_elm[2]"/>
</td>
<xsl:choose >
  <xsl:when   test="count(/module/etudiant[@CIN='k19006310']/note/note_elm) = 3">
  <td>
      <xsl:value-of select="note_elm[3]"/>
    </td>
  </xsl:when>
</xsl:choose>

</xsl:template>
</xsl:stylesheet>