BEGIN yshhappr

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ys_TalkedToHHApprentice","GLOBAL",1)~ THEN BEGIN BLK100
	SAY @1176
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ys_TalkedToHHApprentice","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1177
	IF ~~ THEN REPLY @1178 GOTO BLK1
	IF ~~ THEN REPLY @1179 GOTO BLK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @1180
	IF ~~ THEN REPLY @1181 GOTO BLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1182
	IF ~~ THEN REPLY @1183 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1184
	IF ~~ THEN REPLY @1185 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1186
	IF ~Global("ys_GarrisonFight","GLOBAL",3)~ THEN REPLY @1187 GOTO BLK6
	IF ~!Global("ys_GarrisonFight","GLOBAL",3)~ THEN REPLY @1187 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @1188
	IF ~~ THEN REPLY @1189 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @1190
	IF ~~ THEN
		DO~SetGlobal("ys_TalkedToHHApprentice","GLOBAL",1)~
	REPLY @1191 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @1192
	IF ~~ THEN
		DO~SetGlobal("ys_TalkedToHHApprentice","GLOBAL",1)~
	REPLY @1193 EXIT
END





//---------------------------------------------------------
//IF ~Global("ys_TalkedToHHApprentice","GLOBAL",0)~ THEN BEGIN BLK
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO BLK
//	IF ~~ THEN REPLY ~~ GOTO BLK
//END

