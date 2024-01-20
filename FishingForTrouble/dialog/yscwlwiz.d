BEGIN yscwlwiz

//*********************************************************
//Ceinwen is already in Spellhold >Chapter4
//*********************************************************
//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",1)
	GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%)
	Global("ys_TalkedToGaelie","GLOBAL",2)~ THEN BEGIN TAN0
	SAY @1350
	IF ~~ THEN REPLY @1351 GOTO TAN1
	IF ~~ THEN REPLY @1352 GOTO TAN1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TAN1
	SAY @1353
	IF ~~ THEN REPLY @1354 GOTO TAN5
	IF ~~ THEN REPLY @1355 GOTO TAN2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TAN2
	SAY @1356
	IF ~~ THEN REPLY @1357 GOTO TAN3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TAN3
	SAY @1358
	IF ~~ THEN REPLY @1359 GOTO TAN6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TAN5
	SAY @1360
	IF ~~ THEN REPLY @1361 GOTO TAN6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TAN6
	SAY @1362
	IF ~~ THEN REPLY @1363 GOTO TAN7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TAN7
	SAY @1364
	IF ~~ THEN REPLY @1365 GOTO TAN8
	IF ~~ THEN REPLY @1366 GOTO TAN8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TAN8
	SAY @1367
	IF ~~ THEN
	DO ~ForceSpellPoint([601.469],WIZARD_DIMENSION_DOOR)
		ForceSpellPoint([653.499],WIZARD_DIMENSION_DOOR)
		ActionOverride("yscwlwiz",DestroySelf())
		ActionOverride("yscwlwiz",DestroySelf())
		AddJournalEntry(@28,QUEST)
		SetGlobal("dai_TalkedToTanaari","GLOBAL",4)~
	EXIT
END

//*********************************************************
//Ceinwen is with the Cowled Wizards<Chapter3
//*********************************************************

//---------------------------------------------------------
IF ~Global("dai_TalkedToCowled","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1350
	IF ~~ THEN REPLY @1368
	DO ~ActionOverride("ystelthe",DestroySelf())~
	GOTO BLK3
	IF ~~ THEN REPLY @1369
	DO ~ActionOverride("ystelthe",DestroySelf())~
	GOTO BLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1370
	IF ~~ THEN REPLY @1371 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1372
	IF ~~ THEN REPLY @1373 GOTO BLK30
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK30
	SAY @1374
	IF ~~ THEN REPLY @1375 GOTO BLK4
	IF ~~ THEN REPLY @1376 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1377
	IF ~~ THEN REPLY @1375 GOTO BLK4
	IF ~~ THEN REPLY @1376 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @1378
	IF ~~ THEN REPLY @1379 GOTO BLK5
	IF ~~ THEN REPLY @1380 GOTO BLK40
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK40
	SAY @1381
	IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN
	DO ~SetGlobal("ys_CeinwenSpellhold","GLOBAL",1)
		SetGlobal("ys_CeinwenRot","GLOBAL",1)
		SetGlobal("dai_TalkedToCowled","GLOBAL",1)
		//Dimension door - all out - set Ceinwen in Spellhold
		ForceSpellPoint([601.469],WIZARD_DIMENSION_DOOR)
		ForceSpellPoint([653.499],WIZARD_DIMENSION_DOOR)
		ForceSpellPoint([594.504],WIZARD_DIMENSION_DOOR)
		ActionOverride("yscwlwiz",DestroySelf())
		ActionOverride("yscwlwiz",DestroySelf())
		ActionOverride("ysceinwn",DestroySelf())~
	EXIT

	IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN
	DO ~SetGlobal("dai_TalkedToCowled","GLOBAL",1)
		//Dimension door - all out - no more Ceinwen
		ForceSpellPoint([601.469],WIZARD_DIMENSION_DOOR)
		ForceSpellPoint([653.499],WIZARD_DIMENSION_DOOR)
		ForceSpellPoint([594.504],WIZARD_DIMENSION_DOOR)
		ActionOverride("yscwlwiz",DestroySelf())
		ActionOverride("yscwlwiz",DestroySelf())
		ActionOverride("ysceinwn",DestroySelf())~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @1382
	IF ~~ THEN REPLY @1383 GOTO BLK7
	IF ~PartyGoldGT(3999)~ THEN REPLY @1384 GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @1385
	IF ~~ THEN
	DO ~SetGlobal("dai_TalkedToCowled","GLOBAL",4)
		SetGlobal("dai_TalkedToCeinwen","GLOBAL",4)
		TakePartyGold(4000)
		//Dimension door - both Wizards out
		ForceSpellPoint([601.469],WIZARD_DIMENSION_DOOR)
		ForceSpellPoint([653.499],WIZARD_DIMENSION_DOOR)
		ActionOverride("yscwlwiz",DestroySelf())
		ActionOverride("yscwlwiz",DestroySelf())~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @1386
	IF ~~ THEN REPLY @1387
	DO ~SetGlobal("dai_TalkedToCowled","GLOBAL",2)
		SetGlobalTimer("ys_GetCeinwenGold","GLOBAL",SEVEN_DAYS)
		//Dimension door - only Ceinwen out
		ForceSpellPoint([594.504],WIZARD_DIMENSION_DOOR)
		ActionOverride("ysceinwn",DestroySelf())~
	EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("dai_TalkedToCowled","GLOBAL",2)
	GlobalTimerNotExpired("ys_GetCeinwenGold","GLOBAL")~ THEN BEGIN BLK10
	SAY @1388
	IF ~PartyGoldLT(4000)~ THEN REPLY @1389
	EXIT
	IF ~PartyGoldGT(3999)~ THEN REPLY @1390 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
	SAY @1385
	IF ~~ THEN
	DO ~SetGlobal("dai_TalkedToCowled","GLOBAL",1)
		SetGlobal("dai_TalkedToCeinwen","GLOBAL",4)
		TakePartyGold(4000)
		//Dimension door - both Wizards out
		ForceSpellPoint([601.469],WIZARD_DIMENSION_DOOR)
		ForceSpellPoint([653.499],WIZARD_DIMENSION_DOOR)
		ActionOverride("yscwlwiz",DestroySelf())
		ActionOverride("yscwlwiz",DestroySelf())
		//Dimension door - Ceinwen back
		ForceSpellPoint([630.509],WIZARD_DIMENSION_DOOR)
		CreateCreature("ysceinwn",[630.509],0)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToCowled","GLOBAL",2)
	GlobalTimerExpired("ys_GetCeinwenGold","GLOBAL")~ THEN BEGIN BLK20
	SAY @1391

	IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN
	DO ~SetGlobal("ys_CeinwenSpellhold","GLOBAL",1)
		SetGlobal("dai_TalkedToCowled","GLOBAL",1)
		//Dimension door - both Wizards out - set Ceinwen in Spellhold
		ForceSpellPoint([601.469],WIZARD_DIMENSION_DOOR)
		ForceSpellPoint([653.499],WIZARD_DIMENSION_DOOR)
		ActionOverride("yscwlwiz",DestroySelf())
		ActionOverride("yscwlwiz",DestroySelf())~
	EXIT

	IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_3%)~ THEN
	DO ~SetGlobal("dai_TalkedToCowled","GLOBAL",1)
		//Cutscene with dimension door - both Wizards out
		ForceSpellPoint([601.469],WIZARD_DIMENSION_DOOR)
		ForceSpellPoint([653.499],WIZARD_DIMENSION_DOOR)
		ActionOverride("yscwlwiz",DestroySelf())
		ActionOverride("yscwlwiz",DestroySelf())~
	EXIT
END
