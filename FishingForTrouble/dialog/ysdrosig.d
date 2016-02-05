BEGIN ysdrosig

//---------------------------------------------------------
IF ~Global("ys_TalkedToDrosig","GLOBAL",0)
		Global("ys_GnomeDragon","GLOBAL",0)~ THEN BEGIN 40
	SAY @2950
	IF~~THEN
	 DO~SetGlobal("ys_TalkedToDrosig","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDrosig","GLOBAL",0)
		Global("ys_GnomeDragon","GLOBAL",1)~ THEN BEGIN 0
	SAY @2951
	IF~~THEN REPLY @2952 GOTO 4
	IF~~THEN REPLY @2953 GOTO 1
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDrosig","GLOBAL",1)
		Global("ys_GnomeDragon","GLOBAL",1)~ THEN BEGIN 20
	SAY @2954
	IF~~THEN REPLY @2955 GOTO 4
	IF~~THEN REPLY @2956 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @2957
	IF~~THEN REPLY @2958 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @2959
	IF~CheckStatGT(LastTalkedToBy(Myself),12,CHR)~THEN REPLY @2960 GOTO 3
	IF~CheckStatLT(LastTalkedToBy(Myself),13,CHR)~THEN REPLY @2961
	 DO~SetGlobal("ys_TalkedToDrosig","GLOBAL",1)
	 		SetGlobal("ys_GnomeDragon","GLOBAL",3)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @2962
	IF~~THEN REPLY @2955 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @2963
	IF~~THEN REPLY @2964 GOTO 6
	IF~~THEN REPLY @2965 GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @2966
	IF~~THEN REPLY @2967 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @2968
	IF~~THEN REPLY @2967 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @2969
	IF~~THEN REPLY @2970 GOTO 8
	IF~~THEN REPLY @2971
		DO~SetGlobal("ys_TalkedToDrosig","GLOBAL",100)
	 		SetGlobal("ys_GnomeDragon","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @2972
	IF~~THEN REPLY @2973 GOTO 9
	IF~~THEN REPLY @2971
		DO~SetGlobal("ys_TalkedToDrosig","GLOBAL",100)
	 		SetGlobal("ys_GnomeDragon","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 9
	SAY @2974
	IF~~THEN REPLY @2975 GOTO 10
	IF~~THEN REPLY @2971
		DO~SetGlobal("ys_TalkedToDrosig","GLOBAL",100)
	 		SetGlobal("ys_GnomeDragon","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @2976
	IF~~THEN REPLY @2977 GOTO 11
	IF~~THEN REPLY @2971
		DO~SetGlobal("ys_TalkedToDrosig","GLOBAL",100)
	 		SetGlobal("ys_GnomeDragon","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @2978
	IF~~THEN
		DO~SetGlobal("ys_TalkedToDrosig","GLOBAL",100)
			 SetGlobal("ys_GnomeDragon","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
//IF ~~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//END
