BEGIN ysltor

//---------------------------------------------------------
//Initial dialog
//---------------------------------------------------------
IF ~Global("ys_FindElminster","GLOBAL",0)~ THEN BEGIN YSBLOCK0
	SAY @990
	IF ~~ THEN REPLY @991 GOTO YSBLOCK2
	IF ~~ THEN REPLY @992 GOTO YSBLOCK1
	IF ~~ THEN REPLY @993 GOTO YSBLOCK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCK1
	SAY @994
	IF ~~ THEN REPLY @995 GOTO YSBLOCK2
	IF ~~ THEN REPLY @996 GOTO YSBLOCK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCK2
	SAY @997
	IF ~~ THEN REPLY @998 GOTO YSBLOCK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCK3
	SAY @999
	IF ~~ THEN REPLY @1000 GOTO YSBLOCK5
	IF ~~ THEN REPLY @1001 GOTO YSBLOCK6
END

//---------------------------------------------------------
//Quest is killed
IF ~~ THEN BEGIN YSBLOCK4
	SAY @1002
	IF ~~ THEN
		DO~
		SetGlobal("ys_NoLetter","GLOBAL",1)
		EscapeArea()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCK5
	SAY @1003
	IF ~~ THEN REPLY @1004
		DO ~
		AddJournalEntry(@2,QUEST)~
	GOTO YSBLOCK7
END

//---------------------------------------------------------
//Carry letter has been politely refused
IF ~~ THEN BEGIN YSBLOCK6
	SAY @1005
	IF ~~ THEN
		DO~
		ReallyForceSpell(Player1,CLERIC_CURE_SERIOUS_WOUNDS)
		ReallyForceSpell(Player2,CLERIC_CURE_SERIOUS_WOUNDS)
		ReallyForceSpell(Player3,CLERIC_CURE_SERIOUS_WOUNDS)
		ReallyForceSpell(Player4,CLERIC_CURE_SERIOUS_WOUNDS)
		ReallyForceSpell(Player5,CLERIC_CURE_SERIOUS_WOUNDS)
		ReallyForceSpell(Player6,CLERIC_CURE_SERIOUS_WOUNDS)
		SetGlobal("ys_NoLetter","GLOBAL",1)
		EscapeArea()~
	EXIT
END

//---------------------------------------------------------
//Carry letter has been accepted
IF ~~ THEN BEGIN YSBLOCK7
	SAY @1006
	IF ~~ THEN
		DO~
			SetGlobal("ys_FindElminster","GLOBAL",1)
			GiveItemCreate("YSLETEL",Player1,0,0,0)
			ReallyForceSpell(Player1,CLERIC_HEAL)
			ReallyForceSpell(Player2,CLERIC_HEAL)
			ReallyForceSpell(Player3,CLERIC_HEAL)
			ReallyForceSpell(Player4,CLERIC_HEAL)
			ReallyForceSpell(Player5,CLERIC_HEAL)
			ReallyForceSpell(Player6,CLERIC_HEAL)
			EscapeArea()~
	EXIT
END

//---------------------------------------------------------
//Secondary dialog if letter was initially refused and Elminster has been met in Trademeet
//---------------------------------------------------------
IF ~Global("ys_FindElminster","GLOBAL",2)
		Global("ys_NoLetter","GLOBAL",1)~ THEN BEGIN YSBLOCK8
		SAY @1007
		IF ~~ THEN REPLY @1008 GOTO YSBLOCK9
		IF ~~ THEN REPLY @1009
			DO ~GiveItemCreate("YSLETEL",Player1,0,0,0)
				SetGlobal("ys_NoLetter","GLOBAL",0)
				SetGlobal("ys_FindElminster","GLOBAL",1)~ GOTO YSBLOCK10
END

//---------------------------------------------------------
//Quest refused for the last time
IF ~~ THEN BEGIN YSBLOCK9
		SAY @1010
		IF ~~ THEN
			DO ~SetGlobal("ys_NoLetter","GLOBAL",2)
				SetGlobal("ys_FindElminster","GLOBAL",5)
				EscapeArea()~
	EXIT
END

//---------------------------------------------------------
//Carry letter has been accepted
IF ~~ THEN BEGIN YSBLOCK10
		SAY @1011
		IF ~~ THEN
			DO ~
			EscapeArea()~
	EXIT
END

