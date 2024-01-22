//Forest of Tethyr
BEGIN yswdman

//---------------------------------------------------------
IF ~GlobalLT("ys_TethyrWoodsman","GLOBAL",2)~ THEN BEGIN BLK0
	SAY @1100
	IF ~Global("ys_TethyrWoodsman","GLOBAL",1)~ THEN REPLY @1120 EXIT
	IF ~Global("ys_TethyrWoodsman","GLOBAL",0)~ THEN REPLY @1101 GOTO BLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1102
	IF ~~ THEN REPLY @1103 GOTO BLK2
	IF ~~ THEN REPLY @1104 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1105
	IF ~~ THEN REPLY @1106 GOTO BLK3
	IF ~~ THEN REPLY @1107 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1108
	IF ~~ THEN REPLY @1109 GOTO BLK4
	IF ~~ THEN REPLY @1110 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @1111
    =@1112
    =@1113
	IF ~~ THEN REPLY @1114 GOTO BLK7
	IF ~~ THEN REPLY @1115 GOTO BLK7
	IF ~~ THEN REPLY @1116 GOTO BLK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @1117
	IF ~~ THEN REPLY @1118 GOTO BLK10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK10
  SAY@1119
  IF~~ THEN REPLY @1120
	UNSOLVED_JOURNAL @22
    DO ~SetGlobal("ys_TethyrWoodsman","GLOBAL",1)~
    EXIT

  IF~~ THEN REPLY @1121
   UNSOLVED_JOURNAL @22
    DO ~SetGlobal("ys_TethyrWoodsman","GLOBAL",1)~
    EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
  SAY@1119
  IF~~ THEN REPLY @1120
   UNSOLVED_JOURNAL @31
    DO ~SetGlobal("ys_TethyrWoodsman","GLOBAL",1)~
    EXIT

  IF~~ THEN REPLY @1121
   UNSOLVED_JOURNAL @31
    DO ~SetGlobal("ys_TethyrWoodsman","GLOBAL",1)~
    EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TethyrWoodsman","GLOBAL",0)~ THEN BEGIN BLK
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO BLK
//END

