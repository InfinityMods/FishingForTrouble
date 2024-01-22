BEGIN ysakil

IF ~Global("ysTalkedToRimon","GLOBAL",2)~ THEN BEGIN 20
	SAY @4868
	IF ~~ THEN REPLY @4869 GOTO 21 // was restricted to Class(Player1,MAGE_ALL), but CHARNAME is resourceful, so this reply should be available even if not a mage
	IF ~!Class(Player1,MAGE_ALL)~ THEN REPLY @4870 GOTO 21
END

//---------------------------------------------------------
IF ~Global("ys_AkilNoLevon","GLOBAL",0)
	AreaCheck("ys0440")~ THEN BEGIN 30
	SAY @4800
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToLeron","GLOBAL",2)
    Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 30
	SAY @4801
	IF ~~ THEN REPLY @4802 GOTO 31
	IF ~~ THEN REPLY @4803 GOTO 31
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 31
	SAY @4804
	IF ~~ THEN REPLY @4805 GOTO 33
	IF ~~ THEN REPLY @4806 GOTO 34
	IF ~~ THEN REPLY @4807 GOTO 32
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 32
	SAY @4808
	IF ~~ THEN
	 DO ~GivePartyGold(5000)
	     AddexperienceParty(20000)
		 SetGlobal("ysTalkedToAkil","GLOBAL",3)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 33
	SAY @4809
	IF ~~ THEN
	 DO ~GivePartyGold(2000)
	     GiveItemCreate("blun12",PLAYER1,1,0,0)
	     AddexperienceParty(12000)
		 SetGlobal("ysTalkedToAkil","GLOBAL",3)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 34
	SAY @4810
	IF ~~ THEN
	 DO ~GivePartyGold(10000)
	     AddexperienceParty(8000)
		 SetGlobal("ysTalkedToAkil","GLOBAL",3)~
  EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAkil","GLOBAL",0)~ THEN BEGIN 0
	SAY @4811
	IF ~~ THEN REPLY @4812 GOTO 1
	IF ~~ THEN REPLY @4813 GOTO 2
	IF ~~ THEN REPLY @4814 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4815
	IF ~Global("ysTalkedToLeron","GLOBAL",1)~ THEN REPLY @4816 GOTO 7
	IF ~~ THEN REPLY @4817 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4818
	IF ~~ THEN REPLY @4812 GOTO 1
	IF ~~ THEN REPLY @4819 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @4820
	IF ~Global("ysTalkedToLeron","GLOBAL",1)~ THEN REPLY @4821 GOTO 7
  IF ~~ THEN REPLY @4822 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @4823
	IF ~~ THEN REPLY @4824 GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @4825
	IF ~Global("ysTalkedToLeron","GLOBAL",1)~ THEN REPLY @4826 GOTO 7
  IF ~~ THEN REPLY @4827 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @4828
	IF ~~ THEN REPLY @4829 GOTO 8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @4830
	IF ~~ THEN REPLY @4831 GOTO 8
	IF ~~ THEN REPLY @4832
	 DO~SetGlobal("ysTalkedToAkil","GLOBAL",100)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @4833
	=@4834
	IF ~~ THEN REPLY @4835
	 DO ~SetGlobal("ysTalkedToAkil","GLOBAL",100)~
	EXIT
	IF ~~ THEN REPLY @4836 GOTO 9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 9
	SAY @4837
	=@4838
	=@4839
	IF ~~ THEN REPLY @4835
	 DO ~SetGlobal("ysTalkedToAkil","GLOBAL",100)~
	EXIT
	IF ~~ THEN REPLY @4840 GOTO 10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @4841
	=@4842
	IF ~~ THEN REPLY @4843
	 DO ~SetGlobal("ysTalkedToAkil","GLOBAL",100)~
	EXIT
	IF ~~ THEN REPLY @4844 GOTO 11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @4845
	=@4846
	=@4847
	IF ~~ THEN REPLY @4843
	 DO ~SetGlobal("ysTalkedToAkil","GLOBAL",100)~
	EXIT
	IF ~~ THEN REPLY @4848 GOTO 12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @4849
	IF ~~ THEN REPLY @4850 GOTO 13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 13
	SAY @4851
	IF ~~ THEN REPLY @4852 GOTO 14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 14
	SAY @4853
	=@4854
	IF ~~ THEN REPLY @4855 GOTO 15
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 15
	SAY @4856
    =@4857
	IF ~~ THEN REPLY @4858 GOTO 16
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 16
	SAY @4859
	=@4860
	IF ~~ THEN REPLY @4861 GOTO 17
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 17
	SAY @4862
	IF ~~ THEN REPLY @4863
	 DO ~SetGlobal("ysTalkedToAkil","GLOBAL",100)~
	EXIT
	IF ~~ THEN REPLY @4864 GOTO 18
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 18
	SAY @4865
	IF ~~ THEN REPLY @4866
	 DO ~SetGlobal("ysTalkedToAkil","GLOBAL",100)~
	EXIT
	IF ~~ THEN REPLY @4867
	 DO ~SetGlobal("ysTalkedToAkil","GLOBAL",1)
		 AddJournalEntry(@158,QUEST)
		 EscapeAreaObject("travys0410")~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 21
	SAY @4871
	IF ~~ THEN REPLY @4872
	 DO ~SetGlobal("ysTalkedToAkil","GLOBAL",2)
		 SetGlobal("ysTalkedToRimon","GLOBAL",3)
		 ActionOverride("ysakil",EscapeAreaObject("travys0413"))~
	EXIT
END
