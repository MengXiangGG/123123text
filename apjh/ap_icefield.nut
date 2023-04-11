function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_icefield")
}


function proc_appendage_icefield ( appendage ) {
	if(!appendage) {
		return;
	}
    
    local obj = sq_GetCNRDObjectToSQRCharacter(appendage.getParent());
	local icefield = obj.getMyPassiveObject(23027, 0);
	if(icefield) {
		local x = obj.getXPos();
		local y = obj.getYPos(); //計算占쏙옙占쏙옙占쏙옙占쏙옙?占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙固占쏙옙
		if (obj.getDirection() == ENUM_DIRECTION_RIGHT) {
			x = x + 300;
		} else {
			x = x - 300;
		}
		if(sq_IsMyCharacter(obj)) {
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
			createIce(obj, x, y); //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
			obj.getVar("currentSkillIndex").setInt(0, 0);
		}
	}
}

function createIce(obj, x, y) {
    obj.sq_StartWrite();
    obj.sq_WriteDword(1); //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占?
    //占쏙옙占쏙옙?占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占?
    sq_SendCreatePassiveObjectPacketPos( obj, 23027, 0, x, y, 0);
    sq_SendCreatePassiveObjectPacketPos( obj, 90010003, 0, x, y, 0);
}