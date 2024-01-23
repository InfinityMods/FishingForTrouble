BEGIN yshansol

//---------------------------------------------------------
IF ~Global("ys_FindColver","GLOBAL",2)~ THEN BEGIN 0
	SAY @2850
	IF ~~ THEN REPLY @2851 GOTO 1
	IF ~~ THEN REPLY @2852 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @2853
	IF ~~ THEN REPLY @2854 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @2855
	IF ~~ THEN
	  DO ~SetGlobal("ys_FindColver","GLOBAL",4)~
  REPLY @2856 GOTO 11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @2857
	IF ~~ THEN REPLY @2858 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @2859
	IF ~~ THEN REPLY @2860 GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @2861
	IF ~~ THEN REPLY @2862 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @2863
	IF ~~ THEN REPLY @2864 GOTO 7
	IF ~~ THEN REPLY @2865 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @2866
	IF~PartyGoldGT(499)~ THEN REPLY @2867 GOTO 8
	IF~PartyGoldLT(500)~ THEN REPLY @2868 GOTO 80
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 80
	SAY @2869
	IF ~~ THEN
	  DO ~SetGlobal("ys_FindColver","GLOBAL",3)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @2870
	IF ~~ THEN REPLY @2871 GOTO 9
	IF~PartyGoldGT(499)~ THEN REPLY @2872
	  DO ~TakePartyGold(500)
		  SetGlobal("ys_FindColver","GLOBAL",4)~
  GOTO 11
END

//---------------------------------------------------------
IF ~Global("dai_FindEildaren","GLOBAL",2)~ THEN BEGIN 9
	SAY @2873
	IF ~~ THEN
	  DO ~SetGlobal("ys_FindColver","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ys_FindColver","GLOBAL",3)~ THEN BEGIN 10
	SAY @2874
	IF ~~ THEN REPLY @2875 EXIT
	IF~PartyGoldGT(499)~ THEN REPLY @2872
	  DO ~TakePartyGold(500)
		  SetGlobal("ys_FindColver","GLOBAL",4)~
  GOTO 11
	IF ~~ THEN REPLY @2876 GOTO 100
END


//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @2877
	IF ~~ THEN REPLY @2878
	  DO ~SetGlobal("ys_FindColver","GLOBAL",5)~
  EXIT
END


//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("dai_TalkedToCaliden","GLOBAL",0)~ THEN BEGIN 100
    SAY @2879
    IF ~~ THEN REPLY @2880 GOTO 101
    IF ~~ THEN REPLY @2881 GOTO 102
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 101
    SAY @2882
    IF ~~ THEN
      DO ~StartStore("ysslvale",LastTalkedToBy())~
      EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 102
    SAY @2883
    IF ~~ THEN EXIT
END



//---------------------------------------------------------
//IF ~Global("dai_TalkedToCaliden","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
//IF ~Global("dai_FindEildaren","GLOBAL",1)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//END
