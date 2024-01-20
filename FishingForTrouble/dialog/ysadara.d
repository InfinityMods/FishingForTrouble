
BEGIN ysadara

//---------------------------------------------------------
IF ~Global("ysTalkedToAdara","GLOBAL",1)
    Global("ysTalkedToAdara","GLOBAL",4)~ THEN BEGIN stall
	SAY @3870
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToAdara","GLOBAL",0)
    Global("ysTalkedToAiesha","GLOBAL",3)~ THEN BEGIN 10
	SAY @3870
	IF ~~ THEN REPLY @3872 
	  DO ~SetGlobal("ysTalkedToAdara","GLOBAL",1)~ 
	GOTO 2
	IF ~~ THEN REPLY @3873 
	  DO ~SetGlobal("ysTalkedToAdara","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToAdara","GLOBAL",0)
    !Global("ysTalkedToAiesha","GLOBAL",3)~ THEN BEGIN 0
	SAY @3870
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToAdara","GLOBAL",1)
    Global("ysTalkedToAiesha","GLOBAL",3)~ THEN BEGIN 1
	SAY @3871
	IF ~~ THEN REPLY @3872 GOTO 2
	IF ~~ THEN REPLY @3873 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @3874
	IF ~~ THEN REPLY @3875 EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToAdara","GLOBAL",2)
    Global("ysTalkedToAiesha","GLOBAL",3)~ THEN BEGIN 3
  SAY @3876
	IF ~~ THEN REPLY @3877 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @3878
	IF ~~ THEN REPLY @3879 GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @3880
	IF ~~ THEN
	  DO ~SetGlobal("ysTalkedToAdara","GLOBAL",4)
		  GiveItemCreate("yssfrb",PLAYER1,1,1,0)~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ysTalkedToAdara","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END
