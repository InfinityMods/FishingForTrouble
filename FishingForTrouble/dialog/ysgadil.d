BEGIN ysgadil

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToAdara","GLOBAL",1)
    Global("ysTalkedToAiesha","GLOBAL",3)~ THEN BEGIN newrobe1
	SAY @3800
	IF~~THEN REPLY @3801 GOTO newrobe2
	IF~~THEN REPLY @3802 EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAdara","GLOBAL",1)
    Global("ysTalkedToAiesha","GLOBAL",3)~ THEN BEGIN newrobe2
  SAY @3803
	IF~~THEN
	 DO ~SetGlobal("ysTalkedToAdara","GLOBAL",2)~
  REPLY @3804 EXIT
	IF~~THEN
	 DO ~SetGlobal("ysTalkedToAdara","GLOBAL",2)~
  REPLY @3805 EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",1)~ THEN BEGIN 100
	SAY @3807
	IF~~THEN
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",0)~
	REPLY @3808 GOTO 5
	IF~~THEN REPLY @3810
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",0)~
	GOTO 4
	IF~~THEN REPLY @3811EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",2)
		GlobalGT("ysTalkedToAiesha","GLOBAL",1)~ THEN BEGIN 101
	SAY @3807
	IF~~THEN
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",0)~
	REPLY @3808 GOTO 5
	IF~~THEN REPLY @3810
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",0)~
	GOTO 4
	IF~~THEN REPLY @3811EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 0
	SAY @3812
	IF~~THEN REPLY @3813 GOTO 2
	IF~~THEN REPLY @3814 GOTO 1
	IF~~THEN REPLY @3815 GOTO 8
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 1
	SAY @3816
	IF~~THEN REPLY @3813 GOTO 2
	IF~~THEN REPLY @3817 GOTO 8
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 2
	SAY @3818
	IF~~THEN REPLY @3819 GOTO 3
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 3
	SAY @3820
	IF~~THEN REPLY @3808 GOTO 5
	IF~Global("ysTalkedToAiesha","GLOBAL",1)~THEN REPLY @3809 GOTO 7
	IF~~THEN REPLY @3810 GOTO 4
	IF~~THEN REPLY @3811
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 4
	SAY @3821
	IF~~THEN REPLY @3808 GOTO 5
	IF~Global("ysTalkedToAiesha","GLOBAL",1)~THEN REPLY @3809 GOTO 7
	IF~~THEN REPLY @3811
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 5
	SAY @3822
	IF~Global("ysTalkedToAiesha","GLOBAL",1)~THEN REPLY @3809 GOTO 7
	IF~~THEN REPLY @3810 GOTO 6
	IF~~THEN REPLY @3811
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 6
	SAY @3823
	IF~Global("ysTalkedToAiesha","GLOBAL",1)~THEN REPLY @3809 GOTO 7
	IF~~THEN REPLY @3811
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 7
	SAY @3824
	IF~~THEN
	 DO~GiveItemCreate("yscpem",PLAYER1,1,1,0)
	 SetGlobal("ysTalkedToGadil","GLOBAL",2)~
  REPLY @3804 EXIT
END


//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 8
	SAY @3825
	IF~~THEN REPLY @3826 GOTO 9
	IF~Global("ysTalkedToAiesha","GLOBAL",1)~THEN REPLY @3809 GOTO 12
	IF~~THEN REPLY @3810 GOTO 10
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 9
	SAY @3827
	IF~~THEN REPLY @3810 GOTO 10
	IF~Global("ysTalkedToAiesha","GLOBAL",1)~THEN REPLY @3809 GOTO 12
	IF~~THEN REPLY @3828
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 10
	SAY @3829
	IF~Global("ysTalkedToAiesha","GLOBAL",1)~THEN REPLY @3809 GOTO 12
	IF~~THEN REPLY @3826 GOTO 11
	IF~~THEN REPLY @3828
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 11
	SAY @3827
	IF~~THEN REPLY @3802
		DO~SetGlobal("ysTalkedToGadil","GLOBAL",1)~
	EXIT
	IF~Global("ysTalkedToAiesha","GLOBAL",1)~THEN REPLY @3809 GOTO 12
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 12
	SAY @3830
	IF~~THEN REPLY @3831 GOTO 13
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 13
	SAY @3832
	IF~~THEN REPLY @3833 GOTO 14
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 14
	SAY @3834
	IF~~THEN REPLY @3835 GOTO 15
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 15
	SAY @3836
	IF~~THEN REPLY @3837 GOTO 16
	IF~~THEN REPLY @3838
    DO~SetGlobal("ysTalkedToGadil","GLOBAL",2)~
  EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN 16
	SAY @3839
	IF~~THEN
	 DO~GiveItemCreate("yscpem",PLAYER1,1,1,0)
	 TakePartyGold(50)
	 SetGlobal("ysTalkedToGadil","GLOBAL",1)~
  REPLY @3840 EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToGadil","GLOBAL",2)~ THEN BEGIN 17
	SAY @3841
	IF~~THEN
	 DO~GiveItemCreate("yscpem",PLAYER1,1,1,0)
	 TakePartyGold(50)
	 SetGlobal("ysTalkedToGadil","GLOBAL",1)~
  REPLY @3842 EXIT
	IF~~THEN REPLY @3838 EXIT
END

//---------------------------------------------------------
//IF ~Global("ysTalkedToGadil","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END
