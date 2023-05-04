
function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_jumpskillautofind")
	appendage.sq_AddFunctionName("proc", "proc_appendage_jumpskillautofind")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_jumpskillautofind")
	appendage.sq_AddFunctionName("onDamageParent", "onDamageParent_appendage_jumpskillautofind")
}

function onStart_appendage_jumpskillautofind(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();
	obj = sq_GetCNRDObjectToSQRCharacter(obj);

	local index = obj.getCurrentSkillIndex();
	appendage.getVar("index").setInt(0, index);

	//占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占?
	local distance = 200;
	//占쏙옙占쏙옙占쏙옙占?
	local moveTime = 100;

	local target = sq_FindTarget(obj, -distance, distance, distance / 2, 500);
	if (!target) {
		appendage.setValid(false);
		return;
	}

	//占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
    local x = obj.getXPos();
    local y = obj.getYPos();
	local z = obj.getZPos();
	local maxX = target.getXPos();
	local maxY = target.getYPos();
	local maxZ = target.getZPos();
	local height = sq_GetObjectHeight(target);
	maxZ = maxZ + height;

	if (maxX - x >= 0) {
		obj.setCurrentDirection(ENUM_DIRECTION_RIGHT); //占쏙옙占쏙옙占쏙옙物占쏙옙占쏙옙
	} else {
		obj.setCurrentDirection(ENUM_DIRECTION_LEFT);
	}

	//占쏙옙占쏙옙占쏙옙占?
	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");

	if (!spectrumAppendage) {
		spectrumAppendage = appendage.sq_AddOcularSpectrum("ocularSpectrum", obj, obj, 100);
	}

	sq_SetParameterOcularSpectrum(spectrumAppendage, 500, 10, true, sq_RGBA(180, 40, 255, 255), sq_RGBA(220, 155, 255, 0), 2, 2, 2);

	obj.getVar().clear_vector();
	obj.getVar().push_vector(x);
	obj.getVar().push_vector(y);
	obj.getVar().push_vector(z);
	obj.getVar().push_vector(maxX);
	obj.getVar().push_vector(maxY);
	obj.getVar().push_vector(maxZ);
	obj.getVar().push_vector(moveTime);

	//占쏙옙占쏙옙占쏙옙物dash占쏙옙ani占쏙옙占쏙옙
	local aniIndex = getChargeAniIndexByJob(obj);
    obj.sq_SetCurrentAnimation(aniIndex);

	appendage.getVar("start").setInt(0, 1);

	local currTime = appendage.getTimer().Get();
	appendage.getVar("currTime").setInt(0, currTime);

}

function proc_appendage_jumpskillautofind(appendage)
{
	if(!appendage) return;

	local obj = appendage.getParent();
	obj = sq_GetCNRDObjectToSQRCharacter(obj);

	local start = appendage.getVar("start").getInt(0);

	local index = appendage.getVar("index").getInt(0);
	local skill = sq_GetSkill(obj, index);

	if (start == 1) {
		local x = obj.getVar().get_vector(0);
		local y = obj.getVar().get_vector(1);
		local z = obj.getVar().get_vector(2);
		local maxX = obj.getVar().get_vector(3);
		local maxY = obj.getVar().get_vector(4);
		local maxZ = obj.getVar().get_vector(5);
		local moveTime = obj.getVar().get_vector(6);

		local currTime = appendage.getTimer().Get();
		currTime = currTime - appendage.getVar("currTime").getInt(0)

		local xPosVelocity = sq_GetUniformVelocity(x, maxX, currTime, moveTime);
		local yPosVelocity = sq_GetUniformVelocity(y, maxY, currTime, moveTime);
		local zPosVelocity = sq_GetUniformVelocity(z, maxZ, currTime, moveTime);

		local nowX = obj.getXPos();
		local nowY = obj.getYPos();
		local nowZ = obj.getZPos();

		sq_MoveToNearMovablePos(obj, xPosVelocity, yPosVelocity, zPosVelocity, nowX, nowY, nowZ, 1, 1, 1);

		if (currTime > moveTime) {
			appendage.getVar("start").setInt(0, 0);
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);

			if (index == 17) {
				obj.sq_IntVectClear();
				obj.sq_AddSetStatePacket(28, STATE_PRIORITY_USER, true);
			}
			if (index == 62) {
				obj.sq_IntVectClear();
				obj.sq_AddSetStatePacket(36, STATE_PRIORITY_USER, true);
			}
			if (index == 101) {
				obj.sq_IntVectClear();
				obj.sq_AddSetStatePacket(63, STATE_PRIORITY_USER, true);
			}
		}
	} else if (index == 17 && skill.isInCoolTime()) { //占쏙옙占쏙옙占쏙옙占쏙옙占?算結占쏙옙
		appendage.setValid(false);
	} else if ((index == 62 || index == 101) && index != obj.getCurrentSkillIndex()) { //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙算結占쏙옙
		appendage.setValid(false);
	}
}

function onDamageParent_appendage_jumpskillautofind(appendage, attacker, boundingBox, isStuck) 
{
	if(!appendage) return;
	appendage.setValid(false);
}

function onEnd_appendage_jumpskillautofind(appendage)
{
	if(!appendage) {
		return;
	}
	
	local obj = appendage.getParent();

	//ap結占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	
	if(spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}

function getChargeAniIndexByJob(obj) {
	local job = sq_getJob(obj);

	if (job == ENUM_CHARACTERJOB_AT_FIGHTER) {
		return 204;
	} else if (job == ENUM_CHARACTERJOB_FIGHTER) {
		return 162;
	}
}