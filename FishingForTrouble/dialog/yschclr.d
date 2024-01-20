BEGIN yschclr

//---------------------------------------------------------
//Before fight but after speech
IF ~Global("dai_TalkedToCHCleric","GLOBAL",1)
		Global("ys_GarrisonFight","GLOBAL",0)~ THEN BEGIN BLK100
	SAY @1700
	IF~~THEN REPLY @1701 GOTO BLK20
	IF~~THEN REPLY @1702 EXIT
END


//---------------------------------------------------------
//After fight and after speech
IF ~Global("dai_TalkedToCHCleric","GLOBAL",1)
		GlobalGT("ys_GarrisonFight","GLOBAL",2)~ THEN BEGIN BLK200
	SAY @1700
	IF~~THEN REPLY @1701 GOTO BLK20
	IF~~THEN REPLY @1702 EXIT
END

//---------------------------------------------------------
//Before the garrison fight
//---------------------------------------------------------
IF ~Global("dai_TalkedToCHCleric","GLOBAL",0)
		Global("ys_GarrisonFight","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1703
	IF~~THEN REPLY @1704 GOTO BLK1
	IF~NumInPartyGT(1)~THEN REPLY @1705 GOTO BLK20
	IF~NumInParty(1)~THEN REPLY @1706 GOTO BLK20
	IF~~THEN REPLY @1707 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @1708
	IF~~THEN REPLY @1709 GOTO BLK2
	IF~NumInPartyGT(1)~THEN REPLY @1705 GOTO BLK20
	IF~NumInParty(1)~THEN REPLY @1706 GOTO BLK20
	IF~~THEN REPLY @1707 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @1710
	IF~~THEN REPLY @1711 GOTO BLK3
	IF~NumInPartyGT(1)~THEN REPLY @1705 GOTO BLK20
	IF~NumInParty(1)~THEN REPLY @1706 GOTO BLK20
	IF~~THEN REPLY @1707 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @1712
	IF~~THEN REPLY @1713 GOTO BLK4
	IF~NumInPartyGT(1)~THEN REPLY @1705 GOTO BLK20
	IF~NumInParty(1)~THEN REPLY @1706 GOTO BLK20
	IF~~THEN REPLY @1707 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @1714
	IF~~THEN REPLY @1715 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @1716
	IF~NumInPartyGT(1)~THEN REPLY @1717 GOTO BLK20
	IF~NumInParty(1)~THEN REPLY @1718 GOTO BLK20
	IF~~THEN REPLY @1719 EXIT
END


//---------------------------------------------------------
//After the garrison fight
//---------------------------------------------------------
IF ~Global("dai_TalkedToCHCleric","GLOBAL",1)
	GlobalGT("ys_GarrisonFight","GLOBAL",2)~ THEN BEGIN BLK10
	SAY @1720
	IF~~THEN REPLY @1721 GOTO BLK11
	IF~~THEN REPLY @1722 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
	SAY @1723
	IF~NumInPartyGT(1)~THEN REPLY @1705 GOTO BLK20
	IF~NumInParty(1)~THEN REPLY @1706 GOTO BLK20
	IF~~THEN REPLY @1719 EXIT
END

//---------------------------------------------------------
//IF ~Global("dai_TalkedToCHCleric","GLOBAL",1)
//		GlobalGT("ys_GarrisonFight","GLOBAL",2)~ THEN BEGIN BLK
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO BLK
//	IF~~THEN REPLY ~~ GOTO BLK
//END


//Open the store
IF ~Global("dai_UsedCHStore","GLOBAL",0)~ THEN BEGIN BLK20
    SAY @1724
    IF~~THEN
      DO ~StartStore("yschclr",LastTalkedToBy())
		  SetGlobal("dai_TalkedToCHCleric","GLOBAL",1)~
      EXIT
END


