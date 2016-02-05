BEGIN ysgibmel

//---------------------------------------------------------
// Player has blown this subquest
//---------------------------------------------------------
IF ~Global("ys_TalkedToGibrial","GLOBAL",3)
    Global("ys_FindColver","GLOBAL",100)~ THEN BEGIN QuestBlown1
  SAY@2300
	IF~~THEN REPLY @2301
	DO~SetGlobal("ys_TalkedToGibrial","GLOBAL",4)~
	GOTO QuestBlown2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN QuestBlown2
	SAY@2302
	IF~~THEN REPLY @2303 GOTO QuestBlown3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN QuestBlown3
	SAY @2304
	IF~~THEN REPLY@2305 GOTO 3
END


//---------------------------------------------------------
//Normal start
//---------------------------------------------------------
IF ~Global("ys_TalkedToGibrial","GLOBAL",0)~ THEN BEGIN 0
	SAY @2306
	IF~~THEN REPLY @2307 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @2308
	IF~~THEN
  	DO~SetGlobal("ys_TalkedToGibrial","GLOBAL",1)~
  REPLY @2309 GOTO 3
	IF~~THEN REPLY @2310 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @2311
	IF~~THEN
	 DO~SetGlobal("ys_TalkedToGibrial","GLOBAL",1)~
  REPLY @2309 GOTO 3
END

//---------------------------------------------------------
IF ~OR(3)
		Global("ys_TalkedToGibrial","GLOBAL",1)
		Global("ys_TalkedToGibrial","GLOBAL",3)
		Global("ys_TalkedToGibrial","GLOBAL",4)~ THEN BEGIN 3
	SAY @2312
	IF~Global("ys_FindColver","GLOBAL",5)~THEN REPLY@2313 GOTO 6
	IF~!Global("ys_FindColver","GLOBAL",5)~THEN REPLY@2314 GOTO 4
	IF~~THEN REPLY @2315
    DO ~StartStore("ysgibmel",LastTalkedToBy())~
  EXIT
	IF~~THEN REPLY @2316 EXIT
END

//---------------------------------------------------------
IF ~OR(2)
		Global("ys_TalkedToGibrial","GLOBAL",1)
		Global("ys_TalkedToGibrial","GLOBAL",3)~ THEN BEGIN 4
	SAY @2317
	IF~~THEN REPLY @2318 GOTO 5
END

//---------------------------------------------------------
IF ~OR(2)
		Global("ys_TalkedToGibrial","GLOBAL",1)
		Global("ys_TalkedToGibrial","GLOBAL",3)~ THEN BEGIN 5
	SAY @2319
	IF~~THEN REPLY @2315
    DO ~StartStore("ysgibmel",LastTalkedToBy())~
  EXIT
	IF~~THEN REPLY @2316 EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToGibrial","GLOBAL",1)~ THEN BEGIN 6
	SAY @2320
	IF~~THEN REPLY @2321 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @2322
	IF~~THEN REPLY @2323 GOTO 8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @2324
	IF~~THEN
	DO~
		SetGlobal("ys_TalkedToGibrial","GLOBAL",2)
    FadeToColor([20.0],0)
    Wait(2)
    ActionOverride(Player1,LeaveAreaLUA("YS0408","",[603.201],15))
    ActionOverride(Player2,LeaveAreaLUA("YS0408","",[603.201],15))
    ActionOverride(Player3,LeaveAreaLUA("YS0408","",[553.228],13))
    ActionOverride(Player4,LeaveAreaLUA("YS0408","",[553.228],13))
    ActionOverride(Player5,LeaveAreaLUA("YS0408","",[568.280],12))
    ActionOverride(Player6,LeaveAreaLUA("YS0408","",[568.280],12))
    DestroySelf()
    FadeFromColor([20.0],0)~
	EXIT
END

//---------------------------------------------------------
// ys0408
//---------------------------------------------------------
IF ~Global("ys_TalkedToGibrial","GLOBAL",2)~ THEN BEGIN 99
	SAY @2325
	IF~~THEN REPLY @2326 GOTO 100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 100
	SAY @2327
	IF~InParty("Jaheira")
     !StateCheck("Jaheira",CD_STATE_NOTVALID)~THEN EXTERN JAHEIRAJ EC1
	IF~InParty("Jaheira")
      StateCheck("Jaheira",CD_STATE_NOTVALID)~THEN REPLY@2328 GOTO 102
	IF~!InParty("Jaheira")~THEN REPLY @2328 GOTO 102
END

//--------------------------------------------------------
IF ~~ THEN BEGIN 101
	SAY @2329
	IF~~THEN EXTERN JAHEIRAJ EC2
END

//---------------------------------------------------------
// Exit one - Jaheira and Gibri'al can do nothing
//---------------------------------------------------------
IF ~~ THEN BEGIN 102
	SAY @2330
	IF~~THEN
	DO~SetGlobal("ys_FindColver","GLOBAL",6)
		 SetGlobal("ys_TalkedToGibrial","GLOBAL",3)~
  EXIT
END



//---------------------------------------------------------
//IF ~Global("ys_TalkedToGibrial","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
// Interjections
//---------------------------------------------------------
CHAIN JAHEIRAJ EC1
 @2331
EXTERN ysgibmel 101

CHAIN JAHEIRAJ EC2
 @2332
EXTERN ysgibmel 102

