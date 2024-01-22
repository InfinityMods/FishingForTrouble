BEGIN ysaine

//---------------------------------------------------------
IF ~!GlobalTimerExpired("ys_LuteTimer","GLOBAL")~ THEN BEGIN NODIALOGYET
	SAY @1850
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~GlobalLT("ys_TalkedToAine","GLOBAL",2)~ THEN BEGIN BLK0
	SAY @1851
	IF ~Global("ys_TalkedToDerval","GLOBAL",0)
		Global("ys_TalkedToAine","GLOBAL",0)~ THEN REPLY @1852 GOTO BLK3
	IF ~OR(2)
		 Global("ys_TalkedToAine","GLOBAL",1)
		 Global("ys_TalkedToDerval","GLOBAL",1)~ THEN REPLY @1853 GOTO BLK1
	IF ~Global("ys_TalkedToAine","GLOBAL",0)~ THEN REPLY @1854 GOTO BLK2
	IF ~~ THEN REPLY @1855 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1856
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1857
	IF ~~ THEN REPLY @1858 GOTO BLK3
	IF ~~ THEN REPLY @1859 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1860
	IF ~~ THEN REPLY @1861 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @1862
	IF ~~ THEN
		DO ~SetGlobal("ys_PianoTalk","GLOBAL",1)~
	REPLY @1863 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @1864
	IF ~~ THEN DO ~SetGlobal("ys_TalkedToAine","GLOBAL",1)~ EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TalkedToAine","GLOBAL",0)~ THEN BEGIN BLK
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO BLK
//	IF ~~ THEN REPLY ~~ GOTO BLK
//END
