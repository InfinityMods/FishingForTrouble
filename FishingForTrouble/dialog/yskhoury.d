BEGIN yskhoury

IF ~Global("ysTalkedToKhoury","GLOBAL",0)~ THEN BEGIN 0
	SAY @3845
	IF~~THEN REPLY @3846 GOTO 2
	IF~Global("ysTalkedToAiesha","GLOBAL",1)~THEN REPLY @3847 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @3848
	IF~~THEN REPLY @3846 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @3849
	IF~~THEN REPLY @3850
	 DO ~SetGlobal("ysTalkedToKhoury","GLOBAL",1)~
	GOTO 3
	IF~~THEN REPLY @3851
	 DO ~SetGlobal("ysTalkedToKhoury","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @3852
  =@3853
	IF~~THEN REPLY @3850
    DO ~StartStore("ysKhoury",LastTalkedToBy())~
  EXIT
	IF~~THEN REPLY @3851 EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToKhoury","GLOBAL",1)~ THEN BEGIN 4
	SAY @3854
	IF~Global("ysTalkedToAiesha","GLOBAL",1)~THEN REPLY @3847 GOTO 5
	IF~~THEN REPLY @3850
    DO ~StartStore("ysKhoury",LastTalkedToBy())~
  EXIT
	IF~~THEN REPLY @3851 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @3855
	IF~~THEN REPLY @3856
    DO ~StartStore("ysKhoury",LastTalkedToBy())~
  EXIT
	IF~~THEN REPLY @3857 EXIT
END

//---------------------------------------------------------
//IF ~Global("ysTalkedToKhoury","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END

