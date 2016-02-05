BEGIN ysbasima

//---------------------------------------------------------
IF ~!Global("ysTalkedToJalil","GLOBAL",0)
    Global("ysTalkedToBasimah","GLOBAL",1)~ THEN BEGIN 200
	SAY @2900
	IF~~THEN REPLY @2901 GOTO 12
END

//---------------------------------------------------------
IF ~Global("ysTalkedToBasimah","GLOBAL",0)~ THEN BEGIN 0
	SAY @2902
	IF~~THEN REPLY @2903 GOTO 10
	IF~~THEN REPLY @2904 GOTO 1
	IF~~THEN REPLY @2905 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @2906
	IF~~THEN REPLY @2907
	 DO~SetGlobal("ysBasimahAttack","GLOBAL",1)~
	EXIT
	IF~~THEN REPLY @2908 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @2909
	IF~Global("ysTalkedToJalil","GLOBAL",0)~THEN REPLY @2910 GOTO 3
	IF~Global("ysTalkedToJalil","GLOBAL",1)~THEN REPLY @2911 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @2912
	IF~~THEN
	 DO~SetGlobal("ysTalkedToBasimah","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @2913
	IF~~THEN
	 DO~SetGlobal("ysTalkedToBasimah","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @2914
	IF~Global("ysTalkedToJalil","GLOBAL",0)~THEN REPLY @2915 GOTO 11
	IF~!Global("ysTalkedToJalil","GLOBAL",0)~THEN REPLY @2916 GOTO 12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @2917
	IF~~THEN REPLY @2918
	 DO~SetGlobal("ysTalkedToBasimah","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @2919
	IF~Global("ysTalkedToJalil","GLOBAL",1)~THEN REPLY @2920 GOTO 13
	IF~Global("ysTalkedToJalil","GLOBAL",2)~THEN REPLY @2921 GOTO 14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 13
	SAY @2922
	IF~~THEN
	 DO~SetGlobal("ysTalkedToBasimah","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 14
	SAY @2923
	IF~~THEN REPLY @2924 GOTO 15
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 15
	SAY @2925
	IF~!Global("ysTalkedToAiesha","GLOBAL",0)~THEN REPLY @2926 GOTO 16
	IF~Global("ysTalkedToAiesha","GLOBAL",0)~THEN REPLY @2927 GOTO 17
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 16
	SAY @2928
	IF~~THEN REPLY @2929
	 DO~SetGlobal("ysTalkedToBasimah","GLOBAL",2)
	 		StartStore("ysBasima",LastTalkedToBy())~
	EXIT
	IF~~THEN REPLY @2930
		 DO~SetGlobal("ysTalkedToBasimah","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 17
	SAY @2931
	IF~~THEN REPLY @2929
	 DO~SetGlobal("ysTalkedToBasimah","GLOBAL",2)
	    StartStore("ysBasima",LastTalkedToBy())~
	EXIT
	IF~~THEN REPLY @2930
		 DO~SetGlobal("ysTalkedToBasimah","GLOBAL",2)~
	EXIT
END


//---------------------------------------------------------
// Just open the store
//---------------------------------------------------------
IF ~Global("ysTalkedToBasimah","GLOBAL",2)~ THEN BEGIN 100
	SAY @2932
	IF~~THEN REPLY @2933
	 DO~StartStore("ysBasima",LastTalkedToBy())~
	EXIT
	IF~~THEN REPLY @2930
	EXIT
END
