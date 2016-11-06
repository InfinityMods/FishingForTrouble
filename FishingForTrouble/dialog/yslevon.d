BEGIN yslevon

//---------------------------------------------------------
// Kill Akil accepted
//---------------------------------------------------------
IF ~Global("ysTalkedToLeron","GLOBAL",1) !Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 50
	SAY @4950
	IF~Global("ysAkilIsDead","GLOBAL",1)~THEN REPLY @4951 GOTO 51
	IF~Global("ysAkilIsDead","GLOBAL",1)~THEN REPLY @4952 GOTO 51
	IF~~THEN REPLY @4953 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 51
	SAY @4954
	IF~~THEN
	 DO~GivePartyGold(2000)
	    AddexperienceParty(2000)
	    EraseJournalEntry(@155)
	    AddJournalEntry(@156,QUEST_DONE)
      SetGlobal("ysTalkedToLeron","GLOBAL",100)~
  EXIT
END

//---------------------------------------------------------
// Akil is still alive
//---------------------------------------------------------
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 0
	SAY @4955
	IF~~THEN
      DO~SetGlobal("ys_AkilNoLevon","GLOBAL",1)~ 
	  REPLY @4956 EXTERN YSAKIL LEVON1
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 1
	SAY @4957
	IF~~THEN EXTERN YSAKIL LEVON2
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 2
	SAY @4958
	IF~~THEN REPLY @4959 GOTO 3
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 3
	SAY @4960
	IF~~THEN REPLY @4961 GOTO 4
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 4
	SAY @4962
	IF~Global("ysTalkedToLeron","GLOBAL",1)~THEN REPLY @4963 GOTO 5
	IF~~THEN REPLY @4964 GOTO 5
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 5
	SAY @4965
	IF~~THEN REPLY @4966 GOTO 6
	IF~~THEN REPLY @4967 GOTO 6
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 6
	SAY @4968
	IF~CheckStatLT(LastTalkedToBy(Myself),11,CHR)~THEN REPLY @4969 GOTO 7
	IF~CheckStatGT(LastTalkedToBy(Myself),10,CHR)
       CheckStatLT(LastTalkedToBy(Myself),14,CHR)~THEN REPLY @4969 GOTO 8
	IF~CheckStatGT(LastTalkedToBy(Myself),13,CHR)~THEN REPLY @4969 GOTO 9
END

//---------------------------------------------------------
//Fight
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 7
	SAY @4970
	IF~~THEN
	 DO ~SetGlobal("ysTalkedToLeron","GLOBAL",2)
      EraseJournalEntry(@155)
      EraseJournalEntry(@158)
      EraseJournalEntry(@159)
      AddJournalEntry(@157,QUEST_DONE)
      CreateCreature("yslevong",[513.323],14)
      CreateCreature("yslevong",[820.635],6)
      CreateCreature("yslevong",[554.753],8)
      CreateCreature("yslevong",[300.552],10)
      CreateCreature("yslevong",[336.603],10)
      CreateCreature("yslevong",[253.458],12)
      CreateCreature("yslevong",[445.683],9)
      CreateCreature("yslevong",[690.596],8)
      CreateCreature("yslevong",[409.406],12)~
  EXIT
END

//---------------------------------------------------------
//Shame
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 8
	SAY @4971
	IF~~THEN REPLY@4972 GOTO 9
END

//---------------------------------------------------------
//Restitution
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 9
	SAY @4973
	IF~~THEN REPLY @4974 EXTERN YSAKIL LEVON3
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 10
	SAY @4975
	IF~~THEN REPLY @4976 GOTO 11
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAkil","GLOBAL",2)~ THEN BEGIN 11
	SAY @4977
	IF~~THEN REPLY @4978
	 DO ~SetGlobal("ysTalkedToLeron","GLOBAL",3)
   EraseJournalEntry(@155)
   EraseJournalEntry(@158)
   EraseJournalEntry(@159)
   AddJournalEntry(@157,QUEST_DONE)~
  EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToLeron","GLOBAL",0)~ THEN BEGIN 20
	SAY @4979
	IF~~THEN REPLY @4980 GOTO 21
	IF~~THEN REPLY @4981 GOTO 21
	IF~~THEN REPLY @4982 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 21
	SAY @4983
	IF~InParty("Jaheira")
  !StateCheck("Jaheira",CD_STATE_NOTVALID)~THEN EXTERN BJAHEIR LEVON1
	IF~InParty("Minsc")
  !StateCheck("Minsc",CD_STATE_NOTVALID)~THEN EXTERN BMINSC LEVON1
	IF~InParty("Nalia")
  !StateCheck("Nalia",CD_STATE_NOTVALID)~THEN EXTERN BNALIA LEVON1
	IF~~THEN REPLY @4984 GOTO 30
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 22
	SAY @4985
	IF~~THEN EXTERN BMINSC LEVON2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 23
	SAY @4986
	IF~~THEN REPLY @4984 GOTO 30
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 24
	SAY @4987
	IF~~THEN EXTERN BJAHEIR LEVON2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 25
	SAY @4988
	IF~~THEN REPLY @4984 GOTO 30
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 26
	SAY @4989
	IF~~THEN EXTERN BNALIA LEVON2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 27
	SAY @4990
	IF~~THEN REPLY @4991 GOTO 28
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 28
	SAY @4992
	IF~~THEN REPLY @4993 GOTO 29
	IF~~THEN REPLY @4994 GOTO 29
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 29
	SAY @4995
	IF~~THEN REPLY @4984 GOTO 30
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 30
	SAY @4996
	IF~~THEN REPLY @4997 GOTO 32
	IF~~THEN REPLY @4998 GOTO 31
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 31
	SAY @4999
	IF~~THEN
	 DO~SetGlobal("ysTalkedToLeron","GLOBAL",0)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 32
SAY @5000
	IF~~THEN
	 DO~SetGlobal("ysTalkedToLeron","GLOBAL",4)
	   EscapeAreaObject("travys0441")~
	EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToLeron","GLOBAL",4)~ THEN BEGIN 40
	SAY @5001
	IF~~THEN REPLY @5002 GOTO 41
	IF~~THEN REPLY @5003 GOTO 41
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 41
	SAY @5004
	=@5005
	IF~~THEN REPLY @5006 GOTO 42
	IF~~THEN REPLY @5007 GOTO 42
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 42
	SAY @5008
	IF~~THEN REPLY @5009
	 DO~SetGlobal("ysTalkedToLeron","GLOBAL",1)
	 SetGlobal("ysAssassinCave,","GLOBAL",1)
   AddJournalEntry(@155,QUEST)~
	GOTO 43
	IF~~THEN REPLY @5010
	 DO~SetGlobal("ysTalkedToLeron","GLOBAL",100)~
	GOTO 43
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 43
	SAY @5011
	IF~~THEN
	 DO~EscapeAreaObject("travys0440")~
  EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
CHAIN YSAKIL LEVON1
	@5012
EXTERN YSLEVON 1

CHAIN YSAKIL LEVON2
	@5013
EXTERN YSLEVON 2

CHAIN YSAKIL LEVON3
	@5014
EXTERN YSLEVON 10

CHAIN BMINSC LEVON1
  @5015
EXTERN YSLEVON 22

CHAIN BMINSC LEVON2
  @5016
EXTERN YSLEVON 23

CHAIN BJAHEIR LEVON1
  @5017
EXTERN YSLEVON 24

CHAIN BJAHEIR LEVON2
  @5018
EXTERN YSLEVON 25

CHAIN BNALIA LEVON1
  @5019
EXTERN YSLEVON 26

CHAIN BNALIA LEVON2
  @5020
EXTERN YSLEVON 27
