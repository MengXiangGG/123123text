function procAppend_AllGrowJob(obj)
{
	if(!obj) return;
	if(sq_isPVPMode()) return;
	if ( !CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/currency.nut" ) ) //?分
	{
		local appendage1 = CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, 174, false, "apjh/currency.nut", true );
	}
	//如果是男女?手，是大?
	if ((sq_getJob(obj) == ENUM_CHARACTERJOB_GUNNER || sq_getJob(obj) == ENUM_CHARACTERJOB_AT_GUNNER) && sq_getGrowType(obj) == 2) {
		//?取?前技能??
		local index = obj.getCurrentSkillIndex();

		//x-1控制
		if (index == 71) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_x1hold.nut" )) {
				CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_x1hold.nut", true );
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_x1hold.nut" )) {
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "apjh/ap_x1hold.nut");
			}
		}
	}

	//如果是女格斗，是街?
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_FIGHTER && sq_getGrowType(obj) == 3) {
		//?取?前技能??
		local index = obj.getCurrentSkillIndex();

		//街??暴移?
		if (index == 77) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_junkspin.nut" )) {
				CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_junkspin.nut", true );
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_junkspin.nut" )) {
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "apjh/ap_junkspin.nut");
			}
		}
		//裂地?沙吸怪控制
		if (index == 106) {
        	if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_groundkickhold.nut" )) {
				CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_groundkickhold.nut", true );
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_groundkickhold.nut" )) {
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "apjh/ap_groundkickhold.nut");
			}
    	}
	}

	//如果是男格斗，是街?
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_AT_FIGHTER && sq_getGrowType(obj) == 3) {
		//?取?前技能??
		local index = obj.getCurrentSkillIndex();

		//血色?暴移?
		if (index == 77) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_junkspin.nut" )) {
				CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_junkspin.nut", true );
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_junkspin.nut" )) {
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "apjh/ap_junkspin.nut");
			}
		}
		
		//自??放投??化
		local state = obj.sq_GetState();
    	if (index == -1 && obj.getVar("autoSmartThrow").getInt(0) != 1 && state == STATE_STAND) {
        	obj.sq_IntVectClear();
        	obj.sq_IntVectPush(109);
        	obj.sq_AddSetStatePacket(17, STATE_PRIORITY_USER, true);
        	obj.getVar("autoSmartThrow").setInt(0, 1);
    	}
    
    	if (state == 35 || state == 39 || state == 64 || state == 40) {
        	obj.getVar("autoSmartThrow").setInt(0, 0);
    	}
		
	}

	//如果是男格斗，是散打
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_AT_FIGHTER && sq_getGrowType(obj) == 2) {
		//?取?前技能??
		local index = obj.getCurrentSkillIndex();
		//瞬影???怪物??
		if (index == 82) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_randomkickfollow.nut" )) {
				CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_randomkickfollow.nut", true );
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_randomkickfollow.nut" )) {
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "apjh/ap_randomkickfollow.nut");
			}
		}
	}

	//如果是男女格斗，是柔道
	if ((sq_getJob(obj) == ENUM_CHARACTERJOB_FIGHTER || sq_getJob(obj) == ENUM_CHARACTERJOB_AT_FIGHTER) && sq_getGrowType(obj) == 4) {
		//?取?前技能??
		local index = obj.getCurrentSkillIndex();

		//?踏、空??、空???
		if (index == 17 || index == 62 || index == 101) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_jumpskillautofind.nut" )) {
				CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_jumpskillautofind.nut", true );
			}
		}
	}

	sq_SetMyShake(obj,0,0); //震?
	preLoad_Die_Sound(obj); //怪物死亡音效
}



