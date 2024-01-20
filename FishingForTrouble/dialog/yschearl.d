BEGIN yschearl

IF ~Global("ys_TalkedToWultheof","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @2200
	IF~Global("ys_TalkedToCaravanMaster","GLOBAL",3)~THEN REPLY @2201 GOTO BLK1
	IF~!Global("ys_TalkedToCaravanMaster","GLOBAL",3)~THEN REPLY @2202 GOTO BLKEND
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @2203
	IF ~~ THEN REPLY @2204 GOTO BLK2
	IF ~~ THEN REPLY @2205 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @2206
	IF ~~ THEN REPLY @2207 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @2208
	IF ~~ THEN REPLY @2209 GOTO BLK10
	IF ~~ THEN REPLY @2210 GOTO BLK10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @2211
	IF ~~ THEN REPLY @2212 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @2213
	IF ~~ THEN REPLY @2214 GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @2215
	IF ~~ THEN REPLY @2216 GOTO BLK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @2217
	IF ~~ THEN REPLY @2218 GOTO BLK8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK8
	SAY @2219
	IF ~~ THEN REPLY @2220 GOTO BLK20
	IF ~~ THEN REPLY @2221 GOTO BLK12
END


//---------------------------------------------------------
IF ~~ THEN BEGIN BLK10
	SAY @2219
	IF ~~ THEN REPLY @2222 GOTO BLK11
	IF ~~ THEN REPLY @2221 GOTO BLK12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
	SAY @2223
	IF ~~ THEN REPLY @2216 GOTO BLK20
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK12
	SAY @2224
	IF ~~ THEN DO~
		SetGlobal("ys_TalkedToWultheof","GLOBAL",1)
		SetGlobal("ys_WultheofReward","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK20
	SAY @2225
	IF ~~ THEN DO~SetGlobal("ys_TalkedToWultheof","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ys_TalkedToWultheof","GLOBAL",1)
	Global("ys_WultheofReward","GLOBAL",1)
	Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK100
	SAY @2226
	IF ~~ THEN
		DO ~GiveGoldForce(1500)
		SetGlobal("ys_TalkedToWultheof","GLOBAL",2)~
		EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToWultheof","GLOBAL",2)~ THEN BEGIN BLK
	SAY @2227
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLKEND
	SAY @2227
	IF ~~ THEN EXIT
END