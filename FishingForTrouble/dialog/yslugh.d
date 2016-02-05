BEGIN YSLUGH

IF ~Global("ys_TalkedToLugh","GLOBAL",0)~ THEN BEGIN 0
	SAY @2550
	IF~~THEN REPLY @2551 GOTO 1
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToLugh","GLOBAL",0)~ THEN BEGIN 1
	SAY @2552
	IF~~THEN REPLY @2553 GOTO 2
	IF~~THEN REPLY @2554 GOTO 3
END
//---------------------------------------------------------
IF ~Global("ys_TalkedToLugh","GLOBAL",0)~ THEN BEGIN 2
	SAY @2555
	IF~CheckStatGT(LastTalkedToBy(Myself),9,CHR)~THEN REPLY @2556 GOTO 5
	IF~CheckStatLT(LastTalkedToBy(Myself),10,CHR)~THEN REPLY @2556 GOTO 6
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToLugh","GLOBAL",0)~ THEN BEGIN 3
	SAY @2557
	IF~CheckStatGT(LastTalkedToBy(Myself),9,CHR)~THEN REPLY @2558 GOTO 5
	IF~CheckStatLT(LastTalkedToBy(Myself),10,CHR)~THEN REPLY @2558 GOTO 6
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToLugh","GLOBAL",0)~ THEN BEGIN 5
	SAY @2559
	IF~~THEN REPLY ~~
	DO~GiveItemCreate("ysepring",Player1,0,0,0)
		AddexperienceParty(1000)
		EraseJournalEntry(@152)
		SetGlobal("ys_TalkedToLugh","GLOBAL",1)
		SetGlobal("ys_LughOkay","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToLugh","GLOBAL",0)~ THEN BEGIN 6
	SAY @2561
	IF~~THEN REPLY @2562 GOTO 7
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToLugh","GLOBAL",0)~ THEN BEGIN 7
	SAY @2563
	IF~~THEN REPLY ~~
	DO~SetGlobal("ysLughFight","GLOBAL",1)
  		EraseJournalEntry(@152)~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TalkedToLugh","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END


