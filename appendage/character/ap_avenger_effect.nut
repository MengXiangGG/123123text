
//占폶占폯占싯썸く占폗占쏙옙nut占쌨?О占쏙옙占퐓占쏙옙占쌥좧占퐑占폫占쏙옙占퐓占폗占퐐占?占쌥춏占싼?占싱쩳占폟占퐌척占쏙옙
//占?占싱좬占폚占퐐60 QQ506807329   占쏙옙占?NUT占퐏占?占퐂占쌨?옙 占쏙옙占쏙옙棘占?500占?占쏙옙C占퐐占?1000占실턔占쏙옙짝占쏙옙j占쏙옙占폗占?占싸?㏆옙 占쌀쫜占폞占쏙옙占쏙옙占?占?占쏙옙 占쏙옙占쌈? 占싯놂옙 占싣ο옙 占쏙옙占쏙옙 NPC NPK 占실わ옙 占폻占쏙옙 act obj  UI占싻?占쏙옙占쏙옙占쏙옙占폗占쏙옙占?占퐄占폟占쏙옙占?占폚

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_avenger_effect")
 appendage.sq_AddFunctionName("prepareDraw", "prepareDraw_appendage_avenger_effect")
 appendage.sq_AddFunctionName("onStart", "onStart_appendage_avenger_effect")
 appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_avenger_effect")
 appendage.sq_AddFunctionName("drawAppend", "drawAppend_appendage_avenger_effect")
 appendage.sq_AddFunctionName("isEnd", "isEnd_appendage_avenger_effect")
}


function sq_AddEffect(appendage)
{
  
}

function proc_appendage_avenger_effect(TbCe1WWK_YsEq6e8WQ)
{
 if(!TbCe1WWK_YsEq6e8WQ) {
 return;
 }
 
} ;


function onStart_appendage_avenger_effect(M16M8p7ObO3VMEm)
{
 if(!M16M8p7ObO3VMEm) {
 return;
 }
 
 local C_r7xLiWykfcf0wA = M16M8p7ObO3VMEm.getParent(); 
 
 
} ;


function prepareDraw_appendage_avenger_effect(Peve7x9IjcnVoGmqGkjyh)
{
 if(!Peve7x9IjcnVoGmqGkjyh) {
 return;
 }
 
 local ZqbeiCuChwSTdliOeb = Peve7x9IjcnVoGmqGkjyh.getParent(); 
} ;




function onEnd_appendage_avenger_effect(zgBj6YwUai2)
{
 if(!zgBj6YwUai2) {
 return;
 }
 
 local I0nXPLEfsilAJNes9HEE9t2 = zgBj6YwUai2.getParent();
} ;

function drawAppend_appendage_avenger_effect(GL8eefObLaAtjcVe1ujd0GIe, ZxxtdmTbzI7h0Gscj, rF7_fgrdv4CVNwVPdZrocD5, NGGF0z5LWVRjdL76003m, EABzolli7foIj2mWks3)
{
 if(!GL8eefObLaAtjcVe1ujd0GIe) {
 return;
 }
 
 local es1nvfcD7ocPv5j3KpP0RQzn = GL8eefObLaAtjcVe1ujd0GIe.getParent();
 
 if(!es1nvfcD7ocPv5j3KpP0RQzn) {
 GL8eefObLaAtjcVe1ujd0GIe.setValid(false);
 return;
 }
 
 local FVHncQY_QmePhB = sq_GetCurrentAnimation(es1nvfcD7ocPv5j3KpP0RQzn);
 
 if(!FVHncQY_QmePhB) {
 GL8eefObLaAtjcVe1ujd0GIe.setValid(false);
 return;
 }
 
 local NU9JLQqaRcA7R2dzZltDkUr = sq_GetCurrentTime(FVHncQY_QmePhB);
 
 local SKPBbrslsF3NkRIAQEw = 50;
 local Gl1Bt5puwe = sq_GetUniformVelocity(200, SKPBbrslsF3NkRIAQEw, GL8eefObLaAtjcVe1ujd0GIe.getTimer().Get(), 500);
 
 local gzb71LtFhqoDJ_h2y = sq_RGB(0, 0, 0);
 local mwJxqKuHDOlC4u9oDxXvY = sq_ALPHA(Gl1Bt5puwe);
 FVHncQY_QmePhB.setEffectLayer(true, GRAPHICEFFECT_NONE, true, gzb71LtFhqoDJ_h2y, mwJxqKuHDOlC4u9oDxXvY, true, false);
 
 
 local lHFXzIeBH33cI0YGpULr5va = sq_AniLayerListSize(FVHncQY_QmePhB);
 
 if(lHFXzIeBH33cI0YGpULr5va > 0) {
 
 
 for(local y1EntC8A6EJ1OigmE=0;y1EntC8A6EJ1OigmE<lHFXzIeBH33cI0YGpULr5va;y1EntC8A6EJ1OigmE+=1) {
 local ChKmQ8TMwrTlFKxiFk4YPX = sq_getAniLayerListObject(FVHncQY_QmePhB, y1EntC8A6EJ1OigmE);
 
 if(ChKmQ8TMwrTlFKxiFk4YPX) {
 local jh5wT52ooWiRVTblzXuPV6T = ChKmQ8TMwrTlFKxiFk4YPX.GetCurrentFrame().GetGraphicEffect();
 
 if(jh5wT52ooWiRVTblzXuPV6T != GRAPHICEFFECT_LINEARDODGE) {
 ChKmQ8TMwrTlFKxiFk4YPX.setEffectLayer(true, GRAPHICEFFECT_NONE, true, gzb71LtFhqoDJ_h2y, mwJxqKuHDOlC4u9oDxXvY, true, false);
 }
 }
 }
 }
 
 
 
 
 
 
 
 
 
 if(Gl1Bt5puwe == SKPBbrslsF3NkRIAQEw) {
 GL8eefObLaAtjcVe1ujd0GIe.setValid(false);
 }
} ;

 
function isEnd_appendage_avenger_effect(byHRkgj_Njaql)
{
 if(!byHRkgj_Njaql) return false;
 
 local _AbYHMUVdlZaB0XccCY77UWj = byHRkgj_Njaql.getTimer().Get();
 
 return false;
} ;