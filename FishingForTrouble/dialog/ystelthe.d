//Telther Strongarm - male peasant created if Galie is given the brush-off
BEGIN ystelthe

//---------------------------------------------------------
IF ~Global("dai_TalkedToTelthe","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1400
	IF~~THEN REPLY @1401 GOTO BLK3
	IF~~THEN REPLY @1402 GOTO BLK3
	IF~~THEN REPLY @1403 GOTO BLK1
END

IF ~Global("dai_TalkedToTelthe","GLOBAL",0)~ THEN BEGIN BLK1
	SAY @1404
	IF~~THEN REPLY @1405 GOTO BLK2
END

IF ~Global("dai_TalkedToTelthe","GLOBAL",0)~ THEN BEGIN BLK2
	SAY @1406
	IF~~THEN REPLY @1407 GOTO BLK3
END

IF ~Global("dai_TalkedToTelthe","GLOBAL",0)~ THEN BEGIN BLK3
	SAY @1408
	IF~~THEN REPLY @1409 GOTO BLK4
END

IF ~Global("dai_TalkedToTelthe","GLOBAL",0)~ THEN BEGIN BLK4
	SAY @1410
	IF~~THEN REPLY @1411 GOTO BLK5
END

IF ~Global("dai_TalkedToTelthe","GLOBAL",0)~ THEN BEGIN BLK5
	SAY @1412
  IF~~THEN
    DO
      ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",3)
      SetGlobal("dai_TalkedToTelthe","GLOBAL",1)
      EscapeArea()
      AddJournalEntry(@15,QUEST)~
    EXIT
END


//---------------------------------------------------------
//IF ~Global("dai_TalkedToTelthe","GLOBAL",0) THEN BEGIN BLK
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//END

