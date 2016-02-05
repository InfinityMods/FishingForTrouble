BEGIN ysanghrd

//Stallers
//---------------------------------------------------------
IF ~PartyHasItem("ysghoul1")
		Global("ysGargelGhoul","GLOBAL",0)~ THEN BEGIN 1000
	SAY @2350
	IF~~THEN REPLY @2351
		DO~SetGlobal("ysGargelGhoul","GLOBAL",1)~
	GOTO 1001
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1001
	SAY @2352
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToAngharad","GLOBAL",0)
    Global("ys_TalkedToGarGel","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @2353
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToAngharad","GLOBAL",1)
    Global("ys_TalkedToGarGel","GLOBAL",1)~ THEN BEGIN BLK100
	SAY @2354
	IF~~THEN REPLY@2355 EXIT
END

//---------------------------------------------------------
// Angharad's quest
IF ~Global("ys_TalkedToAngharad","GLOBAL",0)
    Global("ys_TalkedToGarGel","GLOBAL",1)~ THEN BEGIN BLK1
	SAY @2356
	IF~~THEN REPLY @2357 GOTO BLK3
	IF~~THEN REPLY @2358 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @2359
	IF~~THEN REPLY @2360 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @2361
	IF~~THEN REPLY @2362 GOTO BLK4
	IF~~THEN REPLY @2363 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @2364
	IF~~THEN REPLY @2365 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @2366
	IF~~THEN REPLY @2367 GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @2368
	IF~~THEN REPLY @2369 GOTO BLK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @2370
	IF~Global("ys_CeinwenActive","GLOBAL",1)~THEN REPLY @2371 GOTO BLK8
	IF~~THEN REPLY @2372 GOTO BLK9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK8
	SAY @2373
	IF~~THEN REPLY @2374 GOTO BLK9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK9
	SAY @2375
	IF~~THEN REPLY @2376 GOTO BLK10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK10
	SAY @2377
	IF~~THEN REPLY @2378 GOTO BLK12
	IF~~THEN REPLY @2379 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
	SAY @2380
	IF~~THEN REPLY @2378 GOTO BLK12
END

//---------------------------------------------------------
//Interject Garalial - I *knew* Khelben Arunsun at one time.
IF ~~ THEN BEGIN BLK12
	SAY @2381
	IF~~THEN REPLY @2382 EXTERN YSGARGEL AFBLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK13
	SAY @2383
	IF~~THEN REPLY @2384 GOTO BLK14
	IF~~THEN REPLY @2385 GOTO BLK14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK14
	SAY @2386
	IF~~THEN
    DO~ GiveItemCreate("ysdhkey",PLAYER1,1,1,0)
        SetGlobal("ys_TalkedToAngharad","GLOBAL",1)
        AddJournalEntry(@38,QUEST)~
    EXIT
END


//---------------------------------------------------------
// The orb has been retrieved
//---------------------------------------------------------
IF ~Global("ys_TalkedToAngharad","GLOBAL",2)
    PartyHasItem("ysorb")~ THEN BEGIN 50
	SAY @2354
	IF~~THEN REPLY @2387 GOTO 60
	IF~~THEN REPLY @2388 GOTO 51
	IF~~THEN REPLY @2355 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 51
	SAY @2389
	IF~~THEN REPLY @2390 GOTO 52
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 52
	SAY @2391
	IF~~THEN
  DO~TakePartyItem("ysorb")
    SetGlobal("ys_OrbGiven","GLOBAL",1)
    SetGlobal("ys_TalkedToGarGel","GLOBAL",30)
    AddexperienceParty(6000)
    AddJournalEntry(@39,QUEST_DONE)~
  REPLY @2392 EXIT
	IF~~THEN REPLY @2393 GOTO 53
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 53
	SAY @2394
	IF~~THEN
	DO~SetGlobal("ys_TalkedToAngharad","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 60
	SAY @2395
	IF~~THEN REPLY @2396 GOTO 61
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 61
	SAY @2397
	IF~!Global("ys_TalkedToDwarfKnight","GLOBAL",2)~THEN REPLY @2398 GOTO 63
	IF~Global("ys_TalkedToDwarfKnight","GLOBAL",2)~THEN REPLY @2399 GOTO 62
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 62
	SAY @2400
	IF~~THEN REPLY @2401 GOTO 63
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 63
	SAY @2402
	IF~Global("ys_TombFight","GLOBAL",0)~THEN REPLY @2403 GOTO 64
	IF~Global("ys_TombFight","GLOBAL",1)~THEN REPLY @2404 GOTO 64
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 64
	SAY @2405
	IF~Global("ys_TombFight","GLOBAL",0)~THEN REPLY @2406 GOTO 65
	IF~Global("ys_TombFight","GLOBAL",1)~THEN REPLY @2407 GOTO BLKSWORD
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 65
	SAY @2408
	IF~~THEN
	DO~
    TakePartyItem("ysorb")
    SetGlobal("ys_OrbGiven","GLOBAL",1)
    SetGlobal("ys_TalkedToGarGel","GLOBAL",20)
    AddexperienceParty(10000)
    AddJournalEntry(@40,QUEST_DONE)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLKSWORD
	SAY @2409
	IF~~THEN
	DO~
    TakePartyItem("ysorb")
    SetGlobal("ys_OrbGiven","GLOBAL",1)
    SetGlobal("ys_TalkedToGarGel","GLOBAL",20)
    AddexperienceParty(10000)
    AddJournalEntry(@40,QUEST_DONE)~
  EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ys_TalkedToAngharad","GLOBAL",3)
    PartyHasItem("ysorb")~ THEN BEGIN 100
	SAY @2410
	IF~~THEN
  DO~TakePartyItem("ysorb")
    SetGlobal("ys_OrbGiven","GLOBAL",1)
    SetGlobal("ys_TalkedToGarGel","GLOBAL",30)
    AddexperienceParty(6000)
    AddJournalEntry(@39,QUEST_DONE)~
		REPLY @2411	EXIT
	IF~~THEN REPLY @2412 EXIT
END


//---------------------------------------------------------
//Garalial
CHAIN YSGARGEL AFBLK1
  @2413
EXTERN ysanghrd BLK13
