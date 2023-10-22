declare variable $code as xs:string external;
  declare function local:note($code as xs:string)
{
for $etudiant in  doc('res/xml/ginf2.xml')/GINF2/etudiant
let $Nom:=$etudiant/Nom
let $prenom := $etudiant/Prénom
let $l := $etudiant/Lieu_Naissance
let $d := $etudiant/Date_Naissance/day
let $m := $etudiant/Date_Naissance/month
let $y := $etudiant/Date_Naissance/year
let $cin := $etudiant/@CIN
let $cne := $etudiant/@CNE
let $apogee := $etudiant/@code_apogée
return 
   <etudiant >
   {$cin}
  {$cne} 
  {$apogee}
<Nom>{data($Nom)}</Nom>
<Prénom>{data($prenom)}</Prénom>
<Lieu_Naissance>{data($l)}</Lieu_Naissance>
<Date_Naissance>
<day>{data($d)}</day>5
<month>{data($m)}</month>
<year>{data($y)}</year>
</Date_Naissance>
<NOTES>{$etudiant/NOTES/note[@module_code = $code]}</NOTES>
</etudiant>
};
<GINF2>{
  local:note($code)
  }</GINF2>