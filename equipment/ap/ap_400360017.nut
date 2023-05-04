function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_400360017")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_400360017")
}

function onStart_appendage_400360017(appendage)
{
	if (!appendage) return;
	local obj = appendage.getParent();
	if (!obj)
	{
		appendage.setValid(false);
		return;
	}
	
	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	
	if(!spectrumAppendage)
	{
		spectrumAppendage = appendage.sq_AddOcularSpectrum("ocularSpectrum", obj, obj, 100);
	}
	sq_SetParameterOcularSpectrum(spectrumAppendage, 750, 100, true, sq_RGBA(245, 222, 179, 255), sq_RGBA(245, 222, 179, 0), 2, 2, 2);
	sq_SetParameterOcularSpectrum(spectrumAppendage, 750, 100, true, sq_RGBA(245, 222, 179, 255), sq_RGBA(245, 222, 179, 0), 2, 0, 1);
	
	local physicalAttack = 240;
	local magicalAttack = 240;
	local physicalDefense = 240;
	local magicalDefense = 240;
	local equipmentphysicalAttack = 255;
	local equipmentmagicalAttack = 255;
	local attackSpeed = 100;
	local moveSpeed = 100;
	local castSpeed = 100;
	local fire = 40;
	local water = 40;
	local dark = 40;
	local light = 40;
	local physicalcritical = 12;
	local magicalcritical = 12;
	local CriticalDamage = 280;
	local PhysicalAttackDamage = 280;
	local MagicalAttackDamage = 280;
	local change_appendage = appendage.sq_getChangeStatus("400360017");

	if (!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("400360017", obj, obj, 0, CHANGE_STATUS_TYPE_ATTACK_SPEED, false, attackSpeed);
	}
	if (change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK_BONUS, false, PhysicalAttackDamage.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK_BONUS, false, MagicalAttackDamage.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_DAMAGE_RATE, false, CriticalDamage.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_DAMAGE_RATE, false, CriticalDamage.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ATTACK_SPEED, false, attackSpeed.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MOVE_SPEED, false, moveSpeed.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_CAST_SPEED, false, castSpeed.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, physicalDefense.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, magicalDefense.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_PHYSICAL_ATTACK, false, equipmentphysicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_EQUIPMENT_MAGICAL_ATTACK, false, equipmentmagicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_FIRE, false, fire.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_WATER, false, water.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_DARK, false, dark.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_ELEMENT_ATTACK_LIGHT, false, light.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_CRITICAL_HIT_RATE, false, physicalcritical.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_CRITICAL_HIT_RATE, false, magicalcritical.tofloat());
	}
}

function onEnd_appendage_400360017(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}
