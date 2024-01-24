BEGIN yselm01

//---------------------------------------------------------
//Charname is a ghoul
//---------------------------------------------------------
IF ~PartyHasItem("ysghoul1")
    Global("ysGhoulChangeBack","GLOBAL",0)~ THEN BEGIN 100
	SAY @4050
	IF~~THEN REPLY @4051 GOTO 101
	IF~~THEN REPLY @4052 GOTO 101
	IF~~THEN REPLY @4053 GOTO 104
END

//---------------------------------------------------------
//Charname is liked
IF ~~ THEN BEGIN 101
	SAY @4054
	IF~~THEN REPLY @4055 GOTO 102
	IF~~THEN REPLY @4056 GOTO 102
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 102
	SAY @4057
	IF~~THEN REPLY @4058 GOTO 103
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 103
	SAY @4059
	IF~HasItem("ysghoul1",PLAYER1)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER1)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER2)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER2)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER3)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER3)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER4)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER4)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER5)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER5)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER6)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER6)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
END

//---------------------------------------------------------
//Charname is not liked
IF ~~ THEN BEGIN 104
	SAY @4060
	IF~~THEN REPLY @4061 GOTO 105
	IF~~THEN REPLY @4062 GOTO 107
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 105
	SAY @4063
	IF~~THEN REPLY @4058 GOTO 106
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 106
	SAY @4064
	IF~HasItem("ysghoul1",PLAYER1)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER1)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER2)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER2)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER3)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER3)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER4)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER4)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER5)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER5)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER6)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER6)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 107
	SAY @4065
	IF~~THEN REPLY @4066 GOTO 108
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 108
	SAY @4067
	IF~~THEN REPLY @4068 GOTO 109
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 109
	SAY @4069
	IF~~THEN REPLY @4070 GOTO 110
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 110
	SAY @4071
	IF~~THEN REPLY @4058 GOTO 111
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 111
	SAY @4072
	IF~HasItem("ysghoul1",PLAYER1)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER1)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER2)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER2)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER3)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER3)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER4)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER4)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER5)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER5)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
	IF~HasItem("ysghoul1",PLAYER6)~THEN
		DO~ReallyForceSpellRES("yselmin",PLAYER6)
		SetGlobal("ysGhoulChangeBack","GLOBAL",1)
		AddexperienceParty(10000)~
	EXIT
END

//---------------------------------------------------------
//Porthpentyrch bollixed
//---------------------------------------------------------
//Protagonist disliked
IF ~Global("ys_TalkedToGarGel","GLOBAL",8)~ THEN BEGIN 20
	SAY @4073
	IF~~THEN REPLY @4074GOTO 21
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 21
	SAY @4075
	IF~~THEN REPLY @4076GOTO 22
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 22
	SAY @4077
	IF~~THEN REPLY @4078GOTO 23
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 23
	SAY @4079
	IF~~THEN SOLVED_JOURNAL @50
		DO
			 ~EscapeArea()
				EraseJournalEntry(@5)
				EraseJournalEntry(@6)
				EraseJournalEntry(@7)
				EraseJournalEntry(@8)
				EraseJournalEntry(@9)
				EraseJournalEntry(@10)
				EraseJournalEntry(@11)
				EraseJournalEntry(@16)
				EraseJournalEntry(@17)
				EraseJournalEntry(@32)
				EraseJournalEntry(@44)
				EraseJournalEntry(@45)
				EraseJournalEntry(@46)
				EraseJournalEntry(@47)
				EraseJournalEntry(@48)
				EraseJournalEntry(@49)
				SetGlobal("ys_TalkedToGarGel","GLOBAL",100)
				ActionOverride("ysltor",EscapeArea())~
		EXIT
END

//---------------------------------------------------------
//Protagonist liked
IF ~Global("ys_TalkedToGarGel","GLOBAL",9)~ THEN BEGIN 30
	SAY @4073
	IF~~THEN REPLY @4080 GOTO 31
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 31
	SAY @4081
	=@4082
	IF~~THEN SOLVED_JOURNAL @51
		DO
			~EscapeArea()
				EraseJournalEntry(@5)
				EraseJournalEntry(@6)
				EraseJournalEntry(@7)
				EraseJournalEntry(@8)
				EraseJournalEntry(@9)
				EraseJournalEntry(@10)
				EraseJournalEntry(@11)
				EraseJournalEntry(@16)
				EraseJournalEntry(@17)
				EraseJournalEntry(@32)
				EraseJournalEntry(@44)
				EraseJournalEntry(@45)
				EraseJournalEntry(@46)
				EraseJournalEntry(@47)
				EraseJournalEntry(@48)
				EraseJournalEntry(@49)
				SetGlobal("ys_TalkedToGarGel","GLOBAL",100)
				ActionOverride("ysltor",EscapeArea())~
		EXIT
END

//---------------------------------------------------------
//Porthpentyrch saved
//---------------------------------------------------------
//Protagonist disliked
IF ~Global("ys_TalkedToGarGel","GLOBAL",10)~ THEN BEGIN 40
	SAY @4073
	IF~~THEN REPLY @4083GOTO 41
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 41
	SAY @4084
	IF~~THEN REPLY @4085GOTO 42
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 42
	SAY @4079
	IF~~THEN SOLVED_JOURNAL @52
		DO~	EscapeArea()
				EraseJournalEntry(@5)
				EraseJournalEntry(@6)
				EraseJournalEntry(@7)
				EraseJournalEntry(@8)
				EraseJournalEntry(@9)
				EraseJournalEntry(@10)
				EraseJournalEntry(@11)
				EraseJournalEntry(@16)
				EraseJournalEntry(@17)
				EraseJournalEntry(@32)
				EraseJournalEntry(@44)
				EraseJournalEntry(@45)
				EraseJournalEntry(@46)
				EraseJournalEntry(@47)
				EraseJournalEntry(@48)
				EraseJournalEntry(@49)
				SetGlobal("ys_TalkedToGarGel","GLOBAL",100)
				AddexperienceParty(20000)
				ActionOverride("ysltor",EscapeArea())~
		EXIT
END

//---------------------------------------------------------
//Protagonist liked
IF ~Global("ys_TalkedToGarGel","GLOBAL",11)~ THEN BEGIN 50
	SAY @4073
	IF~~THEN REPLY @4086GOTO 51
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 51
	SAY @4087
	IF~InParty("Jaheira")
			!StateCheck("Jaheira",STATE_DEAD)~THEN EXTERN JAHEIRAJ ELM0
	IF~InParty("Jaheira")
			StateCheck("Jaheira",STATE_DEAD)~THEN REPLY @4088GOTO 52
	IF~!InParty("Jaheira")~THEN REPLY @4088GOTO 52
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 52
	SAY @4089
	IF~InParty("Jaheira")
			StateCheck("Jaheira",STATE_DEAD)~THEN SOLVED_JOURNAL @53
		DO~	EscapeArea()
				EraseJournalEntry(@5)
				EraseJournalEntry(@6)
				EraseJournalEntry(@7)
				EraseJournalEntry(@8)
				EraseJournalEntry(@9)
				EraseJournalEntry(@10)
				EraseJournalEntry(@11)
				EraseJournalEntry(@16)
				EraseJournalEntry(@17)
				EraseJournalEntry(@32)
				EraseJournalEntry(@44)
				EraseJournalEntry(@45)
				EraseJournalEntry(@46)
				EraseJournalEntry(@47)
				EraseJournalEntry(@48)
				EraseJournalEntry(@49)
				SetGlobal("ys_TalkedToGarGel","GLOBAL",100)
				AddexperienceParty(30000)
				ActionOverride("ysltor",EscapeArea())~
		EXIT

	IF~!InParty("Jaheira")~THEN SOLVED_JOURNAL @53
		DO~	EscapeArea()
				EraseJournalEntry(@5)
				EraseJournalEntry(@6)
				EraseJournalEntry(@7)
				EraseJournalEntry(@8)
				EraseJournalEntry(@9)
				EraseJournalEntry(@10)
				EraseJournalEntry(@11)
				EraseJournalEntry(@16)
				EraseJournalEntry(@17)
				EraseJournalEntry(@32)
				EraseJournalEntry(@44)
				EraseJournalEntry(@45)
				EraseJournalEntry(@46)
				EraseJournalEntry(@47)
				EraseJournalEntry(@48)
				EraseJournalEntry(@49)
				SetGlobal("ys_TalkedToGarGel","GLOBAL",100)
				AddexperienceParty(30000)
				ActionOverride("ysltor",EscapeArea())~
		EXIT

	IF~InParty("Jaheira")
			!StateCheck("Jaheira",STATE_DEAD)~THEN SOLVED_JOURNAL @54
		DO~	EscapeArea()
				EraseJournalEntry(@5)
				EraseJournalEntry(@6)
				EraseJournalEntry(@7)
				EraseJournalEntry(@8)
				EraseJournalEntry(@9)
				EraseJournalEntry(@10)
				EraseJournalEntry(@11)
				EraseJournalEntry(@16)
				EraseJournalEntry(@17)
				EraseJournalEntry(@32)
				EraseJournalEntry(@44)
				EraseJournalEntry(@45)
				EraseJournalEntry(@46)
				EraseJournalEntry(@47)
				EraseJournalEntry(@48)
				EraseJournalEntry(@49)
				SetGlobal("ys_TalkedToGarGel","GLOBAL",100)
				AddexperienceParty(40000)
				ActionOverride("ysltor",EscapeArea())~
		EXIT
END


//---------------------------------------------------------
//Meeting with Elminster after screwing up the vampire quest or the Tiger's Eye quest
//---------------------------------------------------------
IF ~OR(2)
			Global("ys_VampChildIsDead","GLOBAL",3)
			Global("ys_TalkedToGarGel","GLOBAL",4)~ THEN BEGIN 0
	SAY@4090
	IF~Global("ys_VampChildIsDead","GLOBAL",3)~THEN REPLY @4091 GOTO 2
	IF~Global("ys_TalkedToGarGel","GLOBAL",4)~THEN REPLY @4091 GOTO 3
  IF~~THEN REPLY @4092 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY@4093
	IF~~THEN REPLY @4094
		DO~SetGlobal("ys_VampChildIsDead","GLOBAL",4)
			SetGlobal("ys_TalkedToGarGel","GLOBAL",5)
		EscapeArea()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY@4095
	IF~~THEN
		DO~SetGlobal("ys_VampChildIsDead","GLOBAL",4)
		AddexperienceParty(10000)
		EscapeArea()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY@4096
	=@4097
	IF~~THEN
		DO~SetGlobal("ys_TalkedToGarGel","GLOBAL",5)
		AddexperienceParty(2000)
		EscapeArea()~
	EXIT
END

//*********************************************************
//Ceinwen Ravenhair is lost in Spellhold - we are >Chapter4
//*********************************************************
//---------------------------------------------------------
//Meeting with Elminster after talking to the Tanar'ri
//---------------------------------------------------------
IF ~Global("ys_TanarriElminister","GLOBAL",1)~ THEN BEGIN TANBLK0
  SAY@4098
  IF~~ THEN REPLY @4099 GOTO TANBLK2
  IF~~ THEN REPLY @4100 GOTO TANBLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TANBLK1
  SAY@4101
  IF~~ THEN REPLY @4102 GOTO TANBLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TANBLK2
  SAY@4103
  IF~~ THEN REPLY @4104 GOTO TANBLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TANBLK3
  SAY@4105
  IF~~ THEN REPLY @4106 GOTO TANBLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TANBLK4
  SAY@4107
  IF~~ THEN UNSOLVED_JOURNAL @29
	REPLY @4108
  DO ~SetGlobal("ys_TanarriElminister","GLOBAL",2)
      SetGlobal("ys_ElminsterTimer","GLOBAL",21600)
      EscapeArea()~
    EXIT
END

//---------------------------------------------------------
//Elminster has freed Ceinwen
//---------------------------------------------------------
IF ~Global("ys_TanarriElminister","GLOBAL",3)~ THEN BEGIN TANBLK10
  SAY@4109
  IF~~ THEN REPLY @4110 GOTO TANBLK11
  IF~~ THEN REPLY @4111 GOTO TANBLK12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TANBLK11
  SAY@4112
  IF~~ THEN REPLY @4113 GOTO TANBLK12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TANBLK12
  SAY@4114
  IF~~ THEN REPLY @4115 GOTO TANBLK14
  IF~~ THEN REPLY @4116 GOTO TANBLK13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TANBLK13
  SAY@4117
  IF~~ THEN REPLY @4118 GOTO TANBLK14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN TANBLK14
  SAY@4119
  IF~~ THEN UNSOLVED_JOURNAL @30
  DO ~
      EscapeArea()
      SetGlobal("ys_CeinwenRescuedByElminster","GLOBAL",1)~
  EXIT
END

//*********************************************************
//Quest starting dialogs
//*********************************************************
//---------------------------------------------------------
//Holding dialog
//---------------------------------------------------------
IF ~Global("ys_FindElminster","GLOBAL",4)~ THEN BEGIN 1000
	SAY @4120
	IF~~THEN 	REPLY @4121 EXIT
	IF~~THEN 	REPLY @4122 GOTO 1001
END
//---------------------------------------------------------
IF ~~ THEN BEGIN 1001
	SAY @4123
	IF~~THEN 	REPLY @4124 EXIT
	IF~~THEN 	REPLY @4125 EXIT
END
//---------------------------------------------------------
//Government District meeting with Elminster
//---------------------------------------------------------
IF ~Global("ys_FindElminster","GLOBAL",3)~ THEN BEGIN YSGOVTSQ
	SAY @4126
	IF~~THEN 	REPLY @4127 GOTO YSSTOPQUEST
	IF~~THEN 	REPLY @4128 GOTO YSSTARTQUEST
END

//---------------------------------------------------------
//Meeting with Elminster with letter
//---------------------------------------------------------
IF ~Global("ys_FindElminster","GLOBAL",1)~ THEN BEGIN YSHASLETTER
	SAY @4129
	IF~~THEN 	REPLY @4130GOTO YSGIVELETTER
	IF~~THEN 	REPLY @4131GOTO YSKNOWYOU
END

//---------------------------------------------------------
//Initial meeting with Elminster - no letter
//---------------------------------------------------------
IF ~Global("ys_FindElminster","GLOBAL",0)~ THEN BEGIN YSBLOCK0
	SAY @4129
	IF~~THEN REPLY @4132GOTO YSBLOCK2
	IF~~THEN REPLY @4131GOTO YSBLOCK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCK1
	SAY @4133
	IF~~THEN REPLY @4134GOTO YSBLOCK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCK2
	SAY @4135
	IF~~THEN REPLY @4136GOTO YSBLOCK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCK3
	SAY @4137
	IF~~THEN REPLY @4138GOTO YSBLOCK4
	IF~~THEN REPLY @4139GOTO YSBLOCK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCK4
	SAY @4140
	IF~~THEN REPLY @4141GOTO YSBLOCKEXIT1
	IF~~THEN REPLY @4142GOTO YSBLOCKEXIT1
END
//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCKEXIT1
	SAY @4143
	IF~~THEN
	DO~ SetGlobal("ys_FindElminster","GLOBAL",2)	//Do nothing with this
			SetGlobal("ys_NoLetter","GLOBAL",1)
			EscapeArea()~
	EXIT
END

//---------------------------------------------------------
//Party has letter
//---------------------------------------------------------
IF ~~ THEN BEGIN YSKNOWYOU
	SAY @4133
	IF~~THEN REPLY @4134GOTO YSGIVELETTER
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSGIVELETTER
	SAY @4144
	IF~~THEN REPLY @4145GOTO YSBLOCKLETTER
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCKLETTER
	SAY @4146
	IF~~THEN REPLY @4147GOTO YSBLOCKHELP
	IF~~THEN REPLY @4148GOTO YSBLOCKHELP
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCKHELP
	SAY @4149
	IF~~THEN REPLY @4150GOTO YSBLOCKQUEST
	IF~~THEN REPLY @4151GOTO YSBLOCKEXIT3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCKQUEST
	SAY @4152
	IF~~THEN UNSOLVED_JOURNAL @3
    REPLY @4153GOTO YSBLOCKWHERE
	IF~~THEN REPLY @4154GOTO YSBLOCKEXIT3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN YSBLOCKWHERE
	SAY @4155
	IF~~THEN REPLY @4156GOTO YSBLOCKEXIT2
	IF~~THEN REPLY @4157GOTO YSBLOCKEXIT2
END

//---------------------------------------------------------
//Quest accepted
IF ~~ THEN BEGIN YSBLOCKEXIT2
	SAY @4158
	IF~~THEN
	DO~ RevealAreaOnMap("YS1000")
	    SetGlobal("ys_FindElminster","GLOBAL",4)   //Holding point
  		EscapeArea()~
	EXIT
END

//---------------------------------------------------------
//Help NOT given
IF ~~ THEN BEGIN YSBLOCKEXIT3
	SAY @4159
	IF~~THEN
	DO~ SetGlobal("ys_FindElminster","GLOBAL",3)	//This will trigger a new Elminster appearance in the Government District
			EscapeArea()~
	EXIT
END

//----------------------------------------------------------
//Elminster in the Government District - last chance to start quest
//----------------------------------------------------------
//Kill the quest
IF ~~ THEN BEGIN YSSTOPQUEST
	SAY @4160
	IF~~THEN
		DO ~EscapeArea()
				SetGlobal("ys_FindElminster","GLOBAL",5)~
	EXIT
END

//----------------------------------------------------------
//Quest accepted
IF ~~ THEN BEGIN YSSTARTQUEST
	SAY @4161
	IF~~THEN UNSOLVED_JOURNAL @4
  REPLY @4153GOTO YSMARKMAP
END

//----------------------------------------------------------
IF ~~ THEN BEGIN YSMARKMAP
	SAY @4162
	IF~~THEN
	DO~ RevealAreaOnMap("YS1000")
			EscapeArea()~
	EXIT
END

//----------------------------------------------------------
//Interjections
CHAIN JAHEIRAJ ELM0
 @4163
EXTERN yselm01 52
