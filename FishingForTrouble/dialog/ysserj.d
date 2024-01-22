BEGIN ysserj

IF ~Global("ys_FreedSarje","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @870
	IF ~~ THEN REPLY @871 GOTO BLK2
	IF ~~ THEN REPLY @872 GOTO BLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @873
	IF ~~ THEN REPLY @874 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @875
	IF ~~ THEN REPLY @876 GOTO BLK3
END

//---------------------------------------------------------
//(Trigger cutscene freeing men)
IF ~~ THEN BEGIN BLK3
	SAY @877
	IF ~~ THEN
		DO ~SetGlobal("ys_FreedSarje","GLOBAL",1)
			ClearAllActions()
			StartCutSceneMode()
			StartCutScene("yscut01")~
	EXIT
END

//---------------------------------------------------------
//Before fight
//---------------------------------------------------------
IF ~Global("ys_FreedSarje","GLOBAL",2)
	Global("ys_GarrisonFight","GLOBAL",0)~ THEN BEGIN BLK10
	SAY @878
	IF ~~ THEN REPLY @879 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
	SAY @880
	IF ~~ THEN REPLY @881
		DO ~SetGlobal("ys_FreedSarje","GLOBAL",3)
			ClearAllActions()
			StartCutSceneMode()
			StartCutScene("yscut02")~
	EXIT
END

//---------------------------------------------------------
//After fight
//---------------------------------------------------------
IF ~Global("ys_FreedSarje","GLOBAL",2)
	GlobalGT("ys_GarrisonFight","GLOBAL",2)~ THEN BEGIN BLK12
	SAY @878
	IF ~~ THEN REPLY @882 GOTO BLK13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK13
	SAY @883
	IF ~~ THEN REPLY @884
		DO ~SetGlobal("ys_FreedSarje","GLOBAL",3)
			ClearAllActions()
			StartCutSceneMode()
			StartCutScene("yscut02")~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_FreedSarje","GLOBAL",2)~ THEN BEGIN BLK
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO BLK
//	IF ~~ THEN REPLY ~~ GOTO BLK
//END

