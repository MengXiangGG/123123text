
//?Y?T????A??nut??????w????C?u?R???w?A?t?~??n??[??i?H?po??
//?@??G?C?t60 QQ506807329   ???{NUT?s?{?g??? ????о?1500?@??C?t?~1000??O??|??j???A?`???? ??p?G????? ?]?? ????~ ??? ??? ???? NPC NPK ??? ?d?? act obj  UI?е{???????A???|?i?H???{?C

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_PowerOfDarkness")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_PowerOfDarkness")
}


function proc_appendage_PowerOfDarkness(byHRkgj_Njaql)
{
 if(!byHRkgj_Njaql) {
 return;
 }
 local _AbYHMUVdlZaB0XccCY77UWj = byHRkgj_Njaql.getParent();
 local htB1MLYBQCAIdnBmcZfS7 = byHRkgj_Njaql.getSource();
 if(!_AbYHMUVdlZaB0XccCY77UWj || !htB1MLYBQCAIdnBmcZfS7 || htB1MLYBQCAIdnBmcZfS7.getState() == 13)
 {
 byHRkgj_Njaql.setValid(false);
 return;
 }
} ;




function onEnd_appendage_PowerOfDarkness(ECkRbiNJgubxQOsD)
{
 if(!ECkRbiNJgubxQOsD) {
 return;
 }
 
 local QH5oqecHM9mLBYfkBlsPP = ECkRbiNJgubxQOsD.getParent(); 
 if(QH5oqecHM9mLBYfkBlsPP) {
 sq_SimpleMoveToNearMovablePos(QH5oqecHM9mLBYfkBlsPP,200);
 }
 
} ;
