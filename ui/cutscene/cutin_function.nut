function drawSwordmanCutinUI(obj)
{
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 231)
		awake = var.GetAnimationMap("swordman_bloodevil", "common/cutscene/swordman_bloodevil.ani");
	else if(AWAKE_SKILL_ID == 241)
		awake = var.GetAnimationMap("swordman_zigadvent", "common/cutscene/swordman_zigadvent.ani");
	else if(AWAKE_SKILL_ID == 244)
		awake = var.GetAnimationMap("swordman_indaratian", "common/cutscene/swordman_indaratian.ani");
	else if(AWAKE_SKILL_ID == 246)
		awake = var.GetAnimationMap("swordman_handlingsword", "common/cutscene/swordman_handlingsword.ani");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133 + 1067, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133, 0, false);
	}
}

function drawGunnerCutinUI(obj)
{
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 235)
		awake = var.GetAnimationMap("gunnerlauncher2nd", "common/cutscene/gunnerlauncher2nd.ani");
	else if(AWAKE_SKILL_ID == 240)
		awake = var.GetAnimationMap("gunnerranger2nd", "common/cutscene/gunnerranger2nd.ani");
	else if(AWAKE_SKILL_ID == 245)
		awake = var.GetAnimationMap("gunnerspitfire2nd", "common/cutscene/gunnerspitfire2nd.ani");
	else if(AWAKE_SKILL_ID == 247)
		awake = var.GetAnimationMap("gunnermechanic2nd", "common/cutscene/gunnermechanic2nd.ani");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133 + 1067, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133, 0, false);
	}
}

function drawATGunnerCutinUI(obj)
{
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 235)
		awake = var.GetAnimationMap("atgunner_stormtrooper", "common/cutscene/atgunner_stormtrooper.ani");
	else if(AWAKE_SKILL_ID == 239)
		awake = var.GetAnimationMap("atgunner_crimsonrose", "common/cutscene/atgunner_crimsonrose.ani");
	else if(AWAKE_SKILL_ID == 244)
		awake = var.GetAnimationMap("atgunner_freyja", "common/cutscene/atgunner_freyja.ani");
	else if(AWAKE_SKILL_ID == 249)
		awake = var.GetAnimationMap("atgunner_optimus", "common/cutscene/atgunner_optimus.ani");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133 + 1067, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133, 0, false);
	}
}

function drawFightCutinUI(obj)
{
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 232)
		awake = var.GetAnimationMap("fighterstriker2nd", "common/cutscene/fighterstriker2nd.ani");
	else if(AWAKE_SKILL_ID == 239)
		awake = var.GetAnimationMap("fightergrappler2nd", "common/cutscene/fightergrappler2nd.ani");
	else if(AWAKE_SKILL_ID == 228)
		awake = var.GetAnimationMap("fighternenmaster2nd", "common/cutscene/fighternenmaster2nd.ani");
	else if(AWAKE_SKILL_ID == 235)
		awake = var.GetAnimationMap("fighterstreetfighter2nd", "common/cutscene/fighterstreetfighter2nd.ani");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133 + 1067, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133, 0, false);
	}
}

function drawATFightCutinUI(obj)
{
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 225)
		awake = var.GetAnimationMap("atfighter_supremacyemperor", "common/cutscene/atfighter_supremacyemperor.ani");
	else if(AWAKE_SKILL_ID == 222)
		awake = var.GetAnimationMap("atfighter_nen2ndaction", "common/cutscene/atfighter_nen2ndaction.ani");
	else if(AWAKE_SKILL_ID == 228)
		awake = var.GetAnimationMap("atfighter_dark", "common/cutscene/atfighter_dark.ani");
	else if(AWAKE_SKILL_ID == 231)
		awake = var.GetAnimationMap("atfighter_grand", "common/cutscene/atfighter_grand.ani");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133 + 1067, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133, 0, false);
	}
}

function drawPriestCutinUI(obj)
{
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 245)
		awake = var.GetAnimationMap("priest_justice", "common/cutscene/priest_justice.ani");
	else if(AWAKE_SKILL_ID == 241)
		awake = var.GetAnimationMap("priest_taoisthermit", "common/cutscene/priest_taoisthermit.ani");
	else if(AWAKE_SKILL_ID == 251)
		awake = var.GetAnimationMap("priest_saint", "common/cutscene/priest_saint.ani");
	else if(AWAKE_SKILL_ID == 138)
		awake = var.GetAnimationMap("priest_immortal", "common/cutscene/priest_immortal.ani");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,1037, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-200, 0, false);
	}
}

function drawMageCutinUI(obj)
{
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 253)
		awake = var.GetAnimationMap("mage_elma2nd", "common/cutscene/mage_elma2nd.ani");
	else if(AWAKE_SKILL_ID == 139)
		awake = var.GetAnimationMap("mage_summon2nd", "common/cutscene/mage_summon2nd.ani");
	else if(AWAKE_SKILL_ID == 245)
		awake = var.GetAnimationMap("mage_battle2nd", "common/cutscene/mage_battle2nd.ani");
	else if(AWAKE_SKILL_ID == 134)
		awake = var.GetAnimationMap("mage_witch2nd", "common/cutscene/mage_witch2nd.ani");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133 + 1067, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133, 0, false);
	}
}



function drawThiefCutinUI(obj)
{
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 222)
		awake = var.GetAnimationMap("thief_novaremnant", "common/cutscene/thief_novaremnant.ani");
	else if(AWAKE_SKILL_ID == 225)
		awake = var.GetAnimationMap("thief_ballacreadvent", "common/cutscene/thief_ballacreadvent.ani");
	else if(AWAKE_SKILL_ID == 100)
		awake = var.GetAnimationMap("thief_shiranui", "etc/ultimateskillani/thief_shiranui.ani");
	else if(AWAKE_SKILL_ID == 248)
		awake = var.GetAnimationMap("thief_grimreaper", "");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133 + 1067, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133, 0, false);
	}
}



function drawATMageCutinUI(obj)
{
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 245)
		awake = var.GetAnimationMap("atmage_armageddonstrike", "common/cutscene/atmage_armageddonstrike.ani");
	else if(AWAKE_SKILL_ID == 248)
		awake = var.GetAnimationMap("atmage_judekatheeternal", "common/cutscene/atmage_judekatheeternal.ani");
	else if(AWAKE_SKILL_ID == 95)
		awake = var.GetAnimationMap("atmage_vampirelord", "common/cutscene/atmage_vampirelord.ani");
	else if(AWAKE_SKILL_ID == 121)
		awake = var.GetAnimationMap("atmage_aiolos", "common/cutscene/atmage_aiolos.ani");
	else if(AWAKE_SKILL_ID == 124)
		awake = var.GetAnimationMap("atmage_ascension.ani", "common/cutscene/atmage_ascension.ani");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133 + 1067, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133, 0, false);
	}
}

function drawDemonicSwordmanCutinUI(obj)
{
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 233)
		awake = var.GetAnimationMap("demonicswordman2thc", "etc/ultimateskillani/demonicswordman.ani");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133 + 1067, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133, 0, false);
	}
}

function drawATSwordmanCutinUI(obj){
	local var = obj.getVar();

	local awake = null;
	if(AWAKE_SKILL_ID == 166)
		awake = var.GetAnimationMap("atsword_deicide2dnc", "etc/ultimateskillani/atsword_deicide2dn.ani");

	if(AWAKE_SKILL_DIRECTION == -1)
	{
		AWAKE_SKILL_DIRECTION = obj.getDirection();
		if(AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
			awake.setImageRate(-1.0,1.0);
		else
			awake.setImageRate(1.0,1.0);
	}else if(sq_IsEnd(awake))
	{
		AWAKE_SKILL_ID = -1;
		AWAKE_SKILL_DIRECTION = -1;
		sq_Rewind(awake);
		return;
	}		

	if (AWAKE_SKILL_DIRECTION == ENUM_DIRECTION_LEFT)
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133 + 1067, 0, false);
	}else
	{
		sq_AnimationProc(awake);
		sq_drawCurrentFrame(awake,-133, 0, false);
	}
}