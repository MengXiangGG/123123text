function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_100000101")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_100000101")
}

function onStart_appendage_100000101(appendage)
{
	if (!appendage) return;
	local obj = appendage.getParent();
	if (!obj)
	{
		appendage.setValid(false);
		return;
	}
	local physicalAttack = 10;
	local physicalDefense = 10;
	local magicalAttack = 10;
	local magicalDefense = 10;
	local stuck = -4;
	local change_appendage = appendage.sq_getChangeStatus("100000101");

	if (!change_appendage)
	{
		change_appendage = appendage.sq_AddChangeStatus("100000101", obj, obj, 0, CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack);
	}
	if (change_appendage)
	{
		change_appendage.clearParameter();
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_ATTACK, false, physicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_PHYSICAL_DEFENSE, false, physicalDefense.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_ATTACK, false, magicalAttack.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_MAGICAL_DEFENSE, false, magicalDefense.tofloat());
		change_appendage.addParameter(CHANGE_STATUS_TYPE_STUCK, false, stuck.tofloat());
	}
}

function onEnd_appendage_100000101(appendage)
{
	if (!appendage) return;

	local obj = appendage.getParent();

	local spectrumAppendage = appendage.sq_GetOcularSpectrum("ocularSpectrum");
	if (spectrumAppendage)
	{
		spectrumAppendage.endCreateSpectrum();
	}
}
