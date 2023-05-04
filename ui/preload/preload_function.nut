
function preloadMonster_AllGrowJob(obj)
{
	if(!obj) return;
	//printp("preloadMonster Start!\n");
	//local monsterId = obj.getCollisionObjectIndex(obj);
	//printp("preloadMonster Step1\n");
	//local aniList = MONSTER_CUSTOM_ANI_CONFIG_INFO.rawget(monsterId);
	//printp("preloadMonster Step2\n");
	//if(!aniList) return;
	//printp("preloadMonster Step3\n");
	//foreach(aniFilename in aniList)
	//	preloadByAniName(obj,aniFilename);
	//printp("preloadMonster OK!\n");
}

function preloadAwakeCutin_AllGrowJob(obj)
{
	if(!obj) return;
	local aniName;
	if(IS_MANAY_SELECTED_CUTSCENE == 0)
	{
		aniName = CUTSCENE_CUSTOM_ANI_CONFIG_INFO.rawget(CURRENT_CUTSCENE_TYPE)[0];
		preloadByAniMapName(obj,aniName);
	}else{
		foreach(type in SELECTED_CUTSCENE_TYPE)
		{
			aniName = CUTSCENE_CUSTOM_ANI_CONFIG_INFO.rawget(type)[0];
			preloadByAniMapName(obj,aniName);
		}
	}
	//printp("preloadAwakeCutin OK!\n");
}

function preloadSkill_AllGrowJob(obj)
{
	if(!obj) return;
	local info = SKILL_CUTSCENE_ANI_CONFIG_INFO.rawget(sq_getJob(obj));
	if(!info) return;
	
	foreach(skillIndex,aniList in info)
	{
		local skillLevel = sq_GetSkillLevel(obj, skillIndex);
		if(skillLevel && skillLevel > 0)
		{
			foreach(aniFilename in aniList)
				preloadByAniName(obj,aniFilename);
		}
	}
	//printp("preloadSkill OK!\n");
}

function preloadCommon_AllGrowJob(obj)
{
	if(!obj) return;
	preloadByAni(obj, createMaxNumberAni());
	for(local i = 0; i < 10; i++)
	{
		preloadByAni(obj, createCriNumberAni(i));
		preloadByAni(obj, createRedNumberAni(i));
		preloadByAni(obj, createGreenNumberAni(i));
		preloadByAni(obj, createBlueNumberAni(i));
		preloadByAni(obj, createWhiteNumberAni(i));
		preloadByAni(obj, createAddNumberAni(i));
		preloadByAni(obj, createActiveNumberAni(i));
		preloadByAni(obj, createActiveAddNumberAni(i));
	}
}

function preloadByAniMapName(obj, aniFilename)
{
	local ani;
	try {
		ani = obj.getVar().GetAnimationMap(aniFilename,aniFilename);
	} catch(exceptiona) {
		return;
	}
	
	if(!ani) return;
	
	sq_AnimationProc(ani);
	for(local i = 0; i < 200; i++)
	{
		sq_SetAnimationFrameIndex(ani,i);
		if(sq_GetAnimationFrameIndex(ani) != i)
			break;
	}
	sq_Rewind(ani);
	//printp("preload" +aniFilename+ ",\n");
}

function preloadByAniName(obj, aniFilename)
{	
	local ani;
	try {
		ani = sq_CreateAnimation("",aniFilename);	
	} catch(exceptiond) {
		return;
	}
	preloadByAni(obj,ani);	
	//printp("preload : " +aniFilename+ " ; \n");
}

function preloadByAni(obj, ani)
{
	if(!ani) return;
	local pooledObj;
	try {
		ani.setRGBA(0,0,0,0);
		pooledObj = sq_CreatePooledObject(ani,true);
		pooledObj.setCurrentPos(-99998,-99998,-99998);
		sq_AddObject(obj, pooledObj, OBJECTTYPE_DRAWONLY, false);
	} catch(exceptionb) {
		return;
	}
	
	for(local i = 0; i < 999; i++)
	{
		try {
			sq_SetAnimationFrameIndex(ani,i);
		} catch(exceptionc) {
			return;
		}
		if(sq_GetAnimationFrameIndex(ani) != i)
		{
			pooledObj.setValid(false);
			return;
		}
		//printp("OK!\n");
	}
	
}