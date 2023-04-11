
//占폶占폯占싯썸く占폗占쏙옙nut占쌨?О占쏙옙占퐓占쏙옙占쌥좧占퐑占폫占쏙옙占퐓占폗占퐐占?占쌥춏占싼?占싱쩳占폟占퐌척占쏙옙
//占?占싱좬占폚占퐐60 QQ506807329   占쏙옙占?NUT占퐏占?占퐂占쌨?옙 占쏙옙占쏙옙棘占?500占?占쏙옙C占퐐占?1000占실턔占쏙옙짝占쏙옙j占쏙옙占폗占?占싸?㏆옙 占쌀쫜占폞占쏙옙占쏙옙占?占?占쏙옙 占쏙옙占쌈? 占싯놂옙 占싣ο옙 占쏙옙占쏙옙 NPC NPK 占실わ옙 占폻占쏙옙 act obj  UI占싻?占쏙옙占쏙옙占쏙옙占폗占쏙옙占?占퐄占폟占쏙옙占?占폚

function sq_AddFunctionName(appendage)
{
 appendage.sq_AddFunctionName("proc", "proc_appendage_priest_scythe_mastery")
 appendage.sq_AddFunctionName("isDrawAppend", "isDrawAppend_appendage_priest_scythe_mastery")
}


function sq_AddEffect(appendage)
{
 appendage.sq_AddEffectFront("Character/Priest/Effect/Animation/ScytheMastery/1_aura_normal.ani")
}


function proc_appendage_priest_scythe_mastery(n3njwnPcS7ttSI)
{
} ;

function isDrawAppend_appendage_priest_scythe_mastery(n3njwnPcS7ttSI)
{
 if(!n3njwnPcS7ttSI) {
 return false;
 }
 
 local BBOExBviDDEhX7uF5V3gfpA = n3njwnPcS7ttSI.getParent(); 
 
 
 if(BBOExBviDDEhX7uF5V3gfpA) {
 
 switch(BBOExBviDDEhX7uF5V3gfpA.getState())
 { 
 case 64 : 
 case 67 :
 case 68 :
 case 69 :
 case 74 :
 return false;
 }
 
 if(isAvengerAwakenning(BBOExBviDDEhX7uF5V3gfpA))
 return false;
 
 if(sq_GetGrowAvatarViewControl(BBOExBviDDEhX7uF5V3gfpA))
 return false;
 }
 return true;
} ;