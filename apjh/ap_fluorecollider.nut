function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_fluorecollider")
}


function proc_appendage_fluorecollider ( appendage ) {
    if(!appendage) {
		return;		
	}
    local obj = sq_GetCNRDObjectToSQRCharacter(appendage.getParent());
	local time = obj.sq_GetStateTimer();
    if(time > 200) {
        obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
        obj.sq_SendCreatePassiveObjectPacket(90010004, 0, 100, 0, 0);
    }
}
