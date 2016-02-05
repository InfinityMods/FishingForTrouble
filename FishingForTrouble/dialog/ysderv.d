BEGIN ysderv

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",1)~ THEN BEGIN PLAYAGAIN
	SAY @1870
	IF~~THEN REPLY @1871
		DO~
    PlaySong(0)
    PlaySound("ysbhall")~
  EXIT

	IF~~THEN
		DO ~SetGlobal("ys_TalkedToDerval","GLOBAL",1)~
	REPLY @1872 EXIT
END

//---------------------------------------------------------
IF ~!GlobalTimerExpired("ys_LuteTimer","GLOBAL")~ THEN BEGIN NODIALOGYET
	SAY @1873
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1874
	IF~~THEN REPLY @1875 GOTO BLK3
	IF~~THEN REPLY @1876 GOTO BLK1
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK1
	SAY @1877
	IF~~THEN REPLY @1878 GOTO BLK2
	IF~~THEN REPLY @1879 GOTO BLK2
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK2
	SAY @1880
	IF~~THEN REPLY @1881 GOTO BLK4
	IF~~THEN REPLY @1882 GOTO BLK4
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK3
	SAY @1883
	IF~~THEN REPLY @1881 GOTO BLK4
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK4
	SAY @1884
	IF~~THEN REPLY @1885 GOTO BLK5
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK5
	SAY @1886
	IF~~THEN EXTERN ysaine BLK6
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK6
	SAY @1887
	IF~~THEN REPLY @1871 GOTO BLK7
	IF~~THEN
		DO ~SetGlobal("ys_TalkedToDerval","GLOBAL",1)~
	REPLY @1872 EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK7
	SAY @1888
	IF~~THEN EXTERN ysaine BLK10
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK8
	SAY @1889
	IF~~THEN REPLY @1890 GOTO BLK9
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK9
	SAY @1891
	IF~~THEN REPLY @1892
		DO~
		SetGlobal("ysEasterEgg","GLOBAL",1)
    PlaySong(0)
    PlaySound("ysbhall")~
    EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TalkedToDerval","GLOBAL",0)~ THEN BEGIN BLK
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO BLK
//	IF~~THEN REPLY ~~ GOTO BLK
//END

//---------------------------------------------------------
CHAIN ysaine BLK6
@1893
== ysderv @1894
== ysaine @1895 EXTERN ysderv BLK6

CHAIN ysaine BLK10
@1896 EXTERN ysderv BLK8
