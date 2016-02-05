BEGIN ystanarr

// Journal entries
/*
@7 = ~Fishing for Trouble

We found a Tanar'ri trapped on the top floor of the lighthouse at Porthpentyrch. It seems that a Red Wizard, Olren of Thay, made a mess of the incantation and now the Tanar'ri needs our help to get back to his own plane. He's a bad-tempered bastard - he fireballed me and I want revenge for that. He made some mention of the 'Traps of the Living' - I don't much like the sound of that.~
@8 = ~Fishing for Trouble

We found a Tanar'ri trapped on the top floor of the lighthouse at Porthpentyrch. It seems that a Red Wizard, Olren of Thay, made a mess of the incantation and now the Tanar'ri needs our help to get back to his own plane. He's a bad-tempered bastard and I don't think I want to cross him in a hurry. He made some mention of the 'Traps of the Living' - I don't much like the sound of that.~
@9 = ~Fishing for Trouble

We found a Tanar'ri trapped on the top floor of the lighthouse at Porthpentyrch. It seems that a Red Wizard, Olren of Thay, made a mess of the incantation and now the Tanar'ri needs our help to get back to his own plane. He has promised me help if we succeed. He made some mention of the 'Traps of the Living' - I don't much like the sound of that.~
@10 = ~Fishing for Trouble

We found a Tanar'ri trapped on the top floor of the lighthouse at Porthpentyrch. It seems that a Red Wizard, Olren of Thay, made a mess of the incantation and now the Tanar'ri needs our help to get back to his own plane. He has promised me a reward for helping him. He made some mention of the 'Traps of the Living' - I don't much like the sound of that.~
@11 = ~Fishing for Trouble

The Tanar'ri laughed at us for failing to pass the Traps of the Living, then told us to talk to someone called Ceinwen Ravenhair who, it appears, lives somewhere in the Government district of Athkatla.~
*/
//---------------------------------------------------------
//Trapped Tan'ari on the top floor of the lighthouse - no PC
//---------------------------------------------------------
IF
  ~OR(5)
    IsGabber(Player2)
    IsGabber(Player3)
    IsGabber(Player4)
    IsGabber(Player5)
    IsGabber(Player6)~ THEN BEGIN GETPC
	SAY @700
	IF~~THEN REPLY @701
    EXIT
END

//---------------------------------------------------------
//Trapped Tan'ari on the top floor of the lighthouse
//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",0)
    Global("ys_RudeToTanari","GLOBAL",0)~ THEN BEGIN LHTBLOCK0
	SAY @702
	IF~~THEN REPLY @703GOTO LHTBLOCK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK1
	SAY @704
	IF~~THEN REPLY @705GOTO LHTBLOCK2
	IF~~THEN REPLY @706GOTO LHTBLOCK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK2
	SAY @707
	IF~~THEN REPLY @708GOTO LHTBLOCK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK3
	SAY @709
	IF~~THEN REPLY @710GOTO LHTBLOCK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK4
	SAY @711
	IF~~THEN REPLY @712GOTO LHTBLOCK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK5
	SAY @713
	IF~~THEN
    DO~SetGlobal("ys_RudeToTanari","GLOBAL",1)~
    REPLY @714
    EXIT
	IF~~THEN
    DO ~SetGlobal("dai_TanEntry","LOCALS",2)
    SetGlobal("ys_RudeToTanari","GLOBAL",2)~
    REPLY @715EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK6
	SAY @716
	IF~~THEN REPLY @717GOTO LHTBLOCK30
	IF~~THEN REPLY @718GOTO LHTBLOCK40
END

//---------------------------------------------------------
//Fireballed
//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",0)
    Global("ys_RudeToTanari","GLOBAL",3)~ THEN BEGIN LHTBLOCK10
	SAY @719
  IF~~THEN
    REPLY @720GOTO LHTBLOCK12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK12
	SAY @721
	IF~~THEN REPLY @722GOTO LHTBLOCK13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK13
	SAY @723
  IF~~THEN
    DO  ~SetGlobal("dai_TanEntry","LOCALS",1)~
    REPLY @724GOTO LHTBLOCK50
END

//---------------------------------------------------------
//Evil path two - avoids fireball but gets Arrowed
//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",0)
    Global("ys_RudeToTanari","GLOBAL",4)~ THEN BEGIN LHTBLOCK20
	  SAY @725
  	IF~~THEN REPLY@726
  	GOTO LHTBLOCK22
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK22
	SAY @727
	IF~~THEN REPLY @728GOTO LHTBLOCK50
END

//---------------------------------------------------------
//Good path
//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",0)~ THEN BEGIN LHTBLOCK30
    SAY @729
    IF~~THEN
    DO  ~SetGlobal("dai_TanEntry","LOCALS",3)~
        REPLY @730GOTO LHTBLOCK50
END

//---------------------------------------------------------
//Neutral path
//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK40
	SAY @731
	IF~~THEN
    DO ~SetGlobal("dai_TanEntry","LOCALS",4)~
    REPLY @732GOTO LHTBLOCK50
END

//---------------------------------------------------------
//Rejoin paths; check for Traps already found
//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK50
	SAY @733
	IF~Global("dai_FoundTraps","GLOBAL",0)~THEN
    REPLY @734GOTO LHTBLOCK51

	IF~Global("dai_FoundTraps","GLOBAL",1)~THEN
    REPLY @734
    DO ~SetGlobal("dai_TalkedToTanaari","GLOBAL",2)~
    GOTO BLK100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK51
	SAY @735
  IF ~Global("dai_TanEntry","LOCALS",1)~ THEN
      DO ~SetGlobal("dai_TalkedToTanaari","GLOBAL",1)
		    AddJournalEntry(@7,QUEST)~
        REPLY @736
      EXIT

  IF ~Global("dai_TanEntry","LOCALS",2)~ THEN
      DO ~SetGlobal("dai_TalkedToTanaari","GLOBAL",1)
		    AddJournalEntry(@8,QUEST)~
        REPLY @736
      EXIT

  IF ~Global("dai_TanEntry","LOCALS",3)~ THEN
      DO ~SetGlobal("dai_TalkedToTanaari","GLOBAL",1)
		    AddJournalEntry(@9,QUEST)~
        REPLY @737
      EXIT

  IF ~Global("dai_TanEntry","LOCALS",4)~ THEN
      DO ~SetGlobal("dai_TalkedToTanaari","GLOBAL",1)
		    AddJournalEntry(@10,QUEST)~
        REPLY @736
      EXIT
END

//---------------------------------------------------------
//Party has found Traps of the Living after talking to the Tanar'ri
//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",2)
    Global("dai_FoundTraps","GLOBAL",0)~ THEN BEGIN LHTBLOCK200
	SAY @738
	IF~~THEN REPLY @739 GOTO LHTBLOCK201
	IF~~THEN REPLY @740 GOTO LHTBLOCK202
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK201
	SAY @741
	IF~~THEN REPLY @742 GOTO LHTBLOCK203
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK202
	SAY @743
	IF~~THEN REPLY @744 GOTO LHTBLOCK203
END

//---------------------------------------------------------
//Party has found Traps of the Living before talking to the Tanar'ri
//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",2)
    Global("dai_FoundTraps","GLOBAL",1)~ THEN BEGIN BLK100
	SAY @735
  IF~~THEN REPLY @745 GOTO BLK101
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK101
	SAY @746
  IF~~THEN
    REPLY @747 GOTO LHTBLOCK203
END

//---------------------------------------------------------
//Traps of the Living rejoin path
//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",2)~ THEN BEGIN LHTBLOCK203
	SAY @748
	IF~~THEN REPLY @749 GOTO LHTBLOCK204
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK204
	SAY @750
	IF~~THEN REPLY @751 GOTO LHTBLOCK205
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK205
	SAY @752
	IF~~THEN REPLY @753 GOTO LHTBLOCK206
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK206
	SAY @754
  IF ~~ THEN
  DO ~SetGlobal("dai_TalkedToTanaari","GLOBAL",1)
      SetGlobal("dai_CeinwenSpawn","GLOBAL",1)
      SetGlobal("dai_TalkedToTanaari","GLOBAL",1)
		AddJournalEntry(@11,QUEST)~
    EXIT
END

//---------------------------------------------------------
//Retrieved the key - set the global trigger by area script in the tomb (PartyHasItem)
//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",3)
		PartyHasItem("ysghoul1")~ THEN BEGIN 1000
	SAY @755
  IF~~THEN REPLY @756GOTO LHTBLOCK300
  IF~~THEN REPLY @757GOTO 1001
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1001
	SAY @758
  IF~~THEN REPLY @759GOTO LHTBLOCK300
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",3)~ THEN BEGIN LHTBLOCK300
	SAY @760
  IF~~THEN REPLY @761GOTO LHTBLOCK301
  IF~~THEN REPLY @762GOTO LHTBLOCK302
  IF~~THEN REPLY @763GOTO LHTBLOCK303
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK301
	SAY @764
  IF~~THEN
    DO ~TakePartyItem("ystankey")~
    REPLY @765GOTO LHTBLOCK304
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK302
	SAY @766
  IF~~THEN
    REPLY @767GOTO LHTBLOCK305
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK303
	SAY @768
  IF~NumInPartyGT(2)~THEN
    REPLY @769GOTO LHTBLOCK306

  IF~NumInParty(2)~THEN
    REPLY @769GOTO LHTBLOCK307

  IF~NumInParty(1)~THEN
    REPLY @769GOTO LHTBLOCK308
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK304
	SAY @770
  IF~~THEN
    DO ~SetGlobal("dai_HonourSpeech","LOCALS",1)~
    REPLY @771GOTO LHTBLOCK400
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK305
	SAY @772
  IF~~THEN
    DO ~TakePartyItem("ystankey")~
    REPLY @771GOTO LHTBLOCK400
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK306
    SAY @773
    IF~~THEN
      DO ~TakePartyItem("ystankey")~
      REPLY @774GOTO LHTBLOCK309
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK307
    SAY @775
    IF~~THEN
      DO ~TakePartyItem("ystankey")~
      REPLY @776GOTO LHTBLOCK309
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK308
    SAY @777
    IF~~THEN
      DO ~TakePartyItem("ystankey")~
      REPLY @778GOTO LHTBLOCK309
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK309
	SAY @779
  IF~~THEN
    REPLY @780GOTO LHTBLOCK400
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK400
	SAY @781
  IF~~THEN
		REPLY @782 GOTO LHTBLOCK401
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK401
	SAY @783
  IF~InParty("Edwin")~THEN
    REPLY @784 EXTERN EDWINJ CHOLD2

  IF~!InParty("Edwin")~THEN
    REPLY @784 GOTO LHTBLOCK402
END


//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK4022
	SAY @785
  IF~~THEN REPLY @786 GOTO LHTBLOCK402
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK402
	SAY @787
  IF~!InParty("Edwin")~THEN REPLY @788 GOTO LHTBLOCK403
  IF~InParty("Edwin")~THEN EXTERN EDWINJ LHBLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK4021
	SAY @789
  IF~~THEN REPLY @790 GOTO LHTBLOCK403
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK403
	SAY @791
  IF~~THEN REPLY @792 GOTO LHTBLOCK404
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK404
	SAY @793
  IF~~THEN
    REPLY @794 GOTO LHTBLOCK405
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK405
	SAY @795
  IF~~THEN
    REPLY @796 GOTO LHTBLOCK406
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK406
 	SAY @797
  IF~~THEN
    REPLY @798 GOTO LHTBLOCK407
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHTBLOCK407
 	SAY @799
  IF~NumInPartyLT(2)~THEN
    REPLY @800GOTO LHTBLOCK408

  IF~NumInPartyGT(1)~THEN
      DO ~SetGlobal("dai_TalkedToTanaari","GLOBAL",5)
        RevealAreaOnMap("ys0360")
    	  AddJournalEntry(@32,QUEST)~
    REPLY @801GOTO LHTBLOCK409
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",3)~ THEN BEGIN LHTBLOCK408
 	SAY @802
  IF~~THEN
    DO  ~SetGlobal("dai_TalkedToTanaari","GLOBAL",5)
        RevealAreaOnMap("ys0360")
    	  AddJournalEntry(@32,QUEST)~
    REPLY @803
      EXIT
END

//---------------------------------------------------------
//Select NPC(s) to interject
IF ~~ THEN BEGIN LHTBLOCK409
 	SAY @804

  IF~InParty("Yoshimo")~THEN EXTERN BYOSHIM CHOLD
  IF~InParty("Viconia")~THEN EXTERN BVICON CHOLD
  IF~InParty("Anomen")~THEN EXTERN BANOMEN CHOLD
  IF~InParty("Aerie")~THEN EXTERN BAERIE CHOLD
  IF~InParty("HaerDalis")~THEN EXTERN BHAERDA CHOLD
  IF~InParty("Korgan")~THEN EXTERN BKORGAN CHOLD
  IF~InParty("Keldorn")~THEN EXTERN BKELDOR CHOLD
  IF~InParty("Valygar")~THEN EXTERN BVALYGA CHOLD
  IF~InParty("Cernd")~THEN EXTERN BCERND CHOLD
  IF~InParty("Mazzy")~THEN EXTERN BMAZZY CHOLD
  IF~InParty("Jaheira")~THEN EXTERN JAHEIRAJ CHOLD
  IF~InParty("Edwin")~THEN EXTERN BEDWIN CHOLD
  IF~InParty("Jan")~THEN EXTERN BJAN CHOLD1
  IF~InParty("Nalia")~THEN EXTERN NALIAJ CHOLD
  IF~InParty("Jan")
		 InParty("Edwin")~THEN EXTERN BJAN CHOLD
  IF~InParty("Anomen")
		 InParty("Nalia")~THEN EXTERN BANOMEN CHOLD1
  IF~InParty("Yoshimo")
		 InParty("Jaheira")~THEN EXTERN BYOSHIM CHOLD1
  IF~InParty("Keldorn")
		 InParty("Nalia")~THEN EXTERN BKELDOR CHOLD1
  IF~!InParty("Yoshimo")
      !InParty("Viconia")
      !InParty("Anomen")
      !InParty("Aerie")
      !InParty("HaerDalis")
      !InParty("Korgan")
      !InParty("Keldorn")
      !InParty("Valygar")
      !InParty("Cernd")
      !InParty("Mazzy")
      !InParty("Jaheira")
      !InParty("Edwin")
      !InParty("Jan")
      !InParty("Nalia")~THEN EXIT
END

//---------------------------------------------------------
//Ceinwen has been sent to Spellhold after chapter 3
//---------------------------------------------------------
IF ~Global("dai_TalkedToTanaari","GLOBAL",4)~ THEN BEGIN BLK1
	SAY @805
  IF~~THEN REPLY @806 GOTO BLK20
  IF~~THEN REPLY @807 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK20
	SAY @808
  IF~~THEN REPLY @809 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @810
  IF~~THEN REPLY @811 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @812
  IF~~THEN REPLY @813 GOTO BLK4
  IF~~THEN REPLY @814 GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @815
  IF~~THEN REPLY @816 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @817
  IF~~THEN GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @818
  IF~~THEN REPLY @819 GOTO BLK7
END

//---------------------------------------------------------
//("dai_TalkedToTanaari","GLOBAL",5) is a holding value to prevent talking to the Tanar'ri again
IF ~~ THEN BEGIN BLK7
	SAY @820
  IF~~THEN
    DO
      ~SetGlobal("dai_TalkedToTanaari","GLOBAL",5)
       SetGlobal("ys_TanarriElminister","GLOBAL",1)
		  AddJournalEntry(@16,QUEST)~
    EXIT
END

//---------------------------------------------------------
//Nothing to say
//---------------------------------------------------------
IF ~GlobalGT("dai_TalkedToTanaari","GLOBAL",0)~ THEN BEGIN LHTBLOCK100
	SAY @821
	IF~~THEN
    REPLY @822
    EXIT
END

//---------------------------------------------------------
//Interjections from Edwin
//---------------------------------------------------------
CHAIN EDWINJ LHBLK1
  @823
EXTERN ystanarr LHTBLOCK4021

CHAIN EDWINJ CHOLD2
  @824
EXTERN ystanarr LHTBLOCK4022

//*******************************************
//Interjection: Where is Cerendor?
//*******************************************
//Jan with Edwin
CHAIN BJAN CHOLD
	@825
==EDWINJ @826
==BJAN @827
==EDWINJ @828
==BJAN @829
==EDWINJ @830
==BJAN @831
EXIT

//HaerDalis
CHAIN BHAERDA CHOLD
 @832
EXIT

//Jaheira
CHAIN JAHEIRAJ CHOLD
	@833
EXIT

//Viconia
CHAIN BVICON CHOLD
	@834
EXIT

//Anomen
CHAIN BANOMEN CHOLD
	@835
EXIT

//Anomen and Nalia
CHAIN BANOMEN CHOLD1
	@835
	==NALIAJ @836
EXIT

//Minsc
CHAIN BMINSC CHOLD
	@837
EXIT

//Yoshimo
CHAIN BYOSHIM CHOLD
	@838
EXIT

//Yoshimo and Jaheira
CHAIN BYOSHIM CHOLD1
	@838
	== JAHEIRAJ @839
EXIT

//Keldorn
CHAIN BKELDOR CHOLD
	@840
EXIT

CHAIN BKELDOR CHOLD1
	@840
	==NALIAJ @841
	==BKELDOR @842
EXIT

//Valygar
CHAIN BVALYGA CHOLD
	@843
EXIT

//Mazzy
CHAIN BMAZZY CHOLD
	@844
EXIT

//Cernd
CHAIN BCERND CHOLD
	@845
EXIT

//Nalia
CHAIN NALIAJ CHOLD
	@846
EXIT

//Jan, no Edwin
CHAIN BJAN CHOLD1
	@847
EXIT

//Edwin
CHAIN BEDWIN CHOLD
	@848
EXIT

//Aerie
CHAIN BAERIE CHOLD
	@849
EXIT

//Korgan
CHAIN BKORGAN CHOLD
	@850
EXIT
