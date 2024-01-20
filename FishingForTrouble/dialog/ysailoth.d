BEGIN ysailoth

//---------------------------------------------------------
IF ~Global("ys_TalkedToAiloth","GLOBAL",1)
	Global("ys_FoundWizard","GLOBAL",1)~ THEN BEGIN BLK1
	SAY @1662
	IF ~~ THEN REPLY @1623 EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToAiloth","GLOBAL",0)
	Global("ys_FoundWizard","GLOBAL",0)~ THEN BEGIN BLK1
	SAY @1620
	IF ~~ THEN REPLY @1621 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1622
	IF ~~ THEN REPLY @1623 GOTO BLK3
	IF ~~ THEN REPLY @1624 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1625
	IF ~~ THEN
		DO ~SetGlobal("ys_FoundWizard","GLOBAL",1)~
		REPLY @1626 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @1627
	IF ~~ THEN REPLY @1628 GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @1629
	IF ~~ THEN REPLY @1630 GOTO BLK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @1631
	IF~InParty("Edwin")~ THEN REPLY @1632 GOTO BLK9
	IF~!InParty("Edwin")~THEN REPLY @1632 GOTO BLK8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK8
	SAY @1633
	IF ~~ THEN REPLY @1634 GOTO BLK10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK9
	SAY @1635
	IF ~~ THEN REPLY @1636 EXTERN EDWINJ CHBLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK101
	SAY @1637
	IF ~~ THEN REPLY @1638 GOTO BLK10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK10
	SAY @1639
	IF ~~ THEN REPLY @1640 GOTO BLK11
	IF ~~ THEN REPLY @1641 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
	SAY @1642
	IF ~~ THEN REPLY @1643 GOTO BLK12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK12
	SAY @1644
	IF~!InParty("Edwin")~THEN REPLY @1645 GOTO BLK13
	IF~InParty("Edwin")~THEN REPLY @1645 EXTERN EDWINJ CHBLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK13
	SAY @1646
	IF ~~ THEN REPLY @1647 GOTO BLK15
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK114
	SAY @1648
	IF ~~ THEN REPLY @1649 GOTO BLK14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK14
	SAY @1650
	IF ~~ THEN REPLY @1647 GOTO BLK15
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK15
	SAY @1651
	IF~InParty("Jaheira")~THEN
		EXTERN JAHEIRAJ CHBLK3
 	IF~!InParty("Jaheira")~THEN
	 	REPLY @1652 GOTO BLK16
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK116
	SAY @1653
	IF ~~ THEN REPLY @1654 GOTO BLK16
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK16
	SAY @1655
	IF ~~ THEN REPLY @1656 GOTO BLK17
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK17
	SAY @1657
	IF ~~ THEN REPLY @1658 GOTO BLK20
	IF ~~ THEN REPLY @1659 GOTO BLK18
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK20
	SAY @1660
	IF ~~ THEN REPLY @1661 GOTO BLK21
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK21
	SAY @1662
	IF ~~ THEN
    DO~AddJournalEntry(@58,QUEST)~
  REPLY @1663 GOTO BLK18
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK18
	SAY @1664
	IF~!InParty("Jaheira")~THEN
  REPLY @1665 GOTO BLK19
	IF~InParty("Jaheira")~THEN
  REPLY @1665 GOTO BLK19
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK19
	SAY @1666
	IF~!InParty("Jaheira")~THEN REPLY @1667
		DO ~SetGlobal("ys_TalkedToAiloth","GLOBAL",1)
			AddJournalEntry(@37,QUEST)
			EscapeArea()~
		EXIT
	IF~InParty("Jaheira")~THEN REPLY @1668
		DO ~SetGlobal("ys_TalkedToAiloth","GLOBAL",1)
			AddJournalEntry(@37,QUEST)
			EscapeArea()~
		EXIT
END


//---------------------------------------------------------
//IF ~Global("ys_TalkedToAiloth","GLOBAL",0)
//		Global("ys_FoundWizard","GLOBAL",1)~ THEN BEGIN BLK
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO BLK
//	IF ~~ THEN REPLY ~~ GOTO BLK
//END

//---------------------------------------------------------
//Interjections
//---------------------------------------------------------
//Edwin
CHAIN EDWINJ CHBLK1
@1669
EXTERN YSAILOTH BLK101

CHAIN EDWINJ CHBLK2
@1670
EXTERN YSAILOTH BLK114

//Jaheira
CHAIN JAHEIRAJ CHBLK3
@1671
EXTERN YSAILOTH BLK116
