BEGIN ysoengus

//---------------------------------------------------------
IF ~Global("ys_TalkedToOengus","GLOBAL",0)~ THEN BEGIN 100
	SAY @2600
	IF ~~ THEN REPLY @2601 GOTO 0
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 0
	SAY @2602
	IF ~~ THEN REPLY @2603 GOTO 1000
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1000
	SAY @2604
	IF ~~ THEN REPLY @2605 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @2606
	IF ~~ THEN REPLY @2607 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @2608
	IF ~~ THEN REPLY @2609 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @2610
	IF ~~ THEN REPLY @2611 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @2612
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToOengus","GLOBAL",1)
			SetGlobal("ys_CreateLugh","GLOBAL",1)
			AddJournalEntry(@152,QUEST)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToOengus","GLOBAL",1)~ THEN BEGIN 14
	SAY @2613
  IF ~~ THEN REPLY @2614 EXIT
  IF ~Global("ys_LughDead","GLOBAL",1)~ THEN REPLY @2615 GOTO 15
  IF ~Global("ys_LughOkay","GLOBAL",1)~ THEN REPLY @2616 GOTO 16
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 15
	SAY @2617
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToOengus","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 16
	SAY @2618
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToOengus","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToOengus","GLOBAL",2)~ THEN BEGIN 17
	SAY @2619
	IF ~~ THEN EXIT
END
