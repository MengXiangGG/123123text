


function getCurrentStringAni(obj,aniEncode,aniName)
{

	local charAni = obj.getVar().GetAnimationMap("MonsterCharAni_" + aniEncode + "" + aniName, 
	"common/monster/monster_char/"+ aniName +".ani");

	return charAni;
}

function drawMonsterNewActTriggerStatusEffect(obj,monster,x,y,subX)
{

	local apd = monster.GetSquirrelAppendage("ui/ap_monster_ui2.nut");
	local size = apd.getVar("newActTriggerIconLst").size_vector(0);
	if (size <= 0)
		return false;
	local offsetX = 0;
	for(local i = 0;i<size;i++)
	{
		local statusID = apd.getVar("newActTriggerIconLst").get_vector(i);

		if (statusID > 0)
		{
			local iconAni = obj.getVar().GetAnimationMap("MonsterIconEtcMotion_" + statusID, 
			"common/monster/new_state_icon/"+ statusID +".ani");
			sq_AnimationProc(iconAni);
			sq_drawCurrentFrame(iconAni,x + offsetX, y, false);
			offsetX += 20;
			//outPutEx("dummy/dummy.txt","s = " + statusID + "\n");
		}
	}
	
}


function onJumpToDisplayPlayerMarkEffect(obj)
{

    local zPos = obj.getZPos();

    if (zPos > 0)
    {

        if (obj.getVar("CommonPlayerMarkEffect").size_vector() <= 0)
        {

            local plod = createCommonPlayerMarkEffect(obj);
            obj.getVar("CommonPlayerMarkEffectObj").clear_obj_vector();
            obj.getVar("CommonPlayerMarkEffectObj").push_obj_vector( plod );
            obj.getVar("CommonPlayerMarkEffect").clear_vector();
            obj.getVar("CommonPlayerMarkEffect").push_vector(1);

        }else if (obj.getVar("CommonPlayerMarkEffect").get_vector(0) == 1)
        {

            local tar = obj.getVar("CommonPlayerMarkEffectObj").get_obj_vector(0);
            if (tar)
                tar.setCurrentPos(obj.getXPos(),obj.getYPos(),0);
        }else if (obj.getVar("CommonPlayerMarkEffect").get_vector(0) == 0)
        {

            local plod = createCommonPlayerMarkEffect(obj);
            obj.getVar("CommonPlayerMarkEffectObj").clear_obj_vector();
            obj.getVar("CommonPlayerMarkEffectObj").push_obj_vector( plod );
            obj.getVar("CommonPlayerMarkEffect").set_vector(0,1);

        }

    }else{

        if (obj.getVar("CommonPlayerMarkEffect").size_vector() > 0)
        {
            if (obj.getVar("CommonPlayerMarkEffect").get_vector(0) == 1)
            {
                obj.getVar("CommonPlayerMarkEffect").set_vector(0,0);
                local tar = obj.getVar("CommonPlayerMarkEffectObj").get_obj_vector(0);
                if (tar)
                    tar.setValid(false);
            }
        }
    }

}


function createCommonPlayerMarkEffect(obj)
{

	local ani = sq_CreateAnimation("","common/newstylecomboui/flyingplayermark.ani");
	local pooledObj = sq_CreatePooledObject(ani,false);
	sq_AddObject(obj,pooledObj,2,false);	
	return pooledObj;

}


function drawCurrentSkillCoolTimeUI(obj)
{


	local skillmgr = obj.getSkillManager();
	local apd = getComboUiAppendage(obj);
	if (!apd)
		return false;
		
	local currentT = apd.getTimer().Get();
	local offsetX = 0;
	local offsetY = 0;
	
	if (apd.getVar("saveSkillOkTime").size_vector() == 0)
	{
		apd.getVar("saveSkillOkTime").clear_vector();
		for (local i = 0;i < 255;i++)
			apd.getVar("saveSkillOkTime").push_vector(-1);

		apd.getVar("saveCurrentSklTime").clear_vector();
		for (local i = 0;i < 255;i++)
			apd.getVar("saveCurrentSklTime").push_vector(-1);
	}
	
	for (local i = 0;i < 255;i++)
	{
		local skl = sq_GetSkill(obj,i);
		if (skl)
		{
			local isCool = skl.isInCoolTime();
			if (isCool)
			{
				if (apd.getVar("saveSkillOkTime").get_vector(i) == -1)
				{
					apd.getVar("saveSkillOkTime").set_vector(i,currentT);
					apd.getVar("saveCurrentSklTime").set_vector(i,skl.getCoolTime(obj, -1) );
				}else
				{
					local id = skillmgr.getSlotindex(i);
					if ((id >= 0 && id <= 7))
					{
					
						local coolTime = apd.getVar("saveCurrentSklTime").get_vector(i);
						local curCoolTime = coolTime - (currentT - apd.getVar("saveSkillOkTime").get_vector(i));
						if (curCoolTime >= 10000)
							drawSirocoUINumberWithPos(obj,550 + id * 30,570,curCoolTime / 1000);
						else
							drawSirocoUINumberWithPosPoint(obj,550 + id * 30,570,curCoolTime / 100);
					}else if ((id >= 198 && id <= 203))
					{
						local id = id - 198;
						local coolTime = apd.getVar("saveCurrentSklTime").get_vector(i);
						local curCoolTime = coolTime - (currentT - apd.getVar("saveSkillOkTime").get_vector(i));
						if (curCoolTime >= 10000)
							drawSirocoUINumberWithPos(obj,550 + id * 30,532,curCoolTime / 1000);
						else
							drawSirocoUINumberWithPosPoint(obj,550 + id * 30,532,curCoolTime / 100);
					}else{
					
						local coolTime = apd.getVar("saveCurrentSklTime").get_vector(i);
						local curCoolTime = coolTime - (currentT - apd.getVar("saveSkillOkTime").get_vector(i));
					
						local lastX = 520 + offsetX;
						local lastY = 485 + offsetY;
						sq_DrawSkillIcon(skl, lastX, lastY, sq_ALPHA(100) );

						if (curCoolTime >= 10000)
							drawSirocoUINumberWithPos(obj,lastX + 11,lastY + 10,curCoolTime / 1000);
						else
							drawSirocoUINumberWithPosPoint(obj,lastX + 11,lastY + 10,curCoolTime / 100);

						if (offsetX <= 150)
							offsetX += 30;
						else
						{
							offsetX = 0;
							offsetY -= 30;
						}
					}
				
				}
			}else
			{
				if (apd.getVar("saveSkillOkTime").get_vector(i) != -1)
				{
					apd.getVar("saveSkillOkTime").set_vector(i,-1);
				}else
				{
				
				}
			
			}	
			
		}
	}
	
}



function setMonsterFristReadWithDungeonEffect(parentObj)
{

	local stage = sq_GetGlobaludpModuleStage();
	local dungeon = sq_GetDungeonByStage(stage);
	local dungeonIndex = sq_GetDuegonIndex(dungeon);	

    local len = ::GlobalDungeonFristReadAniList.len();
    for (local i = 0;i < len;i++)
    {
        local mobList = ::GlobalDungeonFristReadAniList[i];	
        if (dungeonIndex == mobList[0])
        {
            local lst = mobList[1];
            local i = 0;
            while ( lst[i] != -1)
            {

                createFristAnimationPooledObject(parentObj,lst[i] );
                //outPut("dummy/dummy.txt","setFristSuccess\n");
                i++;
            }		
 
        }
    }





}




function setMonsterFristReadWithMapEffect(appendage)
{

    if (!appendage)
        return false;
	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

	local objectManager = parentObj.getObjectManager();
    if (objectManager)
    {
        for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
        {
            local object = objectManager.getCollisionObject(i);
            local id = object.getCollisionObjectIndex(object);
            if (object && object.isObjectType(OBJECTTYPE_ACTIVE))
            {
                local object = sq_GetCNRDObjectToActiveObject(object);
                local id = object.getCollisionObjectIndex(object);
                if (id > 0)
                {

                    local len = ::GlobalMonsterFristReadAniList.len();
                    for (local i = 0;i < len;i++)
                    {
                        local mobList = ::GlobalMonsterFristReadAniList[i];	
                        if (id == mobList[0])
                        {
                            local lst = mobList[1];
                            local i = 0;
                            while ( lst[i] != -1)
                            {
                                    //outPut("dummy/dummy.txt","l:" + lst[i]+"\n");
                                    createFristAnimationPooledObject(parentObj,lst[i] );
                                    //outPut("dummy/dummy.txt","setFristSuccess\n");
                                    i++;
                            }		
 
                        }
                    }

                }
            }
        }
    }

}





//?置普雷??效果
function setEquipmentIrys(obj)
{
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "ui/equipment_effect.nut") )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 169, false, 
				"ui/equipment_effect.nut", true);

        }


}

function checkUpNewStyleUINone(obj)
{
    local apd = getComboUiAppendage(obj);
    if (apd.getVar("printID").get_vector(0) == 0 && 
        apd.getVar("printID").get_vector(1) == 0 &&
        apd.getVar("printID").get_vector(2) == 0 &&
        apd.getVar("printID").get_vector(3) == 0 &&
        apd.getVar("printID").get_vector(4) == 0 &&
        apd.getVar("printID").get_vector(5) == 0)
        return true;
    return false;

}



function setDamageFontJumpEffectWithFontID(target,saveID)
{

	local i = 0;
	while (GlobalNewDamageFontObjectList[i] != -1)
	{
		
		local damageFont = GlobalNewDamageFontObjectList[i];
		local id2 = damageFont.damageFontID;
		if (id2 == saveID)
		{
			local parentObj = damageFont.parentObj;
			if (!parentObj || isSameObject(parentObj, target) )
			{
		
				local zPos = damageFont.zPos;
				damageFont.setAxisPos(2,zPos + sq_getRandom(15,25).tointeger() );
			}
			
		}
		i++;
	}
}


function setDamageFontJumpEffect(target)
{

	local i = 0;
	while (GlobalNewDamageFontObjectList[i] != -1)
	{
		
		local damageFont = GlobalNewDamageFontObjectList[i];
		local id2 = damageFont.damageFontID;
		if (id2 != -1)
		{
			local parentObj = damageFont.parentObj;
			if (!parentObj || isSameObject(parentObj, target) )
			{
		
				local zPos = damageFont.zPos;
				damageFont.setAxisPos(2,zPos + sq_getRandom(15,25).tointeger() );
			}
			
		}
		i++;
	}
}




function setDamageRateJumpEffect(obj,absoluteRate_var,apd)
{
    local dummy_i = 0;
    local last = -1;
    if (absoluteRate_var <= 0)
    {

        for (;dummy_i < 250 ;dummy_i++)
        {
            local atk = apd.getVar("damageNum").get_vector(4 * dummy_i);
            if (atk <= 0)
                apd.getVar("nextDamageTarget").set_vector(0,dummy_i);

            local damageNumXPos = apd.getVar("damageNum").get_vector(4 * dummy_i + 2) / 10;
            local damageNumYPos = apd.getVar("damageNum").get_vector(4 * dummy_i + 3) / 1000;
            local damageNumZPos = apd.getVar("damageNum").get_vector(4 * dummy_i + 3) % 1000;
            
            local offsetX = damageNumXPos - obj.getXPos();
            local offsetY = damageNumYPos - obj.getYPos();

            if (offsetX * offsetX + offsetY * offsetY <= 150 * 150)
            {
                local jumpHeight = 20;
                apd.getVar("damageNum").set_vector(4 * dummy_i + 3,
                damageNumYPos * 1000 + (damageNumZPos + jumpHeight) % 1000);
            }
                    

        }


    }else{
        for (;dummy_i < 250 ;dummy_i++)
        {
            local atk = apd.getVar("damageNum").get_vector(4 * dummy_i);
            if (atk <= 0)
                apd.getVar("nextDamageTarget").set_vector(0,dummy_i);
        }
    }
    return last;
}





function drawAntonScheduleNumber(obj,var)
{

}







function setNewStyleRankFlag(obj,flag)
{
    local apd = getComboUiAppendage(obj);
    if (apd.getVar("numFlag").get_vector(flag) == 0)
    {
        apd.getVar("numFlag").set_vector(flag,1);
        apd.getVar("scoreSize").set_vector(0,1);
        apd.getVar("scoreSize").set_vector(1,100);
        apd.getVar("scoreSize").set_vector(2,apd.getTimer().Get() );
    }
}

//自?拾取效果
function setOverItemObject(obj)
{

    local apd = getComboUiAppendage(obj);
    if (apd && obj.sq_GetState() == 0)
    {
        local flagPosX = apd.getVar("posFlag").get_vector(0);
        local flagPosY = apd.getVar("posFlag").get_vector(1);

        if (flagPosX == obj.getXPos() && flagPosY == obj.getYPos() )
        {
            return false;
        }else{

            apd.getVar("posFlag").set_vector(0, obj.getXPos() );
            apd.getVar("posFlag").set_vector(1, obj.getYPos() );

            local itemObj = null;
            local objMgr = obj.getObjectManager();
            if (objMgr)
            {
//                itemObj = objMgr.getMeetItemObject(IMouse.GetXPos(), IMouse.GetYPos());
                obj.procGetItem();
//                obj.sq_PlaySound("GET_ITEM");
            }
            
            return itemObj;

        }
    }
    return null;
}






function setCharacterComboUiAppendage(obj)
{
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "ui/ap_ui.nut"))
    {
        local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 169, false,
        "ui/ap_ui.nut", true);

    }

}


function getComboUiAppendage(obj)
{
    return obj.GetSquirrelAppendage("ui/ap_ui.nut");
}




function createDamageRateByTargetAndIDWithNextTarget(obj,target,id,number,x,y,z,i)
{


    local appendage = getComboUiAppendage(obj);

    if (!appendage || !obj || !target )
        return false;

    local currT = appendage.getTimer().Get();

            
    i = i % 250;
    appendage.getVar("damageNum").set_vector(4 * i,number);
    appendage.getVar("damageNum").set_vector(4 * i + 1,currT);
    appendage.getVar("damageNum").set_vector(4 * i + 2,(target.getXPos() + x ) * 10 + id );
    appendage.getVar("damageNum").set_vector(4 * i + 3,(target.getYPos() + y ) * 1000 + target.getZPos() + z );
    return true;
}



function setStatusDamageRateSet(appendage,hp,attacker)
{
	local obj = appendage.getParent();
    local sourceObj = sq_GetMyMasterCharacter();
	sourceObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
    local apd = getComboUiAppendage(sourceObj);
    local currT = apd.getTimer().Get();
    if (!apd)
        return false;

    local parentObj = sq_GetCNRDObjectToActiveObject(obj);


    if (parentObj.getHp() > hp )
    {

        local rate = appendage.getVar("damageRate").get_vector(1);
        appendage.getVar("damageRate").set_vector(1,rate + (parentObj.getHp() - hp) );


        local statusID = appendage.getVar("t").get_vector(0);

        if (statusID == 2)
        {

            local etc = parentObj.getHp() - hp;
            local var = appendage.getVar("damageRateLight").get_vector(1);
            appendage.getVar("damageRateLight").set_vector(1,var + etc);
            var = appendage.getVar("damageRateLight").get_vector(1);


            local rate = appendage.getVar("damageRateLight").get_vector(0);
            if (var > rate)
            {
                //setDamageRateJumpEffect(sourceObj,0,apd);
                createDamageRateByTargetAndID(sourceObj,parentObj,3,var - rate,75,0,0);

                appendage.getVar("damageRateLight").clear_vector();
                appendage.getVar("damageRateLight").push_vector( 0 );
                appendage.getVar("damageRateLight").push_vector( 0 );

            }
        }else if (statusID != 1)
        {
            local etc = parentObj.getHp() - hp;
            etc -= appendage.getVar("BlockDamageRate").get_vector(0);

            if (etc > 0)
            {
                local i = 0;

                for (;i < 1600 ;i+=4)
                    if (apd.getVar("damageNum").get_vector(i) == 0)
                        break;

                i = i % 1600;
                apd.getVar("damageNum").set_vector(i,etc);
                apd.getVar("damageNum").set_vector(i + 1,currT);
                apd.getVar("damageNum").set_vector(i + 2,obj.getXPos() * 10 + 5 );
                apd.getVar("damageNum").set_vector(i + 3,obj.getYPos() * 1000 + obj.getZPos() );



            }
        }

    }

}   



function createMainDamageRate(apd,attacker,obj,newHpDamage,absoluteRate_var,i,r)
{

    if (!apd || !attacker || !obj || newHpDamage <= 0)
        return false;


    local xPos = obj.getXPos() + r;
    local i = apd.getVar("nextDamageTarget").get_vector(0);

    local currT = apd.getTimer().Get();


    local abPosX = apd.getVar("absoluteRateXPos").get_vector(0);

    i = (i % 250) * 4;
    apd.getVar("damageTimeE").set_vector(1,i / 4);

    apd.getVar("damageNum").set_vector(i,newHpDamage);
    apd.getVar("damageNum").set_vector(i + 1,currT);

    local randX = obj.getXPos() * 10 + absoluteRate_var * 40 - abPosX;

    local lastX = xPos * 10;
    local lastY = obj.getYPos() + 15 * absoluteRate_var + 100 ;
    local lastZ = obj.getZPos() + 50;
    local id = -1;
    if (absoluteRate_var > 0)
    {
        apd.getVar("damageNum").set_vector(i + 2,lastX + 8 );
    }else if (isEnemyBack(attacker,obj) )
    {
        apd.getVar("damageNum").set_vector(i + 2,lastX + 2 );
    }else
    {
        apd.getVar("absoluteRateXPos").set_vector(0,(abPosX + 20) % 120);
        apd.getVar("damageNum").set_vector(i + 2,lastX + 0 );
        
    }

    apd.getVar("damageNum").set_vector(i + 3, lastY * 1000 + lastZ );
    apd.getVar("nextDamageTarget").set_vector(0,i + 1);

    return xPos;
}




function onMonsterUndamageableEffect(appendage)
{

    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}


    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    if(!parentObj.isInDamagableState(parentObj) && !parentObj.isDead())
    {

        local currT = appendage.getTimer().Get();

        local countT = currT % 1000;

        parentObj.setCustomOutline(false, 0, true, 2);


        local a = {
          maxA = 150,
          minA = 50
        };

        if (countT < 500)
        {
            local rgb = sq_RGBA(255,255,255,sq_GetAccel(a.minA, a.maxA, countT , 500, true) );
            parentObj.setCustomOutline(true, rgb, false, 1);
        }else{
            local rgb = sq_RGBA(255,255,255,sq_GetAccel(a.maxA, a.minA, countT - 500 , 500, true) );
            parentObj.setCustomOutline(true, rgb, false, 1);
        }

        //while


    }else if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/blood/ap_blood_gauge.nut"))
    {

        local rgb = sq_RGBA(0,0,155,100);
        parentObj.setCustomOutline(true, rgb, false, 1);

    }else if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/jummp_dummy/ap_hold.nut"))
    {

        local rgb = sq_RGBA(0,0,255,200);
        parentObj.setCustomOutline(true, rgb, false, 1);

    }
    else{
        parentObj.setCustomOutline(false, 0, true, 2);
    }

}


function setCharacterComboEffect(appendage)
{
    if (!appendage)
        return false;

    local currT = appendage.getTimer().Get();
    appendage.getVar("comboNum").set_vector(0,getComboNum(appendage) + 1);

    if (appendage.getVar("comboNum").get_vector(1) == 0)
    {

        if (appendage.getVar("comboNum").get_vector(0) >= 2)
        {
            appendage.getVar("comboNum").set_vector(1,1);
            appendage.getVar("comboNum").set_vector(2,currT);
            appendage.getVar("comboNum").set_vector(3,200);
            if (isComboUINumber(appendage,1))
                printIDAddNumber(appendage,1);
        }


    }else if (appendage.getVar("comboNum").get_vector(1) == 1)
    {
        appendage.getVar("comboNum").set_vector(2,currT);
    }

}

function setCharacterSkyComboEffect(appendage,damager)
{
    if (!appendage || !damager)
        return false;
    local currT = appendage.getTimer().Get();

    if (damager.getZPos() > 0)
    {
        appendage.getVar("FcomboNum").set_vector(0,appendage.getVar("FcomboNum").get_vector(0) + 1);
        if (appendage.getVar("FcomboNum").get_vector(1) == 0)
        {
            appendage.getVar("FcomboNum").set_vector(1,1);
            appendage.getVar("FcomboNum").set_vector(2,currT);
        if (isComboUINumber(appendage,2))
            printIDAddNumber(appendage,2);
        }else if (appendage.getVar("FcomboNum").get_vector(1) == 1)
        {
            appendage.getVar("FcomboNum").set_vector(2,currT);
        }

    }

}

function checkUpCharacterBackHit(appendage,realAttacker,damager)
{

    if (!appendage || !damager)
        return false;

    if (isEnemyBack(realAttacker,damager))
    {

        printIDAddNumber(appendage,4);
        local lastRate = appendage.getVar("yellowNum").get_vector(0);
        appendage.getVar("yellowNum").set_vector(0,lastRate + 250);
    }

}


function setHitObjectAppendageEffect(appendage,damager)
{

	local parentObj = appendage.getParent();
    if (!parentObj)
        return false;
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(damager, "ui/ap_monster_ui.nut") )
    {
        local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, parentObj, 12, false, 
        "ui/ap_monster_ui.nut", true);
    }

    return false;

}



function setSkillFristAnimationByAppendage(appendage)
{
    if (!appendage)
        return false;

	local parentObj = appendage.getParent();
    if (!parentObj)
        return false;
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    if (appendage.getVar("SklFristLoadSkillEffectFlag").get_vector(0) == 0)
    {

        onDungeonCharacterStartEvent(parentObj);
        setCharacterFristAnimation(parentObj);

        appendage.getVar("SklFristLoadSkillEffectFlag").set_vector(0,1);
    }


}





function setKillPowerTimeEvent(appendage)
{

	if(!appendage) {
		return;
	}

    local currT = appendage.getTimer().Get();


    if (appendage.getVar("killRateFlag").get_vector(0) == 1)
    {
        local t = currT - appendage.getVar("killRateFlag").get_vector(2);
        if (t >= 2000)
        {
            local lastRate = appendage.getVar("yellowNum").get_vector(0);
            appendage.getVar("yellowNum").set_vector(0,
            lastRate + appendage.getVar("killRateFlag").get_vector(1) );

            createGreatWithAudioEffect(appendage, appendage.getVar("killRateFlag").get_vector(1) );

            deleteNumber(appendage,5);
            appendage.getVar("killRateFlag").clear_vector();
            appendage.getVar("killRateFlag").push_vector(0);
            appendage.getVar("killRateFlag").push_vector(0);
            appendage.getVar("killRateFlag").push_vector(0);
        }else{

        }
    }

}



function setComboUIRate(appendage,damager)
{
    local combo = appendage.getVar("comboNum").get_vector(0);
    local fcombo = appendage.getVar("FcomboNum").get_vector(0);

    local lastRate = appendage.getVar("yellowNum").get_vector(0);

    if (combo < 20)
        lastRate += 10;
    else if (combo < 50)
        lastRate += 12;
    else if (combo < 150)
        lastRate += 15;
    else if (combo < 500)
        lastRate += 20;
    else
        lastRate += 25;


    if (fcombo < 5)
        lastRate += 15;
    else if (fcombo < 10)
        lastRate += 17;
    else if (fcombo < 20)
        lastRate += 28;
    else if (fcombo < 30)
        lastRate += 30;
    else
        lastRate += 36;

    return lastRate;

}



function getComboNum(appendage)
{
    return appendage.getVar("comboNum").get_vector(0);
}



function isComboUINumber(appendage,num)
{
    for (local i = 0;i <= 4;i++)
    {
        if (appendage.getVar("printID").get_vector(i) == num )
        {
            return false;
        }
    }
    return true;
}




function deleteNumber(appendage,num)
{
    local k = 0;

    for (local i = 0;i <= 4;i++)
    {
        if (appendage.getVar("printID").get_vector(i) == num && k == 0)
        {
            appendage.getVar("printID").set_vector(i,0); 
            k = i + 1;
            return true;
        }
    }

}

function printIDAddNumber(appendage,num)
{

    for (local i = 0;i <= 4;i++)
    {
        if (appendage.getVar("printID").get_vector(i) == 0 || 
        appendage.getVar("printID").get_vector(i) == num)
        {
            appendage.getVar("printID").set_vector(i,num);
            appendage.getVar("lightEffect").set_vector(i*3 ,1);
            appendage.getVar("lightEffect").set_vector(i*3 + 2,appendage.getTimer().Get() );
            appendage.getVar("timeE_DeleteNum").set_vector(0, appendage.getTimer().Get() );
            return true;
            
        }
    }
    return false;

}





function sendAllMonsterAppend_NewStyleUI(obj)
{
    local objectManager = obj.getObjectManager();
    local flagEnemy = 0;
    if (objectManager.getCollisionObjectNumber() > 0)
    {

        for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
        {
            local object = objectManager.getCollisionObject(i);

            if (object && !CNSquirrelAppendage.sq_IsAppendAppendage(object, "monster/ap_close_new_ui_effect.nut") )
            {
                local activeObj = sq_GetCNRDObjectToActiveObject(object);
                if (object.isObjectType(OBJECTTYPE_ACTIVE) )
                {
                    if (obj.isEnemy(object))
                    {

                        flagEnemy = 1;


                        if (!CNSquirrelAppendage.sq_IsAppendAppendage(activeObj, "ui/ap_monster_ui2.nut") )
                        {
                            local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, activeObj, 12, false, 
                                    "ui/ap_monster_ui2.nut", true);
                        }


                        if (!CNSquirrelAppendage.sq_IsAppendAppendage(activeObj, "ui/ap_monster_ui.nut") )
                        {
                            local appendage = CNSquirrelAppendage.sq_AppendAppendage(activeObj, obj, 12, false, 
                                    "ui/ap_monster_ui.nut", true);
                        }
                        







                    }
                }else{
                }
            }
        }
    }


    if (flagEnemy == 0)
    {
        GLOBAL_CURRENT_DUNGEON_FLAG = 0;
        onDungeonClearMonsterEvent(obj);
    }
}







//?出?入newstyle 行?的光效 在front newstyle 前端
function drawLightEffect(obj,x,y,flag)
{
    local size = getComboUiAppendage(obj).getVar("lightEffect").get_vector(3*flag + 1);
    if(size == 0)
        return ;

    local sq_var = obj.getVar();
    local numImage = sq_var.GetAnimationMap("ComboUIlightEffect", "common/newstylecomboui/light_effect.ani");

    sq_AnimationProc(numImage);
	numImage.setImageRate(size.tofloat() / 100.0, size.tofloat() / 100.0);

    sq_drawCurrentFrame(numImage, x + 10, y + 40, false);

}



function setEquipmentSpectrumBodyEffect(appendage)
{

	local parentObj = appendage.getParent();
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
	local saveT = parentObj.sq_GetIntData(169, 26);
	local createT = parentObj.sq_GetIntData(169, 27);

	if (saveT != 0 && createT != 0)
	{
		local spectrumAppendage = appendage.sq_GetOcularSpectrum("EquipmentSpectrumBodyEffect");
	
		if(!spectrumAppendage)
		{
			spectrumAppendage = appendage.sq_AddOcularSpectrum("EquipmentSpectrumBodyEffect", parentObj, parentObj, 100);
		}
		local r = parentObj.sq_GetIntData(169, 28);
		local g = parentObj.sq_GetIntData(169, 29);
		local b = parentObj.sq_GetIntData(169, 30);
		sq_SetParameterOcularSpectrum(spectrumAppendage, saveT, createT, false, 
		sq_RGBA(r, g, b, 255), sq_RGBA(r, g, b, 0), 2, 2, 2);
		//sq_SetParameterOcularSpectrum(spectrumAppendage, saveT, createT, true, 
		//sq_RGBA(20, 80, 200, 255), sq_RGBA(20, 80, 200, 0), 2, 0, 1);
	}else{
		local spectrumAppendage = appendage.sq_GetOcularSpectrum("EquipmentSpectrumBodyEffect");

		if(spectrumAppendage)
		{
			spectrumAppendage.endCreateSpectrum();
		}
	}

//outPut("dummy/dummy.txt","saveT = " + saveT + "\n");



function createGreatWithAudioEffect(appendage,killPower)
{


    if (sq_isPVPMode() )
        return;

	if(!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	local obj = sq_GetCNRDObjectToSQRCharacter(parentObj);

    local currT = appendage.getTimer().Get();

    appendage.getVar("greatEffect").set_vector(0,currT);

    if (killPower <= 1000)
    {
        appendage.getVar("greatEffect").set_vector(1,1);
        obj.sq_PlaySound("HK3_GOOD");
    }else if (killPower <= 2000)
    {
        appendage.getVar("greatEffect").set_vector(1,2);
        obj.sq_PlaySound("HK3_GREAT");
    }
    else if (killPower <= 8000)
    {
        appendage.getVar("greatEffect").set_vector(1,3);
        obj.sq_PlaySound("HK3_NICE");
    }
    else if (killPower <= 10000)
    {
        appendage.getVar("greatEffect").set_vector(1,4);
        obj.sq_PlaySound("HK3_PERFECT");
    }
    else 
    {
        appendage.getVar("greatEffect").set_vector(1,5);
        obj.sq_PlaySound("HK3_OKILL");
    }
    appendage.getVar("greatEffect").set_vector(2,100);



}




}

//ssssssssss


function onMonsterNewStyleUISwitchState(appendage)
{

    if (!appendage)
        return false;

	local obj = appendage.getParent();	
	if (appendage.getVar("nextState").size_vector() <= 0)
	{
    appendage.getVar("nextState").clear_vector();
    appendage.getVar("nextState").push_vector(-1);
	}else{
    
    local state = appendage.getVar("nextState").get_vector(0);
    if (obj.getState() != state)
    {
        if ( !(state == 0 || state == 1 || state == 2 || state == 4 || state == 5 || state ==6
            || state == 13 || state == 17) )
        {
              
            if (obj.getState() == 3 )
            {
                local sourceObj = appendage.getSource();
                sourceObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
                local apd = getComboUiAppendage(sourceObj);
                printIDAddNumber(apd,9);
                NewActiveStatus_CounterHit( obj );

            }else if (obj.getState() == 9)
            {

                NewActiveStatus_ForceHold(parentObj);
                local sourceObj = appendage.getSource();
                sourceObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);
                local apd = getComboUiAppendage(sourceObj);
                printIDAddNumber(apd,6);

                local lastRate = apd.getVar("yellowNum").get_vector(0);
                apd.getVar("yellowNum").set_vector(0,lastRate + 500);
                appendage.getVar("hold").set_vector(0,2);
            }
        }



        appendage.getVar("nextState").set_vector(0, obj.getState() );
    }
  }
}


function onMonsterForceHoldEffect(appendage)
{


	if(!appendage) {
		return;		
	}
				
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}


    if (appendage.getVar("hold").get_vector(0) == 1)
    {
        if (parentObj.getState() == STATE_HOLD)
        {

            NewActiveStatus_NormalHold(parentObj);
            appendage.getVar("hold").set_vector(0,2);
        }
    }else{
        if (parentObj.getState() != STATE_HOLD)
        {
            appendage.getVar("hold").set_vector(0,1);
        }
    }

}


function displayStatusDamageFont(appendage)
{

    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

    if (sq_IsValidActiveStatus(parentObj,ACTIVESTATUS_BLEEDING) )
    {
        appendage.getVar("t").set_vector(0,1);
    }else if (sq_IsValidActiveStatus(parentObj,ACTIVESTATUS_POISON) )
    {
        appendage.getVar("t").set_vector(0,1);
    }else if (sq_IsValidActiveStatus(parentObj,ACTIVESTATUS_BURN) )
    {
        appendage.getVar("t").set_vector(0,1);
    }else if (sq_IsValidActiveStatus(parentObj,ACTIVESTATUS_STONE) )
    {
        appendage.getVar("t").set_vector(0,1);
    }else if (sq_IsValidActiveStatus(parentObj,ACTIVESTATUS_LIGHTNING) )
    {
        appendage.getVar("t").set_vector(0,2);
    }else{
        appendage.getVar("t").set_vector(0,0);
    }

    local curT = appendage.getTimer().Get();
    local t1 = appendage.getVar("t").get_vector(0);
    local t2 = appendage.getVar("t").get_vector(1);
    if (t1 == 1 && curT - t2 >= 1000)
    {
        appendage.getVar("t").set_vector(1,curT);

        local obj = appendage.getParent();
        local sourceObj = sq_GetMyMasterCharacter();
        //appendage.getSource();
        if (!obj || !sourceObj)
            return false;
        sourceObj = sq_GetCNRDObjectToSQRCharacter(sourceObj);

        local apd = getComboUiAppendage(sourceObj);
        if (!apd)
            return false;


        local currT = apd.getTimer().Get();
        local parentObj = sq_GetCNRDObjectToActiveObject(obj);
        local etc = appendage.getVar("damageRate").get_vector(1) - appendage.getVar("damageRate").get_vector(0);
        local j = createDamageRateByTargetAndID(sourceObj,obj,3,etc,60,1,0);
        local subX = 60;
        local subY = 0;

        local i = 0;
        appendage.getVar("isAppleSetHp").set_vector(0,0);

        for (i = 7 ;i<= 22 ;i++)
        {
            local var = sourceObj.sq_GetIntData(169, i);
            if (var > 0)
            {

                local rate = var / 10;
                local id = var % 10;
                local finalyRate = (rate * etc ) / 100;
                createDamageRateByTargetAndIDWithNextTarget(sourceObj,parentObj,4,finalyRate,subX,20 + subY,0,j * 4);
                subY += 15;
                subX += 2;
                j += 1;


                parentObj.setHp( parentObj.getHp() - finalyRate, null, true);
            }

        }
        appendage.getVar("isAppleSetHp").set_vector(0,1);



        appendage.getVar("damageRate").clear_vector();
        appendage.getVar("damageRate").push_vector( 0 );
        appendage.getVar("damageRate").push_vector( 0 );


    }

}



function onDungeonFinishLoopEvent(obj)
{

    local var = sq_GetResultState() + sq_GetRewardState();
    if (var > 0)
    {
        sq_SendMessage(obj,OBJECT_MESSAGE_INVINCIBLE,1,0);


    }

}


function drawHpAndMpRateNumber(obj)
{
    local x = 0;
    local y = 522;

    local hp = obj.getHp();
    local hpMax = obj.getHpMax();

    local numImage = null;
    local numImage2 = null;
	local numImage3 = null;

    local num = (hp * 100 ) / hpMax;
    local geNum = num % 10;
    local shiNum = (num / 10) % 10;
	local baiNum = (num / 100) % 10;
    numImage = returnBobyNumber(obj,geNum);
    numImage2 = returnBobyNumber(obj,shiNum);
	numImage3 = returnBobyNumber(obj,baiNum);

    if (num >= 0)
    {
        sq_AnimationProc(numImage);
        sq_drawCurrentFrame(numImage, x + 48, y + 23, false);
    }

    if (num >= 10)
    {
        sq_AnimationProc(numImage2);
        sq_drawCurrentFrame(numImage2, x + 40, y + 23, false);
    }

    if (num >= 100)
    {
        sq_AnimationProc(numImage3);
        sq_drawCurrentFrame(numImage3, x + 32, y + 23, false);
    }





}


//????????????
function drawTimerNumber_With_NewStyle_DamageRate_Number(obj,num,x,y)
{
    local ge = num % 10;
    local shi = num / 10;

    local image1 = getTimerNewStyle_DamageRate_Number(obj,shi);
    local image2 = getTimerNewStyle_DamageRate_Number(obj,ge);

    sq_AnimationProc(image1);
    sq_drawCurrentFrame(image1,x - 15, y, false);
    sq_AnimationProc(image2);
    sq_drawCurrentFrame(image2,x, y, false);
}




//???DPL??????
function drawAnton_Schedule(obj)
{

    local x = 32+508;
    local y = 190 - (135 - 18);

    if (ANTON_SCHEDULE_TIME != -100 )
    {

        local sq_var = obj.getVar();
        local ani = sq_var.GetAnimationMap("Schedule_Basic_BackGround", "common/newstylecomboui/anton/time_schedule_back.ani");
        sq_AnimationProc(ani);
        sq_drawCurrentFrame(ani,x, y, false);

        local hour = ANTON_SCHEDULE_TIME / ( 60 * 60 );
        local minute = (ANTON_SCHEDULE_TIME / 60  ) % 60;
        local second = ANTON_SCHEDULE_TIME % 60;
        
        drawHpOrMpNumber(obj,x - 150,y - 50,    hour);
        drawHpOrMpNumber(obj,x- 100, y - 50, minute);
        drawHpOrMpNumber(obj,x - 50, y - 50,second);

        if (ANTON_BATTLE_TOTAL == 1)
        {
            ani = sq_var.GetAnimationMap("Anton_Battle_total", "common/newstylecomboui/anton/basic.ani");
            sq_AnimationProc(ani);
            sq_drawCurrentFrame(ani, 0, 0, false);
        }else{
            ani = sq_var.GetAnimationMap("Anton_Battle_total_2", "common/newstylecomboui/anton/basic_3.ani");
            sq_AnimationProc(ani);
            sq_drawCurrentFrame(ani, x, y + 400, false);
        }


    }else if ( ANTON_SCHEDULE_TIME != 0  )
    {

    }else if ( ANTON_SCHEDULE_TIME > 0  )
    {
        if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "map/anton/anton_close_blacksmoke.nut")  )
        {
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 1, true, 
				"map/anton/anton_close_blacksmoke.nut", true);
        }
    }
}


function drawAntonScheduleNumber(obj,var)
{

}








function drawMonsterActiveStatus(obj)
{


    if (sq_isPVPMode() )
        return;

    local apd = getComboUiAppendage(obj);
    local tar = apd.getVar("atkObj").get_obj_vector(0);
    if (tar)
    {
        local x = 30;
        local y = 135;

        local subX = 0;
        tar = sq_GetCNRDObjectToActiveObject(tar);
        if (tar.isDead())
            return ;

        if (CNSquirrelAppendage.sq_IsAppendAppendage(tar,"monster/ap_set_unhold_flag.nut"))
        {
            local ani = obj.getVar().GetAnimationMap("MonsterIconUnLock", "common/newstylecomboui/activestatus/icon/unhold_unlock.ani");
            if (!checkIsHoldAndDelayEffect(tar) )
                ani = obj.getVar().GetAnimationMap("MonsterIconLock", "common/newstylecomboui/activestatus/icon/unhold_lock.ani");

            sq_AnimationProc(ani);
            sq_drawCurrentFrame(ani,x, y, false);
            x = x + 20;
        }


        local i = 0;
        
        for (i = 0;i< ACTIVESTATUS_MAX ;i++)
        {
            local ani = null;
            if (i == ACTIVESTATUS_FREEZE && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_POISON && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_BLEEDING && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_BURN && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_LIGHTNING && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_STONE && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_STUN && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_SLEEP && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_HOLD && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_BLIND && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_CURSE && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);
            else if (i == ACTIVESTATUS_SLOW && sq_IsValidActiveStatus(tar,i) )
                ani = getMonsterActiveStatusIconByID(obj,i);



            if (ani != null)
            {
                sq_AnimationProc(ani);
                sq_drawCurrentFrame(ani,x + subX, y, false);
                subX += 20;

                if (sq_IsValidActiveStatus(tar,ACTIVESTATUS_BLEEDING) )
                {
//
                    if (CNSquirrelAppendage.sq_IsAppendAppendage(tar, 
                        "character/newswordman/common/ap_weapon_katana_blood.nut"))
                    {
                        local apd = tar.GetSquirrelAppendage(
                        "character/newswordman/common/ap_weapon_katana_blood.nut");
                    
                        local layer = apd.getVar("layer").get_vector(0);
                        local rLayer = layer;
                        local bloodSubX = 0;
                        while (rLayer > 0)
                        {
                          local ani = returnBobyNumber(obj,rLayer % 10);
                          sq_AnimationProc(ani);
                          sq_drawCurrentFrame(ani,x + bloodSubX + subX - 10, y + 8, false);
                          rLayer = rLayer / 10;
                          bloodSubX = bloodSubX - 8;
                        }
    


                    }

                }

            }
        }
    }


}


//???占쏙옙??占쏙옙???
function getMonsterActiveStatusIconByID(obj,num)
{
    local numImage = null;
    local sq_var = obj.getVar();
    if (num == ACTIVESTATUS_FREEZE)
    {
        numImage = sq_var.GetAnimationMap("MonsterIconFreeze", "common/newstylecomboui/activestatus/icon/freeze.ani");
    }else if (num == ACTIVESTATUS_POISON )
    {
        numImage = sq_var.GetAnimationMap("MonsterIconPosion", "common/newstylecomboui/activestatus/icon/posion.ani");
    }else if (num == ACTIVESTATUS_BLEEDING)
    {
        numImage = sq_var.GetAnimationMap("MonsterIconBleeding", "common/newstylecomboui/activestatus/icon/bleeding.ani");
    }else if (num == ACTIVESTATUS_BURN )
    {
        numImage = sq_var.GetAnimationMap("MonsterIconBurn", "common/newstylecomboui/activestatus/icon/burn.ani");
    }else if (num == ACTIVESTATUS_LIGHTNING)
    {
        numImage = sq_var.GetAnimationMap("MonsterIconLightning", "common/newstylecomboui/activestatus/icon/lightning.ani");
    }else if (num == ACTIVESTATUS_STONE)
    {
        numImage = sq_var.GetAnimationMap("MonsterIconStone", "common/newstylecomboui/activestatus/icon/stone.ani");
    }else if (num == ACTIVESTATUS_STUN)
    {
        numImage = sq_var.GetAnimationMap("MonsterIconStun", "common/newstylecomboui/activestatus/icon/stun.ani");
    }else if (num == ACTIVESTATUS_SLEEP)
    {
        numImage = sq_var.GetAnimationMap("MonsterIconSleep", "common/newstylecomboui/activestatus/icon/sleep.ani");
    }else if (num == ACTIVESTATUS_HOLD)
    {
        numImage = sq_var.GetAnimationMap("MonsterIconHold", "common/newstylecomboui/activestatus/icon/hold.ani");
    }else if (num == ACTIVESTATUS_BLIND)
    {
        numImage = sq_var.GetAnimationMap("MonsterIconBlind", "common/newstylecomboui/activestatus/icon/blind.ani");
    }else if (num == ACTIVESTATUS_CURSE)
    {
        numImage = sq_var.GetAnimationMap("MonsterIconCurse", "common/newstylecomboui/activestatus/icon/curse.ani");
    }else if (num == ACTIVESTATUS_SLOW)
    {
        numImage = sq_var.GetAnimationMap("MonsterIconSlow", "common/newstylecomboui/activestatus/icon/slow.ani");
    }

    return numImage;
}




function getMonsterBloodOneRateByTarget(obj,target)
{

    if (!CNSquirrelAppendage.sq_IsAppendAppendage(target, "monster/set_muliting_hp/ap_setmuliting_hp.nut") )
    {
        local hp = target.getHp();
        local hpMax = target.getHpMax();
        local rate = hp.tofloat() / hpMax.tofloat();
        return rate;
    }else{
        local hp = target.getHp();
        local hpMax = target.getHpMax();
        local rate = hp.tofloat() / hpMax.tofloat();

        local apd = target.GetSquirrelAppendage("monster/set_muliting_hp/ap_setmuliting_hp.nut");
        local count = apd.getVar("HpVar").get_vector(1) * 100;
        local maxCount = apd.getVar("HpVar").get_vector(2) * 100;
        local rate = ((count - 100) + (rate * 100).tointeger() ).tofloat() / maxCount.tofloat();
        return rate;
    }
}




function drawMonsterBlood(obj)
{

    if (sq_isPVPMode() )
        return;

    local apd = getComboUiAppendage(obj);
    local tar = apd.getVar("atkObj").get_obj_vector(0);
    if (tar)
    {
        local currT = apd.getTimer().Get();
        tar = sq_GetCNRDObjectToActiveObject(tar);
        if (tar.isDead())
            return ;
        local sq_var = obj.getVar();
        local ani = sq_var.GetAnimationMap("MonsterBlood", "common/newstylecomboui/monster_blood.ani");
        local ani2 = sq_var.GetAnimationMap("MonsterBlood2", "common/newstylecomboui/monster_blood_basic.ani");
        local ani3 = sq_var.GetAnimationMap("MonsterBlood3", "common/newstylecomboui/monster_blood2.ani");

        local hp = tar.getHp();
        local hpMax = tar.getHpMax();
        local rate = getMonsterBloodOneRateByTarget(obj,tar);

        if (CNSquirrelAppendage.sq_IsAppendAppendage(tar, "monster/blood/ap_blood_gauge.nut") )
        {

            local apd = tar.GetSquirrelAppendage("monster/blood/ap_blood_gauge.nut");
            hp = apd.getVar("currentHp").get_vector(1);
            hpMax = apd.getVar("currentHp").get_vector(0);
            rate = hp.tofloat() / hpMax.tofloat();
            

            local id = apd.getVar("MonsterVar").get_vector(2);
            if (id != -1)
            {
                local string = "monsterEnergyDrawUI_Icon_" + id;
                local road = "common/monster/energy/icon/"+ id +".ani";
                local ani = obj.getVar().GetAnimationMap(string,road);

                sq_AnimationProc(ani);
                sq_drawCurrentFrame(ani, 5,100, false);
            }

        }

        

        local rate2 = 100;
        if (tar.isBoss())
        {
            drawBossMonsterEffect(obj,tar);
            rate2 = 100;

        }
        sq_AnimationProc(ani2);
        ani2.setImageRate(rate2.tofloat() / 100, 1.0);	
        sq_drawCurrentFrame(ani2,30, 130, false);

        setClip(30, 120, 30 + (538.0 * rate * rate2.tofloat() / 100.0).tointeger() , 140);

        sq_AnimationProc(ani);
        ani.setImageRate(rate2.tofloat() / 100, 1.0);	
        sq_drawCurrentFrame(ani,30, 130, false);
        releaseClip();

        drawMonsterBloodWhileEffect(apd,obj);

//        drawBlackMonsterHpRate(obj,(rate * 10000).tointeger(),514,162 );



    }
}




function drawMonsterBloodWhileEffect(apd,obj)
{
    local tar = apd.getVar("atkObj").get_obj_vector(0);
    if (tar)
    {

        local currT = apd.getTimer().Get();
        tar = sq_GetCNRDObjectToActiveObject(tar);
        local rate = (getMonsterBloodOneRateByTarget(obj,tar) * 10000).tointeger();
          

        if (CNSquirrelAppendage.sq_IsAppendAppendage(tar, "monster/blood/ap_blood_gauge.nut") )
        {

            local apd2 = tar.GetSquirrelAppendage("monster/blood/ap_blood_gauge.nut");
            local hp = apd2.getVar("currentHp").get_vector(1);
            local hpMax = apd2.getVar("currentHp").get_vector(0);
            rate = ( (hp.tofloat() / hpMax.tofloat()) * 10000).tointeger();
        }


        if (apd.getVar("saveWhileRate").size_vector() <= 0)
        {
          apd.getVar("saveWhileRate").clear_vector();
          for (local i = 0;i <= 19;i++)
          {
            apd.getVar("saveWhileRate").push_vector(0);
            apd.getVar("saveWhileRate").push_vector(0); 
          }
        
        }else{
          
          local sq_var = obj.getVar();
          for (local i = 0;i <= 19;i++)
          {
            
            local encodeRate = apd.getVar("saveWhileRate").get_vector(2 * i + 0);
            local encodeTime = apd.getVar("saveWhileRate").get_vector(2 * i + 1);
            local currentEncodeTime = currT - encodeTime;
            
            if (encodeRate <= 0)
                continue;

            if (currentEncodeTime > 1000)
            {
                apd.getVar("saveWhileRate").set_vector(2 * i ,   0 );
                apd.getVar("saveWhileRate").set_vector(2 * i + 1,0 );
            
            }else{

                local ani = sq_var.GetAnimationMap("MonsterWhileBlood", 
                "common/newstylecomboui/monster_blood2.ani");

                local rightHp = apd.getVar("saveWhileRate").get_vector(2 * i);
                local leftHp = apd.getVar("saveWhileRate").get_vector(2 * i + 2);
                if (leftHp == 0)
                  leftHp = rate;
                
                local baseRGB = sq_RGB(255,255,255);
                local alpha = sq_ALPHA( sq_GetAccel(255,0,currentEncodeTime , 1000,true) );
                
                setClip(30 + (538.0 *(leftHp.tofloat() / 10000.0)).tointeger(),120,
                        30 + (538.0 *(rightHp.tofloat() / 10000.0)).tointeger(),140);
                sq_AnimationProc(ani);
                sq_DrawSpecificFrameEffect_SIMPLE(ani, 30, 130, 0, baseRGB, alpha, false);
                
                //sq_drawCurrentFrameEffect_SIMPLE(ani, 30, 130,, sq_RGB(255,255,255), 
                //sq_ALPHA(sq_GetAccel(255,0,currentEncodeTime , 500,true)) );
                //sq_drawCurrentFrame(ani,30, 130, false);
                releaseClip();
            
            }
            
        
          }
        
        }
        //outPutEx("dummy/dummy.txt","rate " + rate);
        if (apd.getVar("saveWhileRateInitVar").size_vector() <= 0)
        {
          apd.getVar("saveWhileRateInitVar").clear_vector();
          apd.getVar("saveWhileRateInitVar").push_vector( rate );
        }else
        {
          
          local var = apd.getVar("saveWhileRateInitVar").get_vector(0);
          //outPut("dummy/dummy.txt","onsetRate  rate =" + rate +" var =" + var +"\n");
          if (rate < apd.getVar("saveWhileEncodeRate").get_vector(0) )
          {
            apd.getVar("saveWhileRateInitVar").set_vector(0,rate);
            for (local i = 0;i <= 19;i++)
            {
              local vectorRate = apd.getVar("saveWhileRate").get_vector(i * 2);
              if (vectorRate == 0)
              {
                //outPut("dummy/dummy.txt","rate =" + apd.getVar("saveWhileEncodeRate").get_vector(0) +"\n");
                apd.getVar("saveWhileRate").set_vector(i * 2,apd.getVar("saveWhileEncodeRate").get_vector(0));
                apd.getVar("saveWhileRate").set_vector(i * 2 + 1,currT);
                
                
                break;
              }
            }
            //outPut("dummy/dummy.txt","onsetRate\n");
            
            
          }
        
        }

        if (apd.getVar("saveWhileEncodeRate").size_vector() <= 0)
        {
          apd.getVar("saveWhileEncodeRate").clear_vector();
          apd.getVar("saveWhileEncodeRate").push_vector(rate);
        }else{
          apd.getVar("saveWhileEncodeRate").set_vector(0,rate);
        }
        //outPutEx("dummy/dummy.txt","vector\n");
        //outPut("dummy/dummy.txt","v1 = " + apd.getVar("saveWhileRate").get_vector(0) + "\n");
        //outPut("dummy/dummy.txt","v2 = " + apd.getVar("saveWhileRate").get_vector(2) + "\n");
        //outPut("dummy/dummy.txt","v3 = " + apd.getVar("saveWhileRate").get_vector(4) + "\n");
        //outPut("dummy/dummy.txt","v4 = " + apd.getVar("saveWhileRate").get_vector(6) + "\n");
        //outPut("dummy/dummy.txt","v5 = " + apd.getVar("saveWhileRate").get_vector(8) + "\n");
        
    }
}



function drawBossMonsterEffect(obj,target)
{
	gal_DrawMonsterRageCustomUIEffect(obj);
    drawBossMonsterWarnEtcEffect(obj,target);
}

function drawBossMonsterWarnEtcEffect(obj,target)
{
    target = sq_GetCNRDObjectToActiveObject(target);
    if (!target)
        return false;

    if (!checkIsHoldAndDelayEffect(target) )
    {
        local ani = null;
        local ani2 = null;
        if (target.isInDamagableState(target) )
        {
            ani = obj.getVar().GetAnimationMap("bossMonsterWarnEtc_HoldBack", "common/monster/etc_warn/no_hold_back.ani");
            ani2 = obj.getVar().GetAnimationMap("bossMonsterWarnEtc_Hold", "common/monster/etc_warn/no_hold_0.ani");
        }else
        {
            ani = obj.getVar().GetAnimationMap("bossMonsterWarnEtc_NoDamagableBack", "common/monster/etc_warn/ghost_back.ani");
            ani2 = obj.getVar().GetAnimationMap("bossMonsterWarnEtc_NoDamagable", "common/monster/etc_warn/ghost_0.ani");
        }
        if (ani && ani2)
        {
            sq_AnimationProc(ani);
            sq_drawCurrentFrame(ani,35, 98, false);
            sq_AnimationProc(ani2);
            sq_drawCurrentFrame(ani2,0, 98, false);
        }
    }
//    outPut("dummy/dummy.nut","success\n");
//    outPutEx("dummy/dummy.nut","ccc\n");
}




//?占쏙옙??占쏙옙??????
//586 116
function drawBlackMonsterHpRate(obj,var,x,y)
{
    
        local sq_var = obj.getVar();
//        local x = 514;
//        local y = 152;

        local numImage = null;
        local numImage2 = null;
        local numImage3 = null;
        local numImage4 = null;
        local numImage5 = null;
        local num = var;

        local geNum = num % 10;
        local shiNum = (num / 10)%10;
        local baiNum = (num / 100)%10;
        local qianNum = (num / 1000)%10;
        local wanNum = (num / 10000)%10;

        numImage =  getMonsterHpRateNumber(obj,geNum);
        numImage2 = getMonsterHpRateNumber(obj,shiNum);
        numImage3 = getMonsterHpRateNumber(obj,baiNum);
        numImage4 = getMonsterHpRateNumber(obj,qianNum);
        numImage5 = getMonsterHpRateNumber(obj,wanNum);

        if (num >= 0)
        {
            sq_AnimationProc(numImage);
            sq_drawCurrentFrame(numImage, x + 60 + 10, y, false);
        }
        if (num >= 10)
        {
            sq_AnimationProc(numImage2);
            sq_drawCurrentFrame(numImage2, x + 40 + 10, y, false);
        }
        if (num >= 100)
        {
            sq_AnimationProc(numImage3);
            sq_drawCurrentFrame(numImage3, x + 20, y, false);
        }
        if (num >= 1000)
        {
            sq_AnimationProc(numImage4);
            sq_drawCurrentFrame(numImage4, x + 0, y, false);
        }
        if (num >= 10000)
        {
            sq_AnimationProc(numImage5);
            sq_drawCurrentFrame(numImage5, x - 20, y, false);
        }
}

//???占쏙옙?? 占쏙옙????
function getMonsterHpRateNumber(obj,num)
{
    local numImage = null;
    local sq_var = obj.getVar();
    if (num == 0)
    {
        numImage = sq_var.GetAnimationMap("mhnum0", "common/newstylecomboui/hprate/0.ani");
    }else if (num == 1){
        numImage = sq_var.GetAnimationMap("mhnum1", "common/newstylecomboui/hprate/1.ani");
    }else if (num == 2){
        numImage = sq_var.GetAnimationMap("mhnum2", "common/newstylecomboui/hprate/2.ani");
    }else if (num == 3){
        numImage = sq_var.GetAnimationMap("mhnum3", "common/newstylecomboui/hprate/3.ani");
    }else if (num == 4){
        numImage = sq_var.GetAnimationMap("mhnum4", "common/newstylecomboui/hprate/4.ani");
    }else if (num == 5){
        numImage = sq_var.GetAnimationMap("mhnum5", "common/newstylecomboui/hprate/5.ani");
    }else if (num == 6){
        numImage = sq_var.GetAnimationMap("mhnum6", "common/newstylecomboui/hprate/6.ani");
    }else if (num == 7){
        numImage = sq_var.GetAnimationMap("mhnum7", "common/newstylecomboui/hprate/7.ani");
    }else if (num == 8){
        numImage = sq_var.GetAnimationMap("mhnum8", "common/newstylecomboui/hprate/8.ani");
    }else{
        numImage = sq_var.GetAnimationMap("mhnum9", "common/newstylecomboui/hprate/9.ani");
    }

    return numImage;
}


//??hp???????
function drawHpWarnScreen(obj,var)
{
    local sq_var = obj.getVar();
    local ani = null;
    if (var <= 10)
        ani = sq_var.GetAnimationMap("warnScreen1", "common/newstylecomboui/blood/10.ani");
    else if (var <= 25)
        ani = sq_var.GetAnimationMap("warnScreen2", "common/newstylecomboui/blood/25.ani");
    else if (var <= 50)
        ani = sq_var.GetAnimationMap("warnScreen3", "common/newstylecomboui/blood/50.ani");

    if (ani != null)
    {
            sq_AnimationProc(ani);
            sq_drawCurrentFrame(ani,0, 0, false);
    }

}

//??ui
function drawNewAwakeningSkillEffectUI(obj)
{
    
//GLOBAL_SKILL_AWAKENING_ANI_ID
    local sq_var = obj.getVar();
    if (!obj.isMyControlObject() )
        return false;

    local state = obj.sq_GetState();


    if (state <= 20 || state == 114)
        GLOBAL_SKILL_AWAKENING_ANI_ID = 0;

    local ani = null;
    if (GLOBAL_SKILL_AWAKENING_ANI_ID == 1)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_1", 
        "character/swordman/animation/ani_als/ghostgate/sword_ghost_soul_neo.ani");
    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 2)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_2", 
        "character/swordman/animation/ani_als/certainextermination/ghost_weaponmaster_neo.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 3)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_3", 
        "character/swordman/animation/ani_als/infinitykilling/swordman_swordghost_neo_04.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 4)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_4", 
        "character/swordman/animation/ani_als/extreamblood/swordman_berserker_neo.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 5)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_5", 
        "character/swordman/animation/ani_als/waveoflightning/swordman_asura_neo.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 6)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_6", 
        "character/swordman/effect/animation/atmakelotusslash/skill_cutsence.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 7)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_7", 
        "character/swordman/effect/animation/atmoonlightdance/skill_cutsence.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 8)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_8", 
        "character/swordman/animation/cutin/swordman_inchanl.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 9)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_9", 
        "character/swordman/animation/cutin/swordghost.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 10)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_10", 
        "character/swordman/animation/cutin/swordman_handlingsword.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 11)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_11", 
        "character/swordman/animation/cutin/swordman_bloodevil.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 12)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_12", 
        "character/swordman/animation/cutin/swordman_zigadvent.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 13)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_13", 
        "character/swordman/animation/cutin/swordman_indaratian.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 20)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_20", 
        "character/fighter/animation/cutin/fighterstreetfighter2nd.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 30)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_30", 
        "character/mage/animation/cutin/mage_elma2nd.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 31)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_31", 
        "character/mage/atanimation/cutin/atmage_vampirelord.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 32)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_32", 
        "character/mage/atanimation/cutin/atmage_eternal.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 33)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_33", 
        "character/mage/animation/cutin/mage_sorceress.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 40)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_40", 
        "character/priest/animation/zrr/skillcutsence/priest_immortal.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 41)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_41", 
        "character/gunner/animation/cutin/gunnerranger3nd.ani");

    }else if (GLOBAL_SKILL_AWAKENING_ANI_ID == 51)
    {
        ani = sq_var.GetAnimationMap("skillAwakeningID_51", 
        "etc/UltimateSkillAni/cola_2jue/2jue_Atsword_majesty.Ani");

    }



    if (ani != null)
    {

        local flag = sq_IsEnd(ani);
        if (flag)
        {
            GLOBAL_SKILL_AWAKENING_ANI_ID = 0;
            return ;
        }

        local size = sq_GetAniRealImageSize(ani, obj.getDirection() );
        local rate = 800.0 / size.tofloat();

        if (obj.getDirection() == ENUM_DIRECTION_LEFT)
        {
            ani.setImageRate(-1.0,1.0);
            sq_AnimationProc(ani);
            sq_drawCurrentFrame(ani,-133 + 1067, 0, false);
        }else
        {
            ani.setImageRate(1.0,1.0);
            sq_AnimationProc(ani);
            sq_drawCurrentFrame(ani,-133, 0, false);
        }

    }


}



function drawHpOrMpNumber(obj,x,y,value)
{

        local sq_var = obj.getVar();

        local numImage = null;
        local numImage2 = null;
        local numImage3 = null;
        local numImage4 = null;
        local numImage5 = null;
        local num = value;
        local geNum = num % 10;
        local shiNum = (num / 10)%10;
        local baiNum = (num / 100)%10;
        local qianNum = (num / 1000)%10;
        numImage = returnBobyNumber(obj,geNum);
        numImage2 = returnBobyNumber(obj,shiNum);
        numImage3 = returnBobyNumber(obj,baiNum);
        numImage4 = returnBobyNumber(obj,qianNum);
        if (geNum >= 0)
        {
            sq_AnimationProc(numImage);
            sq_drawCurrentFrame(numImage, x + 48, y + 23, false);
        }
        if (value >= 10)
        {
            sq_AnimationProc(numImage2);
            sq_drawCurrentFrame(numImage2, x + 40, y + 23, false);
        }
        if (value >= 100)
        {
            sq_AnimationProc(numImage3);
            sq_drawCurrentFrame(numImage3, x + 32, y + 23, false);
        }
        if (value >= 1000)
        {
            sq_AnimationProc(numImage4);
            sq_drawCurrentFrame(numImage4, x + 24, y + 23, false);
        }
}




function drawNewStyleComboRate(obj,x,y)
{

    local rank = getNewStyleComboRank(obj,x,y);


}


function checkUpMonsterStatusEffect(appendage)
{

	if(!appendage) {
		return;		
	}
				
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}

    for (local i = 0;i < ACTIVESTATUS_MAX ;i++)
    {
        if (sq_IsValidActiveStatus(parentObj,i) )
        {
            if (appendage.getVar("activestatus").get_vector(i) == 0)
            {
                checkActiveStatusState(appendage,i);
                appendage.getVar("activestatus").set_vector(i,1);
            }
        }else{
            if (appendage.getVar("activestatus").get_vector(i) == 1)
            {
                appendage.getVar("activestatus").set_vector(i,0);
            }
        }
    }

}

function onMonsterForceHoldEffect(appendage)
{


	if(!appendage) {
		return;		
	}
				
    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}


    if (appendage.getVar("hold").get_vector(0) == 1)
    {
        if (parentObj.getState() == STATE_HOLD)
        {

            NewActiveStatus_NormalHold(parentObj);
            appendage.getVar("hold").set_vector(0,2);
        }
    }else{
        if (parentObj.getState() != STATE_HOLD)
        {
            appendage.getVar("hold").set_vector(0,1);
        }
    }

}


function onMonsterUndamageableEffect(appendage)
{

    local parentObj = appendage.getParent();
    local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) 
    {
		appendage.setValid(false);
		return;
	}


    parentObj = sq_GetCNRDObjectToActiveObject(parentObj);

    if(!parentObj.isInDamagableState(parentObj) && !parentObj.isDead())
    {

        local currT = appendage.getTimer().Get();

        local countT = currT % 1000;

        parentObj.setCustomOutline(false, 0, true, 2);


        local a = {
          maxA = 150,
          minA = 50
        };

        if (countT < 500)
        {
            local rgb = sq_RGBA(255,255,255,sq_GetAccel(a.minA, a.maxA, countT , 500, true) );
            parentObj.setCustomOutline(true, rgb, false, 1);
        }else{
            local rgb = sq_RGBA(255,255,255,sq_GetAccel(a.maxA, a.minA, countT - 500 , 500, true) );
            parentObj.setCustomOutline(true, rgb, false, 1);
        }

        //while


    }else if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/blood/ap_blood_gauge.nut"))
    {

        local rgb = sq_RGBA(0,0,155,100);
        parentObj.setCustomOutline(true, rgb, false, 1);

    }else if (CNSquirrelAppendage.sq_IsAppendAppendage(parentObj, "monster/jummp_dummy/ap_hold.nut"))
    {

        local rgb = sq_RGBA(0,0,255,200);
        parentObj.setCustomOutline(true, rgb, false, 1);

    }
    else{
        parentObj.setCustomOutline(false, 0, true, 2);
    }

}