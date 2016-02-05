BEGIN yscdcg

IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 0
	SAY @3990
	IF~~THEN REPLY @3991 GOTO 2
	IF~~THEN REPLY @3992 GOTO 3
	IF~~THEN REPLY @3993 GOTO 10
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 2
	SAY @3994
	IF~~THEN REPLY @3992 GOTO 3
	IF~~THEN REPLY @3993 GOTO 10
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 3
	SAY @3995
	IF~~THEN REPLY @3996 GOTO 6
	IF~~THEN REPLY @3997 GOTO 4
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 4
	SAY @3998
	IF~~THEN REPLY @3999 GOTO 6
	IF~~THEN REPLY @4000 GOTO 5
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 5
	SAY @4001
	IF~~THEN
		DO ~SetGlobal("ys_FightCG","GLOBAL",1)
        EraseJournalEntry(@162)
        EraseJournalEntry(@164)
      	CreateCreature("yscdcg1",[390.600],2)
      	CreateCreature("yscdcg2",[548.708],2)
				SetGlobal("ys_TalkedToCaveGuardian","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 6
	SAY @4002
	IF~~THEN REPLY @4003 GOTO 7
	IF~~THEN REPLY @4004 GOTO 7
	IF~~THEN REPLY @4005 GOTO 7
	IF~~THEN REPLY @4006 GOTO 7
	IF~~THEN REPLY @4007 GOTO 7
	IF~~THEN REPLY @4008 GOTO 7
	IF~~THEN REPLY @4009 GOTO 7
	IF~~THEN REPLY @4010 GOTO 7
	IF~~THEN REPLY @4011 GOTO 7
	IF~Global("ysAieshaAdvice","GLOBAL",1)~THEN REPLY @4012 GOTO 8
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 7
	SAY @4013
	IF~~THEN
		DO ~SetGlobal("ys_FightCG","GLOBAL",1)
      	CreateCreature("yscdcg1",[390.600],2)
      	CreateCreature("yscdcg2",[548.708],2)
				SetGlobal("ysCaveBlocked","GLOBAL",3) //Stop Aiesha talking about the Guardian if the robe quest is not finished
        EraseJournalEntry(@162)
        EraseJournalEntry(@164)
				SetGlobal("ys_TalkedToCaveGuardian","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 8
	SAY @4014
	IF~~THEN
		DO~SetGlobal("ysCaveBlocked","GLOBAL",3)
        EraseJournalEntry(@162)
        EraseJournalEntry(@164)~ //Stop Aiesha talking about the Guardian if the robe quest is not finished
	REPLY @4015 GOTO 9
	IF~~THEN
		DO~SetGlobal("ysCaveBlocked","GLOBAL",3) //Stop Aiesha talking about the Guardian if the robe quest is not finished
        EraseJournalEntry(@162)
        EraseJournalEntry(@164)~
	REPLY @4016GOTO 11
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 9
	SAY @4017
	IF~~THEN REPLY @4018
		DO~AddexperienceParty(3000)
			SetGlobal("ys_FightCG","GLOBAL",2)
			SetGlobal("ys_TalkedToCaveGuardian","GLOBAL",1)~
	EXIT
	IF~~THEN REPLY @4019
		DO~AddexperienceParty(3000)
			SetGlobal("ys_TalkedToCaveGuardian","GLOBAL",1)~
	GOTO 11
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 10
	SAY @4020
	IF~~THEN
		DO ~SetGlobal("ys_FightCG","GLOBAL",1)
      	CreateCreature("yscdcg1",[390.600],2)
      	CreateCreature("yscdcg2",[548.708],2)
				SetGlobal("ysCaveBlocked","GLOBAL",3) //Stop Aiesha talking about the Guardian if the robe quest is not finished
				SetGlobal("ys_TalkedToCaveGuardian","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN 11
	SAY @4021
	IF~~THEN
		DO~AddexperienceParty(3000)
			SetGlobal("ys_TalkedToCaveGuardian","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TalkedToCaveGuardian","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END

