BEGIN ysgaol

IF ~Global("ys_TalkedToGaoler","GLOBAL",1)~ THEN BEGIN BLK0
	SAY @550
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToGaoler","GLOBAL",0)~ THEN BEGIN BLK1
	SAY @551
	IF~~THEN REPLY @552 GOTO BLK3
	IF~~THEN REPLY @553 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @554
	IF~~THEN
		DO ~SetGlobal("ys_TalkedToGaoler","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @555
	IF~~THEN REPLY @556 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @557
	IF~~THEN REPLY @558 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @559
	IF~~THEN 
		DO ~SetGlobal("ys_TalkedToGaoler","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
//IF ~~ THEN BEGIN BLK
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO BLK
//	IF~~THEN REPLY ~~ GOTO BLK
//END
