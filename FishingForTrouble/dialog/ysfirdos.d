BEGIN ysfirdos

//---------------------------------------------------------
IF ~Global("ysTalkedToFirdos","GLOBAL",2)~ THEN BEGIN 200
	SAY @4450
	IF ~~ THEN
	 DO~SetGlobal("ysTalkedToFirdos","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToFirdos","GLOBAL",0)
    !IsGabber(Protagonist)~ THEN BEGIN NOTCHARNAME
	SAY @4451
	IF ~~ THEN REPLY @4452
  EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToFirdos","GLOBAL",0)~ THEN BEGIN 0
	SAY @4453
	IF~Global("ysTalkedToFirdosOnce","GLOBAL",0)~ THEN REPLY @4454 GOTO 100
	IF~Global("ysTalkedToFirdosOnce","GLOBAL",1)~ THEN REPLY @4454 GOTO 300
	IF ~~ THEN REPLY @4455 GOTO 1
	IF ~~ THEN REPLY @4456 GOTO 10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @4457
	IF ~~ THEN REPLY @4458 GOTO 11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @4459
	IF ~~ THEN REPLY @4460 GOTO 2
	IF ~~ THEN REPLY @4461 GOTO 100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4462
	IF ~~ THEN REPLY @4460 GOTO 2
	IF ~~ THEN REPLY @4461 GOTO 100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4463
	IF ~~ THEN REPLY @4464 GOTO 3
	IF ~~ THEN REPLY @4465 GOTO 100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @4466
	IF ~~ THEN REPLY @4467 GOTO 30
	IF ~~ THEN REPLY @4465 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @4468
	IF ~~ THEN REPLY @4469 GOTO 30
	IF ~~ THEN REPLY @4470 GOTO 30
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 30
	SAY @4471
	IF ~~ THEN
	 DO~ReallyForceSpell(Protagonist,WIZARD_SUMMON_DJINNI)
		ReallyForceSpell(Protagonist,WIZARD_SUMMON_EFREET)
		SetGlobal("ysTalkedToFirdos","GLOBAL",1)
		Enemy()~
   EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 100
	SAY @4472
	IF ~~ THEN
	 DO~SetGlobal("ysTalkedToFirdosOnce","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 300
	SAY @4473
	IF ~~ THEN
	 DO ~SetGlobal("ysTalkedToFirdos","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ysTalkedToFirdos","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
//IF ~Global("ysTalkedToFirdos","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
//IF ~Global("ysTalkedToFirdos","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END

