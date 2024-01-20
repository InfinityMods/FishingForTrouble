BEGIN ysceinwn

//---------------------------------------------------------
//Ceinwen in Spellhold - sent to rot
//---------------------------------------------------------
IF ~Global("ys_CeinwenSpellhold","GLOBAL",1)
    Global("ys_CeinwenRot","GLOBAL",1)~ THEN BEGIN BLK200
    SAY @1500
    IF ~~ THEN REPLY @1501 GOTO BLK201
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK201
    SAY @1502
    IF ~~ THEN REPLY @1503 GOTO BLK202
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK202
    SAY @1504
    IF ~~ THEN REPLY @1505
      DO ~SetGlobal("ys_CeinwenSpellhold","GLOBAL",0)
          SetGlobal("dai_TalkedToCeinwen","GLOBAL",5)
          EscapeArea()
          AddJournalEntry(@20,QUEST)~
      EXIT
END

//---------------------------------------------------------
//Ceinwen in Spellhold due to timeout
//---------------------------------------------------------
IF ~Global("ys_CeinwenSpellhold","GLOBAL",1)
    Global("ys_CeinwenRot","GLOBAL",0)~ THEN BEGIN BLK300
    SAY @1506
    IF ~~ THEN REPLY @1507 GOTO BLK301
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK301
    SAY @1508
    IF ~~ THEN REPLY @1509 GOTO BLK305
    IF ~~ THEN REPLY @1510 GOTO BLK302
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK302
    SAY @1511
    IF ~~ THEN REPLY @1512 GOTO BLK303
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK303
    SAY @1513
    IF ~~ THEN
    DO ~AddJournalEntry(@20,QUEST)~
    REPLY @1514 GOTO BLK304
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK304
    SAY @1515
    IF ~~ THEN REPLY @1505
      DO ~SetGlobal("ys_CeinwenSpellhold","GLOBAL",0)
          SetGlobal("dai_TalkedToCeinwen","GLOBAL",5)
          EscapeArea()~
      EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK305
    SAY @1516
    IF ~~ THEN REPLY @1517 GOTO BLK306
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK306
    SAY @1518
    IF ~~ THEN REPLY @1519 GOTO BLK307
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK307
    SAY @1520
    IF ~~ THEN REPLY @1521 GOTO BLK308
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK308
    SAY @1522
    IF ~~ THEN REPLY @1523 GOTO BLK309
    IF ~~ THEN REPLY @1524 GOTO BLK310
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK309
    SAY @1525
    IF ~~ THEN REPLY @1526
      DO ~SetGlobal("ys_CeinwenSpellhold","GLOBAL",0)
          SetGlobal("dai_TalkedToCeinwen","GLOBAL",5)
          EscapeArea()
          AddJournalEntry(@21,QUEST)~
      EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK310
    SAY @1527
    IF ~~ THEN REPLY @1528
      DO ~SetGlobal("ys_CeinwenSpellhold","GLOBAL",0)
          SetGlobal("dai_TalkedToCeinwen","GLOBAL",5)
          EscapeArea()
          AddJournalEntry(@21,QUEST)~
      EXIT
END

//---------------------------------------------------------
//Ceinwen start
//---------------------------------------------------------
IF ~Global("dai_TalkedToCeinwen","GLOBAL",0)
    Global("ys_RudeToCeinwen","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1529
	IF ~~ THEN REPLY @1530 GOTO BLK1
	IF ~~ THEN REPLY @1531 GOTO BLK2
	IF ~~ THEN REPLY @1532 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1533
	IF ~~ THEN REPLY @1534 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1535
	IF ~~ THEN REPLY @1536 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1537
	IF ~~ THEN DO ~SetGlobal("ys_RudeToCeinwen","GLOBAL",1)~
	  REPLY @1538 GOTO BLK4
	IF ~~ THEN DO ~SetGlobal("ys_RudeToCeinwen","GLOBAL",1)~
    REPLY @1539EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @1540
	IF ~~ THEN REPLY @1541 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @1542
	IF ~~ THEN REPLY @1543 GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @1544
	IF ~~ THEN REPLY @1545 GOTO BLK10
END

//---------------------------------------------------------
IF ~Global("ys_RudeToCeinwen","GLOBAL",1)~ THEN BEGIN BLK8
    SAY @1546
    IF ~~ THEN DO ~SetGlobal("ys_RudeToCeinwen","GLOBAL",2)~
    REPLY @1547 GOTO BLK9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK9
	 SAY @1548
	 IF ~~ THEN REPLY @1549 GOTO BLK10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK10
	 SAY @1550
	 IF ~~ THEN REPLY @1551 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
	 SAY @1552
	 IF ~~ THEN REPLY @1553 GOTO BLK12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK12
	 SAY @1554
	 IF~Global("ys_RudeToCeinwen","GLOBAL",0)~THEN REPLY @1555 GOTO BLK13
	 IF~!Global("ys_RudeToCeinwen","GLOBAL",0)~THEN REPLY @1555 GOTO BLK14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK13
    SAY @1556
    IF ~~ THEN
      DO ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",1)
          AddJournalEntry(@150,QUEST)
          SetGlobalTimer("ys_CeinwenTimer","GLOBAL",ONE_DAY)~
      REPLY @1557
      EXIT
END

IF ~~ THEN BEGIN BLK14
    SAY @1558
    IF ~~ THEN
      DO ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",1)
          SetGlobalTimer("ys_CeinwenTimer","GLOBAL",ONE_DAY)~
      REPLY @1559
      EXIT
END

//---------------------------------------------------------
//Holding.....
//---------------------------------------------------------
IF ~Global("dai_TalkedToCeinwen","GLOBAL",1)
    GlobalTimerNotExpired("ys_CeinwenTimer","GLOBAL")~ THEN BEGIN BLK20
    SAY @1560
    IF ~~ THEN
      EXIT
END

IF ~Global("dai_TalkedToCeinwen","GLOBAL",7)
    GlobalTimerNotExpired("ys_CeinwenTimer","GLOBAL")~ THEN BEGIN BLK21
    SAY @1561
    IF ~~ THEN
      EXIT
END

//---------------------------------------------------------
//Cowled Wizards - Ceinwen created after Gaelie or Telther speaks
//---------------------------------------------------------
IF ~Global("dai_TalkedToCeinwen","GLOBAL",3)
    Global("ys_GoForCeinwenRansom","GLOBAL",0)~ THEN BEGIN BLK30
    SAY @1562
    IF ~~ THEN
      EXIT
END

//---------------------------------------------------------
//Ceinwen saved from Cowled Wizards, still in govt. building
//---------------------------------------------------------
IF ~Global("dai_TalkedToCeinwen","GLOBAL",4)~ THEN BEGIN BLK100
	SAY @1563
	IF ~~ THEN REPLY @1564 GOTO BLK101
	IF ~~ THEN REPLY @1565 GOTO BLK105
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK101
	SAY @1566
	IF ~~ THEN REPLY @1567 GOTO BLK102
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK102
	SAY @1568
	IF ~~ THEN REPLY @1569 GOTO BLK103
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK103
	SAY @1570
	IF ~~ THEN
    DO ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",5)
    AddJournalEntry(@18,QUEST)
    EscapeArea()~
    EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK105
	SAY @1571
	IF ~~ THEN REPLY @1572 GOTO BLK106
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK106
	SAY @1573
	IF ~~ THEN
    DO ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",5)
        AddJournalEntry(@19,QUEST)
    EscapeArea()~
    EXIT
END

//---------------------------------------------------------
//Athkatla, left to rot reaction
//---------------------------------------------------------
IF ~Global("dai_TalkedToCeinwen","GLOBAL",5)
    Global("ys_CeinwenRot","GLOBAL",1)~ THEN BEGIN BLK400
	SAY @1574
	IF ~~ THEN REPLY @1575 GOTO BLK401
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK401
	SAY @1576
	IF ~~ THEN
    DO ~SetGlobal("ys_CeinwenRot","GLOBAL",0)~
    REPLY @1577
    GOTO BLK402
END

//---------------------------------------------------------
//Athkatla, all routes lead to here
//---------------------------------------------------------
IF ~~ THEN BEGIN BLK402
	SAY @1578
	IF ~~ THEN REPLY @1579
	 DO~SetGlobal("ys_CeinwenActive","GLOBAL",1)~
  GOTO BLK403
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK403
	SAY @1580
	IF ~~ THEN REPLY @1581 GOTO BLK404
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK404
	SAY @1582
	IF ~~ THEN REPLY @1583 GOTO BLK405
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK405
	SAY @1584
    =@1585
    =@1586
	=@1587
    =@1588
	IF ~~ THEN REPLY @1589 GOTO BLK406
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK406
	SAY @1590
	IF ~~ THEN REPLY @1591 GOTO BLK407
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK407
	SAY @1592
	IF ~~ THEN REPLY @1593 GOTO BLK408
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK408
	SAY @1594
	IF ~~ THEN REPLY @1595 GOTO BLK409
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK409
	SAY @1596
	IF ~~ THEN REPLY @1597 GOTO BLK410
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK410
	SAY @1598
	IF ~~ THEN REPLY @1599
    DO ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",6)
        SetGlobal("ys_SetVampChild","GLOBAL",1)
		GiveItemCreate("ysvmpbld",Player1,0,0,0)
        AddJournalEntry(@24,QUEST)~
    EXIT
END

//---------------------------------------------------------
//Party has killed child vampire but did not collect the blood
//---------------------------------------------------------
IF ~Global("dai_TalkedToCeinwen","GLOBAL",6)
  Global("ys_CeinwenRot","GLOBAL",0)
  Global("ys_VampChildIsDead","GLOBAL",2)~ THEN BEGIN BLK500
	SAY @1600
	IF ~~ THEN
		DO~SetGlobal("ys_VampChildIsDead","GLOBAL",3)
      EraseJournalEntry(@2)
      EraseJournalEntry(@3)
      EraseJournalEntry(@4)
      EraseJournalEntry(@5)
      EraseJournalEntry(@6)
      EraseJournalEntry(@7)
      EraseJournalEntry(@8)
      EraseJournalEntry(@9)
      EraseJournalEntry(@10)
      EraseJournalEntry(@11)
      EraseJournalEntry(@12)
      EraseJournalEntry(@15)
      EraseJournalEntry(@16)
      EraseJournalEntry(@17)
      EraseJournalEntry(@18)
      EraseJournalEntry(@19)
      EraseJournalEntry(@20)
      EraseJournalEntry(@21)
      EraseJournalEntry(@23)
      EraseJournalEntry(@24)
      EraseJournalEntry(@150)
      AddJournalEntry(@43,QUEST_DONE)~
	EXIT
END

//---------------------------------------------------------
//Party returned with vampire's blood and the vampire is dead
//---------------------------------------------------------
IF ~Global("dai_TalkedToCeinwen","GLOBAL",6)
  Global("ys_CeinwenRot","GLOBAL",0)
  Global("ys_VampChildIsDead","GLOBAL",1)~ THEN BEGIN BLK510
	SAY @1601
	IF ~~ THEN REPLY @1602 GOTO BLK511
	IF ~~ THEN REPLY @1603 GOTO BLK511
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK511
	SAY @1604
	IF ~~ THEN
     DO ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",7)
         SetGlobalTimer("ys_CeinwenTimer","GLOBAL",TWO_DAYS)
         TakePartyItem("ysvmpbld")
         AddJournalEntry(@25,QUEST)~
     EXIT
END

//---------------------------------------------------------
//Party has come for the ingredients
//---------------------------------------------------------
IF ~Global("dai_TalkedToCeinwen","GLOBAL",7)
    GlobalTimerExpired("ys_CeinwenTimer","GLOBAL")
    Global("ys_VampChildIsDead","GLOBAL",1)~ THEN BEGIN BLK600
  SAY@1605
  IF ~~ THEN REPLY@1519 GOTO BLK601
  IF ~~ THEN REPLY@1606 GOTO BLK602
END

IF ~~ THEN BEGIN BLK601
  SAY@1607
  IF ~~ THEN REPLY@1608
    DO ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",8)
		GiveItemCreate("yspotn01",Player1,0,0,0)
		GiveItemCreate("yspotn02",Player1,0,0,0)
        AddJournalEntry(@26,QUEST)~
    EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK602
  SAY@1609
  IF ~~ THEN
    DO ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",8)
		GiveItemCreate("yspotn01",Player1,0,0,0)
		GiveItemCreate("yspotn02",Player1,0,0,0)
        AddJournalEntry(@27,QUEST)~
    EXIT
END

//---------------------------------------------------------
//Ghoul transformation is permanent
//---------------------------------------------------------
IF ~Global("dai_TalkedToCeinwen","GLOBAL",8)
    PartyHasItem("ysghoul1")~THEN BEGIN BLK700
  SAY@1610
  =@1611
  IF ~~ THEN REPLY@1612 GOTO BLK701
  IF ~~ THEN REPLY@1613 GOTO BLK702
END

//---------------------------------------------------------
IF ~~THEN BEGIN BLK701
  SAY@1614
  IF ~~ THEN REPLY@1615
  DO ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",9)~
  EXIT
END

//---------------------------------------------------------
IF ~~THEN BEGIN BLK702
  SAY@1616
  IF ~~ THEN REPLY@1617GOTO BLK703
END

//---------------------------------------------------------
IF ~~THEN BEGIN BLK703
  SAY@1618
  IF ~~ THEN REPLY@1619
  DO ~SetGlobal("dai_TalkedToCeinwen","GLOBAL",10)~
  EXIT
END

//IF ~Global("dai_TalkedToCeinwen","GLOBAL",7)
//    GlobalTimerExpired("ys_CeinwenTimer","GLOBAL")
//    Global("ys_VampChildIsDead","GLOBAL",1)~ THEN BEGIN BLK
//  SAY~~
//  IF ~~ THEN REPLY~~ GOTO BLK
//END

