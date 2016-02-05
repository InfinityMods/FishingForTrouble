BEGIN yscado

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 10
  SAY @1030
  IF ~~ THEN REPLY @1031 GOTO 11
  IF ~~ THEN REPLY @1032 GOTO 11
  IF ~~ THEN REPLY @1033 GOTO 100
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 11
  SAY @1034
  IF ~~ THEN REPLY @1035 GOTO 12
  IF ~~ THEN REPLY @1036 GOTO 13
  IF ~~ THEN REPLY @1037 GOTO 15
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 12
  SAY @1038
  IF ~~ THEN REPLY @1039 GOTO 100
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 13
  SAY @1040
  IF ~~ THEN REPLY @1041 GOTO 14
  IF ~~ THEN REPLY @1042 GOTO 100
  IF ~~ THEN REPLY @1043 GOTO 100
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 14
  SAY @1044
  IF ~~ THEN REPLY @1045 GOTO 100
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 15
  SAY @1046
  IF ~~ THEN REPLY @1047 GOTO 16
  IF ~~ THEN REPLY @1048 GOTO 17
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 16
  SAY @1049
  IF ~~ THEN
    DO~EscapeArea()~
    JOURNAL @62
  EXIT
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 17
  SAY @1050
  IF ~~ THEN REPLY @1051 GOTO 19
  IF ~~ THEN REPLY @1052 GOTO 18
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 18
  SAY @1053
  IF ~~ THEN
    DO~EscapeArea()~
    JOURNAL @62
  EXIT
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 19
  SAY @1054
  IF ~~ THEN REPLY @1055 GOTO 21
  IF ~~ THEN REPLY @1056 GOTO 20
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 20
  SAY @1057
  IF ~~ THEN REPLY @1058 GOTO 100
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 21
  SAY @1059
  IF ~~ THEN REPLY @1060 GOTO 22
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 22
  SAY @1061
  IF ~~ THEN REPLY @1062 GOTO 23
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 23
  SAY @1063
  IF ~~ THEN REPLY @1064 GOTO 24
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 24
  SAY @1065
  IF ~~ THEN REPLY @1066 GOTO 25
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 25
  SAY @1067
  IF ~~ THEN
	  JOURNAL @63
    DO~SetGlobal("ysTalkedToCado","GLOBAL",1)~
  EXIT
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN 100
  SAY @1068
  IF ~~ THEN
    JOURNAL @62
    DO~EscapeArea()~
  EXIT
END

//--------------------------------------------------
IF ~Global("ysTalkedToCado","GLOBAL",1)~THEN BEGIN 30
  SAY @1069
  IF ~GlobalLT("ys_GarrisonFight","GLOBAL",3)~ THEN REPLY @1070EXIT
	IF~Global("ys_GarrisonFight","GLOBAL",3)~THEN REPLY @1071GOTO 31
END

//--------------------------------------------------
IF ~~ THEN BEGIN 31
  SAY @1072
  IF ~~ THEN
    DO~EscapeArea()~
  EXIT
END

//--------------------------------------------------
//IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN
//  SAY ~~
//  IF ~~ THEN REPLY ~~
//END

//--------------------------------------------------
//IF ~Global("ysTalkedToCado","GLOBAL",0)~ THEN BEGIN
//  SAY ~~
//  IF ~~ THEN REPLY ~~
//END
