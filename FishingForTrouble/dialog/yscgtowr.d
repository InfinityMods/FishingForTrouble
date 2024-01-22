BEGIN yscgtowr

IF ~Global("ys_TowerGuard","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1430
	IF ~~ THEN REPLY @1431 GOTO BLK2
	IF ~~ THEN REPLY @1432 GOTO BLK1
	IF ~~ THEN REPLY @1433 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1434
	IF ~~ THEN REPLY @1431 GOTO BLK2
	IF ~~ THEN REPLY @1435 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1436
	IF ~~ THEN REPLY @1437 GOTO BLK5
	IF ~~ THEN REPLY @1438 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1439
	IF ~!InParty("Nalia")~ THEN REPLY @1440 GOTO BLK5
	IF ~IfValidForPartyDialogue("Nalia") OR(2) !InMyArea("Nalia") StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN REPLY @1440 GOTO BLK5
	IF ~IfValidForPartyDialogue("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN
		DO ~SetGlobal("ys_TowerGuard","GLOBAL",1)~
		EXTERN NALIAJ BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @1441
	IF ~~ THEN REPLY @1437 GOTO BLK5
END

//---------------------------------------------------------
//This should open the drawbridge in the area script
IF ~~ THEN BEGIN BLK5
	SAY @1443
	IF ~~ THEN
		DO ~SetGlobal("ys_TowerGuard","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TowerGuard","GLOBAL",0)~ THEN BEGIN BLK
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO BLK
//	IF ~~ THEN REPLY ~~ GOTO BLK
//END

//---------------------------------------------------------
//Interjections
//---------------------------------------------------------
//Nalia gets mad
CHAIN NALIAJ BLK6
@1444
== yscgtowr @1445
== NALIAJ @1446
== yscgtowr @1447
EXIT
