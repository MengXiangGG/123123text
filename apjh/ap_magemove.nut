
function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_magemove")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_magemove")
}

function onDamageParent_appendage_magemove(appendage ,attacker, boundingBox, isStuck) {
	if (!appendage) {
		return;
	}

	local obj = appendage.getParent();
	obj = sq_GetCNRDObjectToSQRCharacter(obj);
	obj.getVar("onDamage").setInt(0, 1);
}

function proc_appendage_magemove(appendage)
{
	if(!appendage) {
		return;		
	}
    local obj = sq_GetCNRDObjectToSQRCharacter(appendage.getParent());
    local currentAni = sq_GetCurrentAnimation(obj); //占쏙옙占쏙옙占쏙옙占쏙옙ani
    local state = obj.getSkillSubState(); //占쏙옙占쏙옙占쏙옙占쏙옙階段
    //占쏙옙占쏙옙?占쏙옙占쏙옙占쏙옙占쏙옙階段占쏙옙占쏙옙占쏙옙占쏙옙
    if(state >= 1) {
		appendage.setValid(false);
        return;
    }
    local time = sq_GetObjectTime(obj);
    obj.getVar("time").setInt(0, time);
	local xDashSpeed = 5; //x占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占?
	local xMoveSpeed = 3; //x占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占?
	local ySpeed = 2; //y占쏙옙占쏙옙占쏙옙占쏙옙占?
    //占쏙옙斷占쏙옙占싶?첺ni結占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙move占쏙옙dash占쏙옙占쏙옙占쏙옙ani可占쏙옙
    if(sq_IsEnd(currentAni) || currentAni.isLoop()) {
        //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
        local x = obj.getXPos();
        local x1 = x;
        local y = obj.getYPos();
        local y1 = y;
        local z = obj.getZPos();
        //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占?
        local dashKey = obj.getVar("dashKey").getInt(0);
        if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) {
            //占쏙옙加方占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쌜ｏ옙占쏙옙占쏙옙占쏙옙斷占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙上stay.ani
            obj.getVar("rightKey").setInt(0, OPTION_HOTKEY_MOVE_RIGHT);
            obj.setCurrentDirection(ENUM_DIRECTION_RIGHT); //占쏙옙占쏙옙占쏙옙物占쏙옙占쏙옙
            //占쏙옙占쏙옙占쏙옙斷占쏙옙占쏙옙
            if(isDash(obj, OPTION_HOTKEY_MOVE_RIGHT, time) || dashKey == OPTION_HOTKEY_MOVE_RIGHT) {
                obj.sq_SetCurrentAnimation(145); //dash.ani
                x1 = x1 + xDashSpeed;
            } else {
                obj.sq_SetCurrentAnimation(144); //move.ani
                x1 = x1 + xMoveSpeed;
            }
            //占쏙옙加占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占썅，占쏙옙占쏙옙占쏙옙斷占쏙옙占쏙옙
            obj.getVar("keydown").setInt(0, OPTION_HOTKEY_MOVE_RIGHT);
            obj.getVar("keydownTime").setInt(0, time);
        }
        if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) {
            obj.getVar("leftKey").setInt(0, OPTION_HOTKEY_MOVE_LEFT);
            obj.setCurrentDirection(ENUM_DIRECTION_LEFT);
            if(isDash(obj, OPTION_HOTKEY_MOVE_LEFT, time) || dashKey == OPTION_HOTKEY_MOVE_LEFT) {
                obj.sq_SetCurrentAnimation(145);
                x1 = x1 - xDashSpeed;
            } else {
                obj.sq_SetCurrentAnimation(144);
                x1 = x1 - xMoveSpeed;
            }

            obj.getVar("keydown").setInt(0, OPTION_HOTKEY_MOVE_LEFT);
            obj.getVar("keydownTime").setInt(0, time);
        }
        if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) {
            obj.getVar("upKey").setInt(0, OPTION_HOTKEY_MOVE_UP);
            //占쏙옙上占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占?
            if(!obj.isCurrentCutomAniIndex(145)) {
                obj.sq_SetCurrentAnimation(144);
            }
            y1 = y1 - ySpeed;
        }
        if(sq_IsKeyDown(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) {
            obj.getVar("downKey").setInt(0, OPTION_HOTKEY_MOVE_DOWN);
            if(!obj.isCurrentCutomAniIndex(145)) {
                obj.sq_SetCurrentAnimation(144);
            }
            y1 = y1 + ySpeed;
        }
        if(sq_IsKeyUp(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL)) {
            //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙賦?4占쏙옙方占쏙옙占쏙옙占쏙옙占?123
            obj.getVar("rightKey").setInt(0, 4);
            //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙?占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占?
            removeDashKey(obj, OPTION_HOTKEY_MOVE_RIGHT);
        }
        if(sq_IsKeyUp(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL)) {
            obj.getVar("leftKey").setInt(0, 4);
            removeDashKey(obj, OPTION_HOTKEY_MOVE_LEFT);
        }
        if(sq_IsKeyUp(OPTION_HOTKEY_MOVE_UP, ENUM_SUBKEY_TYPE_ALL)) {
            obj.getVar("upKey").setInt(0, 4);
        }
        if(sq_IsKeyUp(OPTION_HOTKEY_MOVE_DOWN, ENUM_SUBKEY_TYPE_ALL)) {
            obj.getVar("downKey").setInt(0, 4);
        }
        //方占쏙옙占쏙옙都占쏙옙4占쏙옙占쏙옙stay.ani
        if(obj.getVar("rightKey").getInt(0) == 4 &&
           obj.getVar("leftKey").getInt(0) == 4 &&
           obj.getVar("upKey").getInt(0) == 4 &&
           obj.getVar("downKey").getInt(0) == 4) {
           obj.sq_SetCurrentAnimation(146);
        }
        //占쏙옙物占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
        sq_MoveToNearMovablePos(obj, x1, y1, z, x, y, z, 1, 1, 1);
    }
	return;
} 
//占쏙옙斷占쏙옙占쏙옙占쏙옙發占쏙옙占쏙옙
function isDash(obj, keyNum, time) {
    local downKey = obj.getVar("keydown").getInt(0);
    local downKeyTime = obj.getVar("keydownTime").getInt(0);

    //占쏙옙?占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쌜죏eydown占쏙옙占쏙옙占쏙옙隔占쏙옙占쏙옙占?
    if(downKey == keyNum && time - downKeyTime > 100 && time - downKeyTime < 150) {
        obj.getVar("dashKey").setInt(0, keyNum);
        return true;
    }
    return false;
}
//?占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
function removeDashKey(obj, keyNum) {
    local dashKey = obj.getVar("dashKey").getInt(0);
    if(dashKey == keyNum) {
        obj.getVar("dashKey").setInt(0, 4);
    }
}
