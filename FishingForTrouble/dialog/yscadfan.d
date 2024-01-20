BEGIN yscadfan

//---------------------------------------------------------
IF ~Global("ysTalkedToCadfan","GLOBAL",1)~ THEN BEGIN 100
  SAY @4390
  IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToCadfan","GLOBAL",0)~ THEN BEGIN 0
	SAY @4391
	IF ~~ THEN REPLY @4392 GOTO 3
	IF ~~ THEN REPLY @4393 GOTO 3
	IF ~~ THEN REPLY @4394 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4395
	IF ~~ THEN REPLY @4396 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4397
	IF ~~ THEN REPLY @4398
	 DO ~SetGlobal("ysTalkedToCadfan","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @4399
	IF ~~ THEN REPLY @4400 GOTO 30
	IF ~~ THEN REPLY @4401
	 DO~SetGlobal("ysTalkedToCadfan","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 30
	SAY @4402
	IF ~~ THEN REPLY @4403 GOTO 4
	IF ~~ THEN REPLY @4404 GOTO 4
	IF ~~ THEN REPLY @4401
	 DO ~SetGlobal("ysTalkedToCadfan","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @4405
	IF~Gender(Protagonist,MALE)~THEN REPLY @4406 GOTO 5
	IF~Gender(Protagonist,FEMALE)~THEN REPLY @4406 GOTO 6
	IF ~~ THEN REPLY @4407 GOTO 65
	IF ~~ THEN REPLY @4401
	 DO ~SetGlobal("ysTalkedToCadfan","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @4408
	IF ~~ THEN REPLY @4409 GOTO 7
	IF ~~ THEN REPLY @4401
	 DO ~SetGlobal("ysTalkedToCadfan","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @4410
	IF ~~ THEN REPLY @4409 GOTO 7
	IF ~~ THEN REPLY @4401
	 DO ~SetGlobal("ysTalkedToCadfan","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 65
	SAY @4411
	IF ~~ THEN REPLY @4412 GOTO 8
	IF ~~ THEN REPLY @4401
	 DO ~SetGlobal("ysTalkedToCadfan","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @4413
	=@4411
	IF ~~ THEN REPLY @4412 GOTO 8
	IF ~~ THEN REPLY @4401
	 DO ~SetGlobal("ysTalkedToCadfan","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @4414
	IF ~~ THEN REPLY @4415 GOTO 9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 9
	SAY @4416
	IF ~~ THEN
	 DO ~SetGlobal("ysTalkedToCadfan","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ysTalkedToCadfan","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
//IF ~Global("ysTalkedToCadfan","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
//IF ~Global("ysTalkedToCadfan","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
//IF ~Global("ysTalkedToCadfan","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
//IF ~Global("ysTalkedToCadfan","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END

