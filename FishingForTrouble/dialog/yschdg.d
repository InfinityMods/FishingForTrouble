BEGIN yschdg

IF ~Global("ys_TalkedToDungeonGuard","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1250
	IF ~~ THEN REPLY @1251 GOTO BLK1
	IF ~~ THEN REPLY @1252 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1253
	IF ~~ THEN REPLY @1254 GOTO BLK2
	IF ~~ THEN REPLY @1255 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1256
	IF ~~ THEN REPLY @1257 GOTO BLK3
	IF ~~ THEN REPLY @1258 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1259
	IF ~NumInParty(1)~ THEN REPLY @1260 GOTO BLK4
	IF ~NumInParty(1)~ THEN REPLY @1261 GOTO BLK4
	IF ~NumInPartyGT(1)~ THEN REPLY @1262 GOTO BLK4
	IF ~NumInPartyGT(1)~ THEN REPLY @1263 GOTO BLK4
END

//---------------------------------------------------------
//Start fight
IF ~Global("ys_TalkedToDungeonGuard","GLOBAL",1)~ THEN BEGIN BLK4
	SAY @1264
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToDungeonGuard","GLOBAL",1)~
		EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TalkedToDungeonGuard","GLOBAL",0)~ THEN BEGIN BLK
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO BLK
//	IF ~~ THEN REPLY ~~ GOTO BLK
//END

