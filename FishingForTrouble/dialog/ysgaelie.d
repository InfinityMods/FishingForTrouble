//Female urchin
BEGIN ysgaelie

//---------------------------------------------------------
IF ~Global("ys_TalkedToGaelie","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1300
	IF ~~ THEN REPLY @1301 GOTO BLK2
	IF ~~ THEN REPLY @1302 GOTO BLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1303
	IF ~~ THEN REPLY @1304 GOTO BLK2
	IF ~~ THEN REPLY @1305 GOTO BLK100
END

//---------------------------------------------------------
//Create Telther Strongarm to continue plot
IF ~~ THEN BEGIN BLK100
	SAY @1306
	IF ~~ THEN
    DO
      ~SetGlobal("ys_CreateTelther","GLOBAL",1)
      EscapeArea()~
    EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1307
	IF ~~ THEN REPLY @1308 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1309
	IF ~~ THEN REPLY @1310 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @1311
	IF ~~ THEN REPLY @1312 GOTO BLK6
	IF ~~ THEN REPLY @1313 GOTO BLK5
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToGaelie","GLOBAL",5)~ THEN BEGIN BLK5
	SAY @1314
	IF ~PartyGoldGT(4)~ THEN REPLY @1315
      DO ~TakePartyItemNum("MISC07",5)~
    GOTO BLK7
	IF ~PartyGoldLT(5)~ THEN REPLY @1324 
		DO ~SetGlobal("ys_TalkedToGaelie","GLOBAL",5)~ 
	EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToGaelie","GLOBAL",6)~ THEN BEGIN BLK6
	SAY @1316
	IF ~PartyGoldGT(1)~ THEN REPLY @1317
      DO ~TakePartyItemNum("MISC07",2)~
    GOTO BLK7
	IF ~PartyGoldLT(2)~ THEN REPLY @1324
		DO ~SetGlobal("ys_TalkedToGaelie","GLOBAL",6)~ 
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @1318
	IF ~~ THEN REPLY @1319 GOTO BLK8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK8
	SAY @1320
	IF ~~ THEN REPLY @1321 GOTO BLK9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK9
	SAY @1322
  IF ~~ THEN
    DO ~AddJournalEntry(@13,QUEST)~
    REPLY @1323 GOTO BLK10
  IF ~~ THEN REPLY @1324 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK10
  SAY @1325
	IF ~~ THEN REPLY @1326 GOTO BLK12
	IF ~~ THEN REPLY @1327 GOTO BLK13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
	SAY @1328
	IF ~~ THEN
    DO
      ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",3)
      EscapeArea()~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK12
	SAY @1329
	IF ~~ THEN REPLY @1330 GOTO BLK114
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK114
	SAY @1331
	IF ~~ THEN REPLY @1332 GOTO BLK14
	IF ~~ THEN REPLY @1333 GOTO BLK13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK13
	SAY @1334
	IF ~~ THEN
    DO
      ~SetGlobal("ys_TalkedToGaelie","GLOBAL",1)
      SetGlobal("dai_TalkedToCeinwen","GLOBAL",3)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK14
	SAY @1335
  IF ~~ THEN
    DO
      ~SetGlobal("ys_TalkedToGaelie","GLOBAL",1)
      SetGlobal("dai_TalkedToCeinwen","GLOBAL",3)
      AddJournalEntry(@13,QUEST)~
    EXIT
END

//---------------------------------------------------------
//Gaelie and Kalun reunited
//---------------------------------------------------------
IF ~Global("ys_FoundKalun","GLOBAL",1)
    Global("ys_TalkedToGaelie","GLOBAL",1)~ THEN BEGIN BLK20
	SAY @1336
	IF ~~ THEN REPLY @1337 GOTO BLK21
	IF ~~ THEN REPLY @1338 GOTO BLK21
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK21
	SAY @1339
	IF ~~ THEN SOLVED_JOURNAL @14
	   DO
	    ~SetGlobal("ys_TalkedToGaelie","GLOBAL",3)
       SetGlobal("ys_FoundKalun","GLOBAL",3)
       AddexperienceParty(2000)
       EraseJournalEntry(@13)
       EscapeArea()~
    EXIT
END

//---------------------------------------------------------
//Kalun is dead
//---------------------------------------------------------
IF ~Global("ys_KalunIsDead","GLOBAL",1)~ THEN BEGIN BLK50
	SAY @1340
	IF~InParty("Jaheira")
	!StateCheck("Jaheira",STATE_DEAD)~THEN REPLY @1341 EXTERN JAHEIRAJ GTBLK1
	IF~InParty("Aerie")
	!StateCheck("Aerie",STATE_DEAD)~THEN REPLY @1341 EXTERN AERIEJ GTBLK1
	IF~InParty("Cernd")
	!StateCheck("Cernd",STATE_DEAD)~THEN REPLY @1341 EXTERN CERNDJ GTBLK1
	IF ~~ THEN REPLY @1342 GOTO BLK60
	IF ~~ THEN REPLY @1343 GOTO BLK70
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK60
	SAY @1344
	IF ~~ THEN SOLVED_JOURNAL @56
	  DO
	  ~SetGlobal("ys_KalunIsDead","GLOBAL",2)
      AddexperienceParty(1500)
      EraseJournalEntry(@13)
      EscapeArea()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK70
	SAY @1345
	IF ~~ THEN SOLVED_JOURNAL @57
	  DO
	  ~SetGlobal("ys_KalunIsDead","GLOBAL",2)
      AddexperienceParty(500)
      EraseJournalEntry(@13)
      EscapeArea()~
	EXIT
END

//---------------------------------------------------------
//Jaheira
CHAIN JAHEIRAJ GTBLK1
  @1346
EXTERN ysgaelie BLK60

//---------------------------------------------------------
//Aerie
CHAIN AERIEJ GTBLK1
  @1347
EXTERN ysgaelie BLK60

//---------------------------------------------------------
//Cernd
CHAIN CERNDJ GTBLK1
  @1348
EXTERN ysgaelie BLK60


//---------------------------------------------------------
//IF ~Global("dai_TalkedTo","GLOBAL",2) THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//END

