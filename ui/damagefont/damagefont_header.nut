MAX_DAMAGE_LIMIT <- 9999999

ENABLE_DAMAGE_ACTIVE <- 1

DAMAGE_ALPHA <- 255

DAMAGE_TYPE <- 0

DAMAGE_CURRENT_TYPE <- 0

DAMAGE_URL <- "common/damagefont/damagefont"

MAX_DAMAGE_DIR <- "/maxdamage/maxdamage_bubble.ani"

MAX_DAMAGE_SPE_DIR <- "/maxdamage/maxdamage_basenum.ani"

CHARACTER_AP_DIR <- "ui/ap/ap_character.nut"

MONSTER_AP_DIR <- "ui/ap/ap_monster.nut"

ADD_DAMAGE_COUNT <- 17

//18大寬度,11小寬度,22高度,
//16附加大寬度,9小寬度,24高度,85附加開始位置比率,4附加X偏移寬度
//上40浮高度,30最終上浮高度,x30偏移寬度,100大小比率
DAMAGE_SIZE_INFO <- 
{
	[0] = [18,13,25,16,9,21,75,3,40,30,30,100],
	[1] = [18,15,22,16,9,26,75,4,40,30,30,100],
	[2] = [20,17,26,20,13,32,75,4,50,40,30,100],
	[3] = [20,15,24,16,9,24,75,4,40,30,30,100],
	[4] = [21,15,26,20,13,28,75,4,50,40,30,100],
	[5] = [18,11,22,16,9,28,75,4,40,30,30,100],
	[6] = [17,17,22,16,9,28,75,4,40,30,30,100],
	[7] = [16,11,22,15,8,26,75,4,40,30,30,100],
	[8] = [16,14,22,16,9,28,75,4,40,30,30,100],
	[9] = [20,18,22,20,13,32,75,6,50,40,30,100],
	[10] = [18,14,26,19,12,32,75,5,50,40,30,100],
	[11] = [19,19,26,19,12,34,75,4,50,40,30,100],
	[12] = [19,14,31,19,12,30,75,5,50,40,30,100],
	[13] = [20,14,26,19,12,30,75,4,50,40,30,100],
	[14] = [19,13,26,18,11,28,75,4,50,40,30,100],
	[15] = [20,15,26,20,13,28,75,4,50,40,30,100],
	[16] = [22,14,26,19,12,35,75,4,50,40,30,100],
	[17] = [20,13,30,19,12,38,75,4,50,40,30,100],
	[18] = [20,15,28,20,13,32,75,4,50,40,30,100],
	[19] = [19,14,26,19,12,30,75,4,50,40,30,100],
	[20] = [20,15,29,19,12,30,75,4,50,40,30,100],
	[21] = [25,17,26,20,13,32,75,4,50,40,30,100],
	[22] = [21,17,26,20,13,38,75,4,50,40,30,100],
	[23] = [22,18,30,21,14,42,75,4,50,40,30,100],
	[24] = [24,17,26,19,12,32,75,4,50,40,30,100],
	[25] = [18,16,22,17,11,30,75,4,40,30,30,100],
	[26] = [18,16,22,17,11,30,75,4,40,30,30,100],
	[27] = [16,16,22,16,9,28,75,4,50,40,30,100],
	[28] = [20,17,32,20,13,30,75,4,50,40,30,100],
	[29] = [19,14,22,16,9,26,75,4,40,30,30,100],
	[30] = [20,15,22,20,13,28,75,4,50,40,30,100],
	[31] = [18,15,22,16,9,35,75,4,40,30,30,100],
	[32] = [20,14,24,18,11,28,75,4,50,40,30,100]
}