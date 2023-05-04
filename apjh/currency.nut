

function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_monsterdraw")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_monsterdraw")
	appendage.sq_AddFunctionName("onAttackParent", "onAttackParent_appendage_monsterdraw")
}


function proc_appendage_monsterdraw ( appendage )
{
	if ( !appendage )
	{
		return;
	}

	local parentObj = appendage.getParent ( );//得到父對象	--	AP附著的人
	local sourceObj = appendage.getSource ( );//得到源對象	--	施加AP的人
	parentObj = sq_GetCNRDObjectToSQRCharacter ( parentObj );//將基礎類對象轉化? 角色對象

	local target = appendage.getVar ( "damagerHPHP" ).get_vector ( 1 );//局部變量 target ?儲存器1號位數據
	local object = sq_GetObjectByObjectId ( parentObj, target );//得到對象  
	object = sq_GetCNRDObjectToActiveObject ( object );//將基礎類對象轉化? 活動類對象
	local currhp = object.getHp ( );//局部變量 currhp ?對象當前生命?
	if ( currhp <= 0 )//如果生命?小于等于0時
	{
		appendage.getVar ( "damagerSta" ).set_vector ( 0, 1 );//設置 儲存器Sta 0號位?1
	}
	else//否則
	{
		appendage.getVar ( "damagerSta" ).set_vector ( 0, 0 );//設置 儲存器Sta 0號位?0
	}

}



function onAttackParent_appendage_monsterdraw(appendage, realAttacker, damagerHP, boundingBox, isStuck)
{
	if(!appendage)
	{
		return;
	}
	local parentObj = appendage.getParent();//得到父對象	--	AP附著的人
	local sourceObj = appendage.getSource();//得到源對象	--	施加AP的人
	parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);//將基礎類對象轉化? 角色對象
	

	local object = sq_GetCNRDObjectToActiveObject(damagerHP);
	local id = sq_GetObjectId(object);//獲得傷害對象的該局隨機編號
	appendage.getVar("damagerSta").set_vector(1, id);//設置 儲存器Sta 的 1號位? 此編號

}


function onStart_appendage_monsterdraw ( appendage )
{
	if ( !appendage )
	{
		return;
	}

	local parentObj = appendage.getParent ( );
	local sourceObj = appendage.getSource ( );
	parentObj = sq_GetCNRDObjectToSQRCharacter ( parentObj );

	appendage.getVar ( "damagerSta" ).clear_vector ( );
	appendage.getVar ( "damagerSta" ).push_vector ( 0 );
	appendage.getVar ( "damagerSta" ).push_vector ( 0 );



}
