BEGIN yswtchmn

IF ~Global("ys_TalkedToWatchman","GLOBAL",0)~ THEN BEGIN 0
	SAY @3000
	IF ~~ THEN REPLY @3001 GOTO 100
	IF ~~ THEN REPLY @3002
		DO ~SetGlobal("ys_TalkedToWatchman","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToWatchman","GLOBAL",1)~ THEN BEGIN 100
	SAY @3003
	IF ~~ THEN REPLY @3004 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @3005 
	= @3006
	IF ~~ THEN REPLY @3007 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @3008
	IF ~~ THEN REPLY @3009 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @3010
	IF ~~ THEN REPLY @3011 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @3012
	IF ~~ THEN REPLY @3013 GOTO 5
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToWatchman","GLOBAL",2)~ THEN BEGIN 5
	SAY @3014
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToWatchman","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TalkedToWatchman","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//END
