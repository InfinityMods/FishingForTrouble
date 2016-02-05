BEGIN yschcapt

IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK0
	SAY @1730
	IF~~THEN REPLY @1731 GOTO BLK1
	IF~~THEN REPLY @1732 GOTO BLK1
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK1
	SAY @1733
	IF~~THEN REPLY @1734 GOTO BLK2
	IF~~THEN REPLY @1735 GOTO BLK6
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK2
	SAY @1736
	IF~~THEN REPLY @1737 GOTO BLK3
	IF~~THEN REPLY @1738 GOTO BLK4
	IF~~THEN REPLY @1735 GOTO BLK6
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK3
	SAY @1739
	IF~~THEN REPLY @1740 GOTO BLK4
	IF~~THEN REPLY @1735 GOTO BLK6
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK4
	SAY @1741
	=@1742
	=@1743
	IF~~THEN REPLY @1744 GOTO BLK5
	IF~~THEN REPLY @1735 GOTO BLK6
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK5
	SAY @1745
	IF~~THEN REPLY @1746 GOTO BLK6
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK6
	SAY @1747
	IF~~THEN REPLY @1748 GOTO BLK7
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK7
	SAY @1749
	IF~~THEN REPLY @1750 GOTO BLK9
	IF~~THEN REPLY @1751 GOTO BLK8
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK8
	SAY @1752
	=@1753
	=@1754
	IF~~THEN REPLY @1755 GOTO BLK9
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK9
	SAY @1756
	IF~~THEN
		DO~SetGlobal("ys_TalkedToCapt","GLOBAL",1)~
	REPLY @1757 EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK20
	SAY @1758
	IF~~THEN REPLY @1759 GOTO BLK21
	IF~~THEN REPLY @1760 GOTO BLK22
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK21
	SAY @1761
	IF~!InParty("Nalia")~THEN REPLY @1762
		DO ~EscapeArea()~
		EXIT
	IF~InParty("Nalia")~THEN EXTERN NALIAJ CH1
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK22
	SAY @1763
	IF~~THEN REPLY @1764 GOTO BLK24
	IF~~THEN REPLY @1765 GOTO BLK23
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK23
	SAY @1766
	IF~~THEN
		DO~EscapeArea()~
		EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCapt","GLOBAL",0)
	Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK24
	SAY @1767
	IF~~THEN
		DO~EscapeArea()~
		EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TalkedToCapt","GLOBAL",0)
//	Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO BLK
//	IF~~THEN REPLY ~~ GOTO BLK
//END

//---------------------------------------------------------
//Interjections
//---------------------------------------------------------
//Nalia
CHAIN NALIAJ CH1
@1768
== yschcapt @1769
== NALIAJ @1770
	DO~EscapeArea()
	SetGlobal("ys_NaliaInterjectCapt","GLOBAL",1)~
EXIT

