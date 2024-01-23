//Guard tent guard
BEGIN yscgroad

//---------------------------------------------------------
//These are resets from further on
IF ~OR(2)
		Global("ys_TalkedToTentGuard","GLOBAL",0)
		Global("ys_BlockPath","GLOBAL",1)~ THEN BEGIN BLK0
	SAY @1450
	IF ~~ THEN REPLY @1451 GOTO BLK1
	IF ~~ THEN REPLY @1452 GOTO BLK2
	IF ~~ THEN REPLY @1453 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1454
	IF ~~ THEN REPLY @1455 GOTO BLK10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1456
	IF ~~ THEN REPLY @1451 GOTO BLK10
	IF ~~ THEN REPLY @1457 GOTO BLK3
END

//---------------------------------------------------------
//Need to set this variable in conjunction with a proximity trigger on the ramp
//Set up two guards with a door as a fence!
IF ~~ THEN BEGIN BLK3
	SAY @1458
	IF ~~ THEN
		DO ~OpenDoor("DOOR04")
			SetGlobal("ys_BlockPath","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK10
	SAY @1459
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToTentGuard","GLOBAL",1)
			CloseDoor("DOOR04")~
		REPLY @1460 EXIT
	IF ~~ THEN REPLY @1461 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @1462
	IF ~~ THEN REPLY @1463 GOTO BLK8
	IF ~~ THEN REPLY @1464 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @1465
	IF ~~ THEN REPLY @1466 GOTO BLK8
	IF ~~ THEN REPLY @1467 GOTO BLK7
END

//---------------------------------------------------------
//More additions to yscgroad.baf to turn on the fight script and call the guards
//Block the ramp also as in BLK3
//Add a two day timer to ys0360.baf to clear the mess.
IF ~~ THEN BEGIN BLK7
	SAY @1468
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToTentGuard","GLOBAL",2)
		    DisplayStringHead(Myself,@507)
		    OpenDoor("DOOR04")
			SetGlobal("ys_BlockPath","GLOBAL",1)
			ChangeAIScript("ysgengrd",OVERRIDE)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK8
	SAY @1469
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TalkedToTentGuard","GLOBAL",0)~ THEN BEGIN BLK
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO BLK
//END

