
//占폶占폯占싯썸く占폗占쏙옙nut占쌨?О占쏙옙占퐓占쏙옙占쌥좧占퐑占폫占쏙옙占퐓占폗占퐐占?占쌥춏占싼?占싱쩳占폟占퐌척占쏙옙
//占?占싱좬占폚占퐐60 QQ506807329   占쏙옙占?NUT占퐏占?占퐂占쌨?옙 占쏙옙占쏙옙棘占?500占?占쏙옙C占퐐占?1000占실턔占쏙옙짝占쏙옙j占쏙옙占폗占?占싸?㏆옙 占쌀쫜占폞占쏙옙占쏙옙占?占?占쏙옙 占쏙옙占쌈? 占싯놂옙 占싣ο옙 占쏙옙占쏙옙 NPC NPK 占실わ옙 占폻占쏙옙 act obj  UI占싻?占쏙옙占쏙옙占쏙옙占폗占쏙옙占?占퐄占폟占쏙옙占?占폚

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

