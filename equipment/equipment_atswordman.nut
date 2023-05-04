
function isUsableItem_AtSwordman(obj, itemIndex)
{
	isUsableItem_Quickitembar(obj, itemIndex);
	local size = obj.getVar("itemIndex").size_vector();
	for(local i=0;i<size;++i)
	{
		local isSaved = false;
		for(local i=0;i<size;++i)
		{
			local index = obj.getVar("itemIndex").get_vector(i);
			if(index == itemIndex)
			{
				isSaved = true;
			}
		}
		local index = obj.getVar("itemIndex").get_vector(i);
		if(index == i && !isSaved)
		{
			obj.getVar("itemIndex").set_vector(i, itemIndex);
		}
	}

	return true;
}

function drawMainCustomUI_AtSwordman(obj)
{
	if(!obj) return;
	obj.getVar("itemIndex").clear_vector();
	local slotNum = 6;
	for(local i=0;i<slotNum;++i)
	{
		obj.getVar("itemIndex").push_vector(i);
	}
    drawConfigMainCustomUI(obj);
    drawBoardHud(obj);
}

function procAppend_AtSwordman(obj)
{
	if(!obj) return 0;

	local skill_level = sq_GetSkillLevel(obj, 169);
	if (skill_level > 0)
	{
		if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "ui/ap_equipment_anton.nut"))
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 169, false, "ui/ap_equipment_anton.nut", true);
		}
	}
	procAppend_Quickitembar(obj);
	local isAppend1;
	local isAppend2;
	local isAppend3;
	local isAppend4;

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000130.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000130)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000130.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000130)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000130.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000131.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000131)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000131.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000131)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000131.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000132.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000132)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000132.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000132)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000132.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000133.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000133)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000133.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000133)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000133.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000134.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000134)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000134.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000134)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000134.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000101.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000101)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000101.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000101)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000101.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000102.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000102)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000102.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000102)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000102.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000103.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000103)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000103.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000103)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000103.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000104.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000104)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000104.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000104)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000104.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000105.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000105)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000105.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000105)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000105.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000106.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000106)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000106.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000106)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000106.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000107.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000107)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000107.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000107)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000107.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000108.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000108)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000108.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000108)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000108.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000109.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000109)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000109.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000109)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000109.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000110.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000140.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000160.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000180.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000110)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000140)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000160)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000180)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000110.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000140.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000160.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000180.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000110)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000140)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000160)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000180)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000110.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000140.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000160.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000180.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000111.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000141.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000161.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000181.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000111)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000141)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000161)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000181)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000111.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000141.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000161.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000181.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000111)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000141)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000161)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000181)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000111.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000141.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000161.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000181.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000112.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000142.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000162.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000182.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000112)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000142)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000162)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000182)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000112.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000142.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000162.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000182.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000112)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000142)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000162)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000182)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000112.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000142.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000162.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000182.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000113.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000143.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000163.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000183.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000113)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000143)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000163)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000183)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000113.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000143.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000163.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000183.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000113)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000143)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000163)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000183)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000113.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000143.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000163.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000183.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000114.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000144.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000164.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000184.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000114)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000144)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000164)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000184)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000114.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000144.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000164.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000184.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000114)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000144)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000164)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000184)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000114.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000144.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000164.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000184.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000115.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000145.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000165.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000185.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000115)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000145)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000165)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000185)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000115.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000145.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000165.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000185.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000115)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000145)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000165)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000185)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000115.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000145.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000165.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000185.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000116.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000146.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000166.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000186.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000116)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000146)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000166)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000186)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000116.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000146.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000166.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000186.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000116)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000146)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000166)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000186)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000116.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000146.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000166.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000186.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000117.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000147.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000167.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000187.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000117)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000147)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000167)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000187)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000117.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000147.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000167.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000187.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000117)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000147)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000167)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000187)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000117.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000147.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000167.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000187.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000118.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000148.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000168.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000188.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000118)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000148)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000168)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000188)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000118.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000148.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000168.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000188.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000118)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000148)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000168)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000188)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000118.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000148.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000168.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000188.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000119.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000149.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000169.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000189.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000119)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000149)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000169)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000189)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000119.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000149.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000169.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000189.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000119)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000149)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000169)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000189)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000119.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000149.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000169.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000189.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000120.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000150.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000170.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000190.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000120)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000150)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000170)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000190)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000120.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000150.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000170.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000190.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000120)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000150)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000170)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000190)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000120.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000150.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000170.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000190.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000121.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000151.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000171.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000191.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000121)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000151)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000171)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000191)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000121.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000151.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000171.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000191.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000121)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000151)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000171)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000191)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000121.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000151.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000171.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000191.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000122.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000152.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000172.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000192.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000122)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000152)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000172)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000192)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000122.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000152.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000172.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000192.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000122)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000152)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000172)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000192)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000122.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000152.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000172.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000192.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000123.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000153.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000173.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000193.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000123)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000153)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000173)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000193)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000123.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000153.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000173.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000193.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000123)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000153)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000173)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000193)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000123.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000153.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000173.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000193.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000124.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000154.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000174.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000194.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000124)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000154)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000174)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000194)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000124.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000154.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000174.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000194.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000124)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000154)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000174)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000194)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000124.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000154.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000174.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000194.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000125.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000155.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000175.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000195.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000125)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000155)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000175)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000195)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000125.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000155.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000175.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000195.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000125)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000155)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000175)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000195)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000125.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000155.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000175.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000195.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000126.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000156.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000176.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000196.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000126)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000156)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000176)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000196)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000126.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000156.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000176.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000196.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000126)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000156)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000176)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000196)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000126.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000156.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000176.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000196.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000127.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000157.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000177.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000197.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000127)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000157)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000177)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000197)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000127.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000157.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000177.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000197.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000127)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000157)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000177)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000197)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000127.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000157.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000177.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000197.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000128.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000158.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000178.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000198.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000128)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000158)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000178)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000198)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000128.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000158.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000178.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000198.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000128)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000158)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000178)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000198)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000128.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000158.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000178.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000198.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000129.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000159.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000179.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100000199.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000129)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000159)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000179)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000199)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000129.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000159.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000179.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100000199.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100000129)
				isInQuickSlot1 = true;
			else if(itemIndex == 100000159)
				isInQuickSlot2 = true;
			else if(itemIndex == 100000179)
				isInQuickSlot3 = true;
			else if(itemIndex == 100000199)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000129.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000159.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000179.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100000199.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360007.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360007)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360007.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360007)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360007.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360011.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360011)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360011.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360011)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360011.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360012.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360012)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360012.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360012)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360012.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360013.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360013)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360013.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360013)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360013.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360014.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360014)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360014.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360014)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360014.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360015.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360015)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360015.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360015)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360015.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360016.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360016)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360016.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360016)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360016.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360017.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360017)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360017.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360017)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360017.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360018.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360018)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360018.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360018)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360018.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360019.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360019)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360019.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360019)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360019.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360020.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360020)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360020.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360020)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360020.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_isAppend1Appendage(obj, "equipment/ap/ap_400360021.nut");
	if(!isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360021)
			{
				isInQuickSlot = true;
			}
		}
		if(isInQuickSlot)
		{
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_400360021.nut", true);
		}
	}
	else if(isAppend1)
	{
		local isInQuickSlot = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 400360021)
			{
				isInQuickSlot = true;
			}
		}
		if(!isInQuickSlot)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_400360021.nut");
			appendage.setValid(false);
		}
	}
	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002001.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002006.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002011.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002016.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100002001)
				isInQuickSlot1 = true;
			else if(itemIndex == 100002006)
				isInQuickSlot2 = true;
			else if(itemIndex == 100002011)
				isInQuickSlot3 = true;
			else if(itemIndex == 100002016)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002001.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002006.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002011.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002016.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100002001)
				isInQuickSlot1 = true;
			else if(itemIndex == 100002006)
				isInQuickSlot2 = true;
			else if(itemIndex == 100002011)
				isInQuickSlot3 = true;
			else if(itemIndex == 100002016)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002001.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002006.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002011.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002016.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002002.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002007.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002012.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002017.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100002002)
				isInQuickSlot1 = true;
			else if(itemIndex == 100002007)
				isInQuickSlot2 = true;
			else if(itemIndex == 100002012)
				isInQuickSlot3 = true;
			else if(itemIndex == 100002017)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002002.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002007.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002012.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002017.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100002002)
				isInQuickSlot1 = true;
			else if(itemIndex == 100002007)
				isInQuickSlot2 = true;
			else if(itemIndex == 100002012)
				isInQuickSlot3 = true;
			else if(itemIndex == 100002017)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002002.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002007.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002012.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002017.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002003.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002008.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002013.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002018.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100002003)
				isInQuickSlot1 = true;
			else if(itemIndex == 100002008)
				isInQuickSlot2 = true;
			else if(itemIndex == 100002013)
				isInQuickSlot3 = true;
			else if(itemIndex == 100002018)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002003.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002008.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002013.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002018.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100002003)
				isInQuickSlot1 = true;
			else if(itemIndex == 100002008)
				isInQuickSlot2 = true;
			else if(itemIndex == 100002013)
				isInQuickSlot3 = true;
			else if(itemIndex == 100002018)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002003.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002008.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002013.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002018.nut");
			appendage.setValid(false);
		}
	}


	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002004.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002009.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002014.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002019.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100002004)
				isInQuickSlot1 = true;
			else if(itemIndex == 100002009)
				isInQuickSlot2 = true;
			else if(itemIndex == 100002014)
				isInQuickSlot3 = true;
			else if(itemIndex == 100002019)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002004.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002009.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002014.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002019.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100002004)
				isInQuickSlot1 = true;
			else if(itemIndex == 100002009)
				isInQuickSlot2 = true;
			else if(itemIndex == 100002014)
				isInQuickSlot3 = true;
			else if(itemIndex == 100002019)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002004.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002009.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002014.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002019.nut");
			appendage.setValid(false);
		}
	}

	isAppend1 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002005.nut");
	isAppend2 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002010.nut");
	isAppend3 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002015.nut");
	isAppend4 = CNSquirrelAppendage.sq_IsAppendAppendage(obj, "equipment/ap/ap_100002020.nut");
	if(!isAppend1 && !isAppend2 && !isAppend3 && !isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100002005)
				isInQuickSlot1 = true;
			else if(itemIndex == 100002010)
				isInQuickSlot2 = true;
			else if(itemIndex == 100002015)
				isInQuickSlot3 = true;
			else if(itemIndex == 100002020)
				isInQuickSlot4 = true;
		}
		if(isInQuickSlot1)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002005.nut", true);
		else if(isInQuickSlot2)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002010.nut", true);
		else if(isInQuickSlot3)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002015.nut", true);
		else if(isInQuickSlot4)
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, -1, false, "equipment/ap/ap_100002020.nut", true);
	}
	else if(isAppend1 || isAppend2 || isAppend3 || isAppend4)
	{
		local isInQuickSlot1 = false;
		local isInQuickSlot2 = false;
		local isInQuickSlot3 = false;
		local isInQuickSlot4 = false;
		local size = obj.getVar("itemIndex").size_vector();
		for(local i=0;i<size;++i)
		{
			local itemIndex = obj.getVar("itemIndex").get_vector(i);
			if(itemIndex == 100002005)
				isInQuickSlot1 = true;
			else if(itemIndex == 100002010)
				isInQuickSlot2 = true;
			else if(itemIndex == 100002015)
				isInQuickSlot3 = true;
			else if(itemIndex == 100002020)
				isInQuickSlot4 = true;
		}
		if(!isInQuickSlot1)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002005.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot2)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002010.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot3)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002015.nut");
			appendage.setValid(false);
		}
		if(!isInQuickSlot4)
		{
			local appendage = obj.GetSquirrelAppendage("equipment/ap/ap_100002020.nut");
			appendage.setValid(false);
		}
	}
}
