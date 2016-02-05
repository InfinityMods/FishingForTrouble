BEGIN ysaella

//---------------------------------------------------------
IF ~Global("ys_talkedToAela","GLOBAL",1)~ THEN BEGIN BLK100
	SAY @4500
	IF~~THEN REPLY @4501 GOTO BLK1
	IF~~THEN REPLY @4502 GOTO BLK4
	IF~~THEN REPLY @4503 GOTO BLK4
END

//---------------------------------------------------------
IF ~Global("ys_talkedToAela","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @4504
	IF~~THEN
		DO~SetGlobal("ysAella","GLOBAL",1)~
	 	REPLY @4501 GOTO BLK1
	IF~~THEN
		DO~SetGlobal("ysAella","GLOBAL",1)~
	 	REPLY @4502 GOTO BLK4
	IF~~THEN
		DO~SetGlobal("ysAella","GLOBAL",1)~
		REPLY @4503 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @4505
	IF~~THEN REPLY @4506 GOTO BLK3
	IF~~THEN REPLY @4507 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @4508
	IF~~THEN
		DO~EscapeArea()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @4509
	IF~~THEN
	 DO~TakePartyGold(1)
   EscapeArea()~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @4510
	IF~~THEN REPLY @4511 GOTO BLK5
	IF~~THEN REPLY @4512 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @4513
	IF~~THEN
		DO ~SetGlobal("ystalkedToAella","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_talkedToAela","GLOBAL",0)~ THEN BEGIN BLK
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO BLK
//	IF~~THEN REPLY ~~ GOTO BLK
//END
