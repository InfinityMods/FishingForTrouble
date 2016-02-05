//Gaelie's father
BEGIN yskalun

//---------------------------------------------------------
IF ~Global("ys_FoundKalun","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1200
	IF~~THEN REPLY @1201 GOTO BLK1
	IF~~THEN REPLY @1202 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1203
	IF~~THEN REPLY @1204 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1205
	IF~~THEN REPLY @1206 GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1207
	IF~~THEN REPLY @1208 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @1209
	IF~~THEN REPLY @1210 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @1211
	IF~~THEN REPLY @1212 GOTO BLK8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @1213
	IF~~THEN REPLY @1214 GOTO BLK7
	IF~~THEN REPLY @1215 GOTO BLK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @1216
	IF~~THEN REPLY @1217
    DO ~AddexperienceParty(3000)
        SetGlobal("ys_FoundKalun","GLOBAL",1)
        EscapeArea()~
    EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK8
	SAY @1213
	IF~~THEN REPLY @1218 GOTO BLK9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK9
	SAY @1219
	IF~~THEN REPLY @1220
    DO ~AddexperienceParty(2000)
        SetGlobal("ys_FoundKalun","GLOBAL",1)
        EscapeArea()~
    EXIT
END


