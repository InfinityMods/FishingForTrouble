BEGIN ysdwfknt

//---------------------------------------------------------
IF ~Global("ys_TalkedToDwarfKnight","GLOBAL",1)~ THEN BEGIN 100
  SAY @3221
	IF~~THEN REPLY @3222 GOTO 101
	IF~CheckStatGT(Myself,11,WIS)~THEN REPLY @3223 GOTO 102
	IF~CheckStatLT(Myself,12,WIS)~THEN REPLY @3223 GOTO 101
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 101
	SAY @3224
	IF~~THEN
		DO~SetGlobal("ys_TalkedToDwarfKnight","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 102
	SAY @3219
	IF~~THEN
		DO~SetGlobal("ys_TalkedToDwarfKnight","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ys_TalkedToDwarfKnight","GLOBAL",0)~ THEN BEGIN 0
	SAY @3200
	IF~~THEN REPLY @3201 GOTO 1
	IF~~THEN REPLY @3202 GOTO 11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @3203
	IF~~THEN REPLY @3204 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @3205
	IF~~THEN REPLY @3206 GOTO 3
	IF~~THEN REPLY @3207 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @3208
	IF~~THEN REPLY @3209 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @3210
	IF~~THEN REPLY @3211 GOTO 11
	IF~~THEN
		DO~SetGlobal("ys_TalkedToDwarfKnight","GLOBAL",1)~
	REPLY @3212 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @3213
	IF~CheckStatGT(Myself,11,WIS)~THEN REPLY @3214 GOTO 8
	IF~CheckStatLT(Myself,12,WIS)~THEN REPLY @3214 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @3215
	IF~~THEN REPLY @3211 GOTO 11
	IF~~THEN
		DO~SetGlobal("ys_TalkedToDwarfKnight","GLOBAL",1)~
	REPLY @3212 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @3216
	IF~~THEN REPLY @3217 GOTO 10
	IF~~THEN REPLY @3211 GOTO 9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 9
	SAY @3218
	IF~~THEN
		DO~SetGlobal("ys_TalkedToDwarfKnight","GLOBAL",1)~
	REPLY @3212 EXIT
END

//---------------------------------------------------------
//Talked my way in
IF ~~ THEN BEGIN 10
	SAY @3219
	IF~~THEN
		DO~SetGlobal("ys_TalkedToDwarfKnight","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @3220
	IF~~THEN
		DO~SetGlobal("ys_TalkedToDwarfKnight","GLOBAL",2)~
	EXIT
END

