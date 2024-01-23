BEGIN yschdgrd

IF ~Global("ys_TalkedToAiloth","GLOBAL",1)~ THEN BEGIN 10
	SAY @2230
	IF ~~ THEN REPLY @2231 GOTO 1
	IF ~~ THEN REPLY @2232 GOTO 0
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 0
	SAY @2233
	IF ~~ THEN REPLY @2234 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @2235
	IF ~~ THEN REPLY @2236 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @2237
	IF ~~ THEN REPLY @2238
	DO ~SetGlobal("ys_TalkedToAiloth","GLOBAL",2)
		RevealAreaOnMap("ys0370")~
	EXIT
END

