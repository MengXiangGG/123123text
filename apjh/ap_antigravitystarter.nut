function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_antigravitystarter")
}


function proc_appendage_antigravitystarter ( appendage ) {
    if(!appendage) {
		return;		
	}
    local obj = sq_GetCNRDObjectToSQRCharacter(appendage.getParent());
	local time = obj.sq_GetStateTimer();
    if(time > 200) {
        obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		sq_BinaryStartWrite();
    	sq_BinaryWriteDword(170); //占쏙옙占쏙옙占싱わ옙占쏙옙占?
		obj.sq_SendCreatePassiveObjectPacket(23047, 0, 100, 0, 0);
    }
}
