function drawCustomUI_AllGrowJob(obj)
{
	if(!obj) return;
	SkillCoolTimeUI (obj); //技能?秒
	gal_DrawMonsterToSetCustomUIEffect(obj);
	gal_DrawMonsterEnergyCustomUIEffect(obj);
	gal_DrawMonsterEnergyCustomUIEffectSecond(obj);
	gal_DrawMonsterRedEnergyCustomUIEffect(obj);
	gal_DrawMonsterEnergyBallCustomUIEffect(obj);
	setCharacterComboUiAppendage(obj);
	return;
}


function drawCustomUI_ATSwordman(obj)
{
	if(!obj) return;
	
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawATSwordmanCutinUI(obj);
	return;
}


function drawCustomUI_Swordman(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawHeroGhostIcon(obj);
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawSwordmanCutinUI(obj);
	return;
}

function drawCustomUI_ATFighter(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	drawNengLiangUi(obj); //被?
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawATFightCutinUI(obj);
	return;
}

function drawCustomUI_Fighter(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawFightCutinUI(obj);
	return;
}

function drawCustomUI_ATGunner(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawATGunnerCutinUI(obj);
	return;
}

function drawCustomUI_Gunner(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawGunnerCutinUI(obj);
	return;
}

function drawCustomUI_ATMage(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawATMageCutinUI(obj);
	return;
}

function drawCustomUI_Mage(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawMageCutinUI(obj);
	return;
}

function drawCustomUI_Priest(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawPriestCutinUI(obj);
	return;
}

function drawCustomUI_Thief(obj)
{
	if(!obj) return;
	if(!obj || sq_isPVPMode()) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawThiefCutinUI(obj);
	return;
}

function drawCustomUI_DemonicSwordman(obj)
{
	if(!obj) return;
	drawCustomUI_AllGrowJob(obj);
	if(DRAW_MONSTER_PID != -1)
		drawMonsterUI(obj);
	if(ULTIMATE_SKILL_ID != -1)
		drawUltimateCutinUI(obj);
	if(AWAKE_SKILL_ID != -1)
		drawThiefCutinUI(obj);
	return;
}




