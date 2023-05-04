function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_thunderstrike")
}


function proc_appendage_thunderstrike ( appendage ) {
    if(!appendage) {
		return;		
	}
    
    local obj = sq_GetCNRDObjectToSQRCharacter(appendage.getParent());
    local thunder = obj.getMyPassiveObject(23020, 0); //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占?
    if(thunder) {
        local x = thunder.getXPos();
        local y = thunder.getYPos();
        local thunder1 = obj.getMyPassiveObject(9001001, 1); //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占?
        if(!thunder1){
            sq_SendCreatePassiveObjectPacketPos( obj, 90010001, 1, x, y, 0);
        }
    }
}
