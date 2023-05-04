function procAppend_AllGrowJob(obj)
{
	if(!obj) return;
	if(sq_isPVPMode()) return;
	preLoad_Die_Sound(obj);
}



function procAppend_AllGrowJob(obj)
{
	if(!obj) return;
	if(sq_isPVPMode()) return;
	if ( !CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/currency.nut" ) ) //?分
	{
		local appendage1 = CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, 174, false, "apjh/currency.nut", true );
	}
	//如果是女法，是元素
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_MAGE && sq_getGrowType(obj) == 1) {
		//?取?前技能??
		local index = obj.getCurrentSkillIndex();
		local indexTemp = obj.getVar("currentSkillIndex").getInt(0);
		if (index != -1 && index != indexTemp) {
			obj.getVar("currentSkillIndex").setInt(0, index);
		} else {
			index = indexTemp;
		}

		//天雷吸附
		if (index == 55) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_thunderstrike.nut" )) {
				CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_thunderstrike.nut", true );
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_thunderstrike.nut" )) {
				CNSquirrelAppendage.sq_RemoveAppendage ( obj, "apjh/ap_thunderstrike.nut" );
			}
		}
		//移?施法
		//元素之幕、元素震?、??水晶、第六元素
		local mapIndex = sq_GetMapIndex(sq_GetGlobaludpModuleStage());
		local mapIndexTemp = obj.getVar("mapIndex").getInt(0);
		local mapFlag = false;
		if (mapIndex != mapIndexTemp) {
			obj.getVar("mapIndex").setInt(0, mapIndex);
			mapFlag = true;
		}
		
		if ((index == 249 || index == 250 || index == 251 || index == 253) && obj.getVar("onDamage").getInt(0) != 1) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_magemove.nut" )) {
				CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_magemove.nut", true );
			}
			if (mapFlag) {
				obj.getVar("currentSkillIndex").setInt(0, 0);
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_magemove.nut" )) {
				obj.getVar("onDamage").setInt(0, 0);
				obj.getVar("currentSkillIndex").setInt(0, 0);
				CNSquirrelAppendage.sq_RemoveAppendage(obj, "apjh/ap_magemove.nut");
			}
		}

		//?技能??
		local appendage1;
		if ((index == 249 || index == 250 || index == 251 || index == 253) && mapFlag && obj.isDownSkillLastKey()) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_magefollowmap.nut" )) {
				obj.getVar("followSkillIndex").setInt(0, index);
				appendage1 = CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_magefollowmap.nut", true );
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_magefollowmap.nut" )) {
				if (!appendage1.isValid()) {
					CNSquirrelAppendage.sq_RemoveAppendage(obj, "apjh/ap_magefollowmap.nut");
				}
			}
		}
	}

	//如果是女法，是魔道
	if (sq_getJob(obj) == ENUM_CHARACTERJOB_MAGE && sq_getGrowType(obj) == 4) {
		//?取?前技能??
		local index = obj.getCurrentSkillIndex();

		//反重力?手
		if (index == 103) {
			if (!CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_antigravitystarter.nut" )) {
				CNSquirrelAppendage.sq_AppendAppendage ( obj, obj, index, false, "apjh/ap_antigravitystarter.nut", true );
			}
		} else {
			if (CNSquirrelAppendage.sq_IsAppendAppendage ( obj, "apjh/ap_antigravitystarter.nut" )) {
				CNSquirrelAppendage.sq_RemoveAppendage ( obj, "apjh/ap_antigravitystarter.nut" );
			}
		}
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



