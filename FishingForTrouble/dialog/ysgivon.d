BEGIN ysgivon

IF ~Global("ysTalkedToGivon","GLOBAL",0)~ THEN BEGIN 0
	SAY @4430
	IF ~~ THEN REPLY @4431 EXIT
	IF ~~ THEN REPLY @4432 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4433
	IF ~~ THEN REPLY @4434 GOTO 2
	IF ~~ THEN REPLY @4435 
		DO ~SetGlobal("ysTalkedToGivon","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4436
	IF ~~ THEN REPLY @4437 GOTO 3
	IF ~~ THEN REPLY @4438
		DO ~SetGlobal("ysTalkedToGivon","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @4439
	IF ~~ THEN REPLY @4440 GOTO 4
	IF ~~ THEN REPLY @4441
		DO ~SetGlobal("ysTalkedToGivon","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @4442
	IF ~~ THEN REPLY @4443
		DO ~SetGlobal("ysTalkedToGivon","GLOBAL",1)~
	EXIT
	IF ~~ THEN REPLY @4444
		DO ~SetGlobal("ysTalkedToGivon","GLOBAL",2)~
	EXIT
END
