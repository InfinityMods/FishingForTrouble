BEGIN yschbnd

IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1800
	IF~~THEN REPLY @1801 GOTO BLK1
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK1
	SAY @1802
	IF~~THEN REPLY @1803 GOTO BLK2
	IF~~THEN REPLY @1804 GOTO BLK4
	IF~~THEN REPLY @1805 GOTO BLK6
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK2
	SAY @1806
	IF~~THEN REPLY @1807 GOTO BLK30
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK4
	SAY @1808
	IF~~THEN REPLY @1809 GOTO BLK5
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK5
	SAY @1810
	IF~~THEN REPLY @1807 GOTO BLK30
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK6
	SAY @1811
	IF~~THEN REPLY @1812 GOTO BLK7
	IF~~THEN REPLY @1813 GOTO BLK9
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK9
	SAY @1814
	IF~~THEN REPLY @1815 GOTO BLK10
	IF~~THEN REPLY @1812 GOTO BLK7
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK7
	SAY @1816
	IF~Gender(Protagonist,FEMALE)~THEN REPLY @1817 GOTO BLK8
	IF~Gender(Protagonist,MALE)~THEN REPLY @1817 GOTO BLK18
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK8
	SAY @1818
	IF~~THEN REPLY @1819 GOTO BLK30
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK18
	SAY @1820
	IF~~THEN REPLY @1821 GOTO BLK30
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK10
	SAY @1822
	IF~~THEN REPLY @1823 GOTO BLK30
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK30
	SAY @1824
	IF~~THEN REPLY @1825GOTO BLK32
	IF~~THEN REPLY @1826 GOTO BLK31
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK31
	SAY @1827
	IF~~THEN REPLY @1828
	DO~TakePartyGold(117)
		EscapeArea()~
		EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK32
	SAY @1829
	IF~~THEN
	DO ~SetGlobal("ys_TalkedToBandit","GLOBAL",1)
		CreateCreature("reband01",[261.1350],8)
		CreateCreature("reband01",[249.1362],9)
		CreateCreature("reband01",[235.1400],9)
		CreateCreature("reband01",[268.1375],8)
		CreateCreature("reband01",[281.1411],7)
		CreateCreature("reband01",[321.1355],7)
		CreateCreature("reband01",[255.1393],8)
		CreateCreature("reband01",[340.1405],8)
		CreateCreature("reband01",[310.1380],8)
		CreateCreature("remage01",[250.1398],8)~
		EXIT
END


//---------------------------------------------------------
//IF ~Global("ys_TalkedToBandit","GLOBAL",0)~ THEN BEGIN BLK
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO BLK
//	IF~~THEN REPLY ~~ GOTO BLK
//END

