BEGIN ysnuri

IF ~Global("ysTalkedToNuri","GLOBAL",0)~ THEN BEGIN 0
	SAY @3860
	IF ~~ THEN REPLY @3861 GOTO 2
	IF ~Global("ysTalkedToAiesha","GLOBAL",1)~ THEN REPLY @3862 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @3863
	IF ~~ THEN REPLY @3861 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @3864
	IF ~~ THEN REPLY @3865
	  DO ~SetGlobal("ysTalkedToNuri","GLOBAL",1)
        StartStore("ysnuri",LastTalkedToBy())~
	EXIT
	IF ~~ THEN REPLY @3866 
		DO ~SetGlobal("ysTalkedToNuri","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToNuri","GLOBAL",1)~ THEN BEGIN 3
	SAY @3867
	IF ~Global("ysTalkedToAiesha","GLOBAL",1)~ THEN REPLY @3862 GOTO 4
	IF ~~ THEN REPLY @3865
		DO ~StartStore("ysnuri",LastTalkedToBy())~
	EXIT
	IF ~~ THEN REPLY @3866 EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToNuri","GLOBAL",1)~ THEN BEGIN 4
	SAY @3863
	IF ~~ THEN REPLY @3868
		DO ~StartStore("ysnuri",LastTalkedToBy())~
	EXIT
	IF ~~ THEN REPLY @3869 EXIT
END

//---------------------------------------------------------
//IF ~Global("ysTalkedToNuri","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END

