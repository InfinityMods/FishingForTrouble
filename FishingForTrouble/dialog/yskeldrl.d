BEGIN yskeldrl

//---------------------------------------------------------
IF ~Global("ysYalkedToBran","GLOBAL",4)
		Global("ysBranIllusion","GLOBAL",1)
		Global("dai_TalkedToKeldrel","LOCALS",2)~ THEN BEGIN 3000
  	SAY @4650
		IF~~THEN REPLY @4651 GOTO 3001
		IF~~THEN REPLY @4652 GOTO 1
  	IF~~THEN REPLY @4653 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3001
		SAY @4654
		IF~~THEN REPLY @4655 GOTO 3002
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3002
		SAY @4656
	=@4657
		IF~~THEN REPLY @4658 GOTO 3003
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3003
		SAY @4659
		IF~~THEN REPLY @4660 GOTO 3004
		IF~~THEN REPLY @4661 GOTO 3004
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3004
		SAY @4662
    IF~~THEN
    	DO~SetGlobal("ysYalkedToBran","GLOBAL",5)~
		REPLY @4652GOTO 1
    IF~~THEN
		  DO~SetGlobal("ysYalkedToBran","GLOBAL",5)~
		REPLY @4653 GOTO 2
END

//-------------------------------------------------------------
//-------------------------------------------------------------
IF ~Global("dai_TalkedToKeldrel","LOCALS",2)
		Global("ysYalkedToBran","GLOBAL",4)~ THEN BEGIN 2000
    SAY @4650
		IF~~THEN REPLY @4663 GOTO 2001
		IF~~THEN REPLY @4652 GOTO 1
    IF~~THEN REPLY @4653 GOTO 2
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 2001
    SAY @4664
    IF~~THEN REPLY @4665 GOTO 2002
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 2002
    SAY @4666
    IF~~THEN REPLY @4667 GOTO 2003
    IF~~THEN REPLY @4668 GOTO 2004
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 2003
    SAY @4669
    IF~~THEN
    	DO~SetGlobal("ysYalkedToBran","GLOBAL",5)~
		REPLY @4652GOTO 1
    IF~~THEN
		  DO~SetGlobal("ysYalkedToBran","GLOBAL",5)~
		REPLY @4653 GOTO 2
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 2004
    SAY @4670
    IF~~THEN
    	DO~SetGlobal("ysYalkedToBran","GLOBAL",5)~
		REPLY @4652GOTO 1
    IF~~THEN
		  DO~SetGlobal("ysYalkedToBran","GLOBAL",5)~
		REPLY @4653 GOTO 2
END


//-------------------------------------------------------------
//-------------------------------------------------------------
IF ~Global("dai_TalkedToKeldrel","LOCALS",2)~ THEN BEGIN 1000
    SAY @4650
    IF~~THEN REPLY @4652 GOTO 1
    IF~~THEN REPLY @4653 GOTO 2
END

//-------------------------------------------------------------
//-------------------------------------------------------------
IF ~Global("ys_GnomeDragon","GLOBAL",2)~ THEN BEGIN 300
		SAY @4671
   IF~~THEN REPLY @4672 GOTO 301
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 301
		SAY @4673
   IF~~THEN REPLY @4674 GOTO 302
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 302
		SAY @4675
		=@4676
   IF~~THEN REPLY @4677
   	DO~SetGlobal("ys_TalkedToDrosig","GLOBAL",3)
		SetGlobal("dai_TalkedToKeldrel","LOCALS",2)
    SetGlobal("ys_GnomeDragon","GLOBAL",4)
    EraseJournalEntry(@167)
   	AddexperienceParty(2000)~
	 GOTO 0
END

//-------------------------------------------------------------
//-------------------------------------------------------------
IF ~Global("ys_GnomeDragon","GLOBAL",3)~ THEN BEGIN 200
		SAY @4671
   IF~~THEN REPLY @4678 GOTO 201
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 201
		SAY @4679
   IF~~THEN REPLY @4680
   	DO~SetGlobal("dai_TalkedToKeldrel","LOCALS",2)
      EraseJournalEntry(@167)
      SetGlobal("ys_GnomeDragon","GLOBAL",4)~
	 GOTO 0
END

//-------------------------------------------------------------
//-------------------------------------------------------------
IF ~Global("dai_TalkedToKeldrel","LOCALS",0)~ THEN BEGIN 100
		SAY @4681
    IF~~THEN 
      DO~SetGlobal("dai_TalkedToKeldrel","LOCALS",1)~
    REPLY @4682 GOTO 0
    IF~Global("ys_GnomeDragon","GLOBAL",0)~THEN REPLY @4683 GOTO 101
    IF~~THEN REPLY @4653 GOTO 2
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 101
		SAY @4684
   IF~~THEN REPLY @4685 GOTO 114
	 IF~~THEN REPLY	@4686 GOTO 103
   IF~~THEN REPLY @4687GOTO 102
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 102
    SAY @4688
    IF~~THEN REPLY @4689
    DO~SetGlobal("ys_GnomeDragon","GLOBAL",100)
       SetGlobal("dai_TalkedToKeldrel","LOCALS",1)~
    GOTO 0
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 103
   SAY @4690
   IF~~THEN REPLY @4691 GOTO 104
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 104
		SAY @4692
   IF~~THEN REPLY @4693 GOTO 105
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 105
		SAY @4694
   IF~~THEN REPLY @4695 GOTO 106
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 106
		SAY @4696
   IF~~THEN REPLY @4697 GOTO 107
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 107
		SAY @4698
		IF~InParty("Jan")~THEN EXTERN BJAN KELBLK1
		IF~!InParty("Jan")~THEN REPLY @4699 GOTO 110
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 109
		SAY @4700
		IF~~THEN EXTERN BJAN KELBLK2
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 110
		SAY @4701
   IF~~THEN REPLY @4702 GOTO 111
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 111
		SAY @4703
   IF~~THEN REPLY @4704 GOTO 112
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 112
		SAY @4705
   IF~~THEN REPLY @4706 GOTO 113
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 113
		SAY @4707
   IF~~THEN REPLY @4708 GOTO 114
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 114
		SAY @4709
   IF~~THEN REPLY @4710 GOTO 115
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 115
		SAY @4711
   IF~~THEN UNSOLVED_JOURNAL @167
   REPLY @4712 GOTO 117
   IF~~THEN UNSOLVED_JOURNAL @167
   REPLY @4713 GOTO 116
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 116
		SAY @4714
   IF~~THEN
   	DO ~SetGlobal("dai_TalkedToKeldrel","LOCALS",1)~
		REPLY @4715 GOTO 0
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 117
		SAY @4716
   IF~~THEN REPLY @4717
	 DO ~SetGlobal("ys_GnomeDragon","GLOBAL",1)~
	 GOTO 0
END

//-------------------------------------------------------------
IF ~OR(2)
			Global("dai_TalkedToKeldrel","LOCALS",0)
			GlobalGT("dai_TalkedToKeldrel","LOCALS",0)~ THEN BEGIN 0
    SAY @4650
    IF~~THEN REPLY @4652 GOTO 1
    IF~~THEN REPLY @4653 GOTO 2
END

//-------------------------------------------------------------
IF ~~THEN BEGIN 1
    SAY @4718
    IF~~THEN
      DO ~StartStore("yskeldrl",LastTalkedToBy())~
      EXIT
END

//-------------------------------------------------------------
IF ~~ THEN BEGIN 2
    SAY @4719
    IF~~THEN EXIT
END

//-------------------------------------------------------------
CHAIN BJAN KELBLK1
 @4720
EXTERN yskeldrl 109

//-------------------------------------------------------------
CHAIN BJAN KELBLK2
 @4721
EXTERN yskeldrl 110

//-------------------------------------------------------------
//IF ~Global("dai_TalkedToKeldrel","LOCALS",0)~ THEN BEGIN
//		SAY ~~
//   IF~~THEN REPLY ~~ GOTO
//END
