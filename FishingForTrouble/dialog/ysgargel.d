BEGIN ysgargel

//---------------------------------------------------------
//Player needs to talk to Angharad next
//---------------------------------------------------------
IF ~Global("ys_TalkedToGarGel","GLOBAL",1)
    Global("ys_TalkedToAngharad","GLOBAL",0)~ THEN BEGIN HANS_ASKED_FOR_THIS
	SAY @3500
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
//Impatient player
//---------------------------------------------------------
IF ~!GlobalTimerExpired("ysCureEildaren","GLOBAL")
	Global("ys_TalkedToGarGel","GLOBAL",5)~ THEN BEGIN BLK2001
	SAY@3501
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
// Ghoulish
//---------------------------------------------------------
IF ~PartyHasItem("ysghoul1")
		Global("ysGargelGhoul","GLOBAL",0)~ THEN BEGIN 1000
	SAY @3502
	IF ~~ THEN
		DO ~SetGlobal("ysGargelGhoul","GLOBAL",1)~
	REPLY @3503 GOTO 1001
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1001
	SAY @3504
	IF ~Global("ys_TalkedToGarGel","GLOBAL",0)
			Global("ys_TalkedToAiloth","GLOBAL",0)~ THEN
			REPLY @3505 GOTO BLK2000
	IF ~Global("ys_TalkedToGarGel","GLOBAL",0)
			Global("ys_TalkedToAiloth","GLOBAL",1)~ THEN
			REPLY @3505 GOTO BLK0
END

//---------------------------------------------------------
//No conversation
//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2000
	SAY @3506
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
//Initial conversation
//---------------------------------------------------------
IF ~~ THEN BEGIN BLK0
	SAY @3507
	IF ~~ THEN REPLY @3508 GOTO BLK1
	IF ~~ THEN REPLY @3509 GOTO BLK1000
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1000
	SAY @3510
	IF ~~ THEN REPLY @3511 GOTO BLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @3512
	IF ~~ THEN REPLY @3513 GOTO BLK2
	IF ~~ THEN REPLY @3514 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @3515
	IF ~~ THEN REPLY @3516 GOTO BLK20
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK20
	SAY @3517
	IF ~~ THEN REPLY @3518 GOTO BLK21
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK21
	SAY @3519
	IF ~!InParty("Jaheira")~ THEN REPLY @3520 GOTO BLK5
	IF ~IfValidForPartyDialogue("Jaheira") OR(2) !InMyArea("Jaheira")
      StateCheck("Jaheira",CD_STATE_NOTVALID)~
	REPLY @3520 GOTO BLK5
	IF ~IfValidForPartyDialogue("Jaheira") InMyArea("Jaheira")
      !StateCheck("Jaheira",CD_STATE_NOTVALID)
      See("Jaheira")~ THEN
	REPLY @3520 GOTO BLK3
END

//--------------------------------------------------------
//Interject Jaheira
IF ~~ THEN BEGIN BLK3
	SAY @3521
	IF ~~ THEN EXTERN JAHEIRAJ GGBLK1
END

//--------------------------------------------------------
IF ~~ THEN BEGIN BLK31
	SAY @3522
	IF ~~ THEN REPLY @3523 GOTO BLK4
END

//---------------------------------------------------------
//Interject Jaheira
IF ~~ THEN BEGIN BLK4
	SAY @3524
	IF ~~ THEN EXTERN JAHEIRAJ GGBLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK41
	SAY @3525
	IF ~~ THEN REPLY @3526 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @3527
	IF ~~ THEN REPLY @3528 GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @3529
	IF ~~ THEN REPLY @3530 GOTO BLK8
	IF ~~ THEN REPLY @3531 GOTO BLK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @3500
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK8
	SAY @3532
	IF ~~ THEN REPLY @3533 GOTO BLK9
	IF ~~ THEN REPLY @3534 GOTO BLK9
	IF ~PartyGoldGT(29999)~ THEN REPLY @3535 GOTO BLK10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK9
	SAY @3536
	IF ~~ THEN REPLY @3537
		DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",1)~
	EXIT
	IF ~PartyGoldGT(29999)~ THEN REPLY @3535 GOTO BLK10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK10
	SAY @3538
	IF ~~ THEN
			DO ~TakePartyGold(30000)
          SetGlobal("ys_PaidGaralial","GLOBAL",1)~
	REPLY @3539 GOTO BLK11

	IF ~~ THEN
			DO ~TakePartyGold(30000)
          SetGlobal("ys_PaidGaralial","GLOBAL",1)~
	REPLY @3540 GOTO BLK12

	IF ~~ THEN
			DO ~TakePartyGold(30000)
          SetGlobal("ys_PaidGaralial","GLOBAL",1)~
	REPLY @3541 GOTO BLK12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
	SAY @3542
	IF ~~ THEN REPLY @3543 GOTO BLK12
	IF ~~ THEN REPLY @3541 GOTO BLK12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK12
	SAY @3544
	IF ~~ THEN UNSOLVED_JOURNAL @168
		DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",2)~
	EXIT
END
//---------------------------------------------------------


//---------------------------------------------------------
//Refuse Angharad's quest but leave the door open
IF ~Global("ys_TalkedToGarGel","GLOBAL",1)
		Global("ys_TalkedToAngharad","GLOBAL",1)~ THEN BEGIN BLK100
	SAY @3545
	IF ~PartyGoldGT(29999)~ THEN REPLY @3546 GOTO BLK101
	IF ~~ THEN REPLY @3547 GOTO BLK102
	IF ~~ THEN REPLY @3548
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK102
	SAY @3549
	IF ~~ THEN
    DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",20)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK101
	SAY @3550
	IF ~~ THEN
			DO ~TakePartyGold(30000)
          SetGlobal("ys_PaidGaralial","GLOBAL",1)~
	REPLY @3539 GOTO BLK1104

	IF ~~ THEN
			DO ~TakePartyGold(30000)
          SetGlobal("ys_PaidGaralial","GLOBAL",1)~
	REPLY @3551 GOTO BLK1103

	IF ~~ THEN
			DO ~TakePartyGold(30000)
          SetGlobal("ys_PaidGaralial","GLOBAL",1)~
	REPLY @3541 GOTO BLK1103
END

//---------------------------------------------------------
// The Orb has been found - Angharad is happy
//---------------------------------------------------------
IF ~Global("ys_TalkedToGarGel","GLOBAL",20)
    Global("ys_OrbGiven","GLOBAL",1)~ THEN BEGIN BLK2102
	SAY @3552
	IF ~~ THEN REPLY @3539 GOTO BLK1104
	IF ~~ THEN REPLY @3553 GOTO BLK1103
END

//---------------------------------------------------------
// The Orb has been found - Angharad is hacked off
//---------------------------------------------------------
IF ~Global("ys_TalkedToGarGel","GLOBAL",30)
    Global("ys_OrbGiven","GLOBAL",1)~ THEN BEGIN BLK3000
	SAY @3554
	IF ~~ THEN REPLY @3539 GOTO BLK1102
	IF ~~ THEN REPLY @3551 GOTO BLK1103
	IF ~~ THEN REPLY @3541 GOTO BLK1103
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1102
	SAY @3542
	IF ~~ THEN REPLY @3555 GOTO BLK1103
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1104
	SAY @3556
	IF ~~ THEN REPLY @3555 GOTO BLK1103
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1103
	SAY @3544
	IF ~~ THEN UNSOLVED_JOURNAL @168
		DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",2)
				SetGlobal("ys_FindColver","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
// Holding speech
//---------------------------------------------------------
IF ~Global("ys_TalkedToGarGel","GLOBAL",2)
		GlobalGT("ys_FindColver","GLOBAL",0)
		GlobalLT("ys_FindColver","GLOBAL",6)~ THEN BEGIN 0
	SAY @3557
	IF ~~ THEN REPLY @3558
  EXIT
END

//---------------------------------------------------------
// Eildaren Colver is sick
//---------------------------------------------------------
IF ~Global("ys_TalkedToGarGel","GLOBAL",2)
		Global("ys_FindColver","GLOBAL",6)~ THEN BEGIN 1
	SAY @3557
	IF ~~ THEN REPLY @3558EXIT
	IF ~~ THEN REPLY @3559GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @3560
	IF ~~ THEN REPLY @3561GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @3562
	IF ~~ THEN REPLY @3563 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @3564
	IF ~~ THEN  UNSOLVED_JOURNAL @154
   REPLY @3565
	 DO ~SetGlobal("ys_FindColver","GLOBAL",7)
   ActionOverride("ysgargel",DestroySelf())
   ActionOverride("ysanghrd",DestroySelf())~
  EXIT
  IF ~Global("ys_PaidGaralial","GLOBAL",1)~ THEN REPLY @3566GOTO 5
  IF ~!Global("ys_PaidGaralial","GLOBAL",1)~ THEN REPLY @3567GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @3568
	IF ~~ THEN REPLY @3569 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @3570
	IF ~~ THEN UNSOLVED_JOURNAL @44
	 DO ~SetGlobal("ys_FindColver","GLOBAL",100)
	 		SetGlobalTimer("ysLiftCurse","GLOBAL",SEVEN_DAYS)
      ActionOverride("ysgargel",EscapeArea())
      ActionOverride("ysanghrd",EscapeArea())~
  EXIT
END

//---------------------------------------------------------
// In the Enclave of Eldath - Eildaren Colver is sick
//---------------------------------------------------------
IF ~Global("ys_TalkedToGarGel","GLOBAL",2)
		Global("ys_FindColver","GLOBAL",7)~ THEN BEGIN 10
	SAY @3571
	IF ~~ THEN REPLY @3572 GOTO 11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @3573
	IF ~Global("ys_PaidGaralial","GLOBAL",1)~ THEN REPLY @3574 GOTO 12
	IF ~!Global("ys_PaidGaralial","GLOBAL",1)~ THEN REPLY @3575 GOTO 13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @3576
	IF ~~ THEN REPLY @3577 GOTO 14
END

//---------------------------------------------------------
// Catch if the player has exploited Boots of Speed over the Traps of the Living
//---------------------------------------------------------
IF ~~ THEN BEGIN 13
	SAY @3578
	IF ~Global("ys_CeinwenActive","GLOBAL",1)~ THEN REPLY @3577 GOTO 14
	IF ~Global("ys_CeinwenActive","GLOBAL",0)~ THEN REPLY @3577 GOTO 2000
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 14
	SAY @3579
	IF ~IfValidForPartyDialogue("Jaheira") InMyArea("Jaheira")
	   !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @3580 GOTO 15
	IF ~IfValidForPartyDialogue("Jaheira") OR(2) !InMyArea("Jaheira")
	   StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @3580 GOTO 17
	IF ~!InParty("Jaheira")~ THEN REPLY @3580 GOTO 17
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 15
	SAY @3581
	IF ~~ THEN EXTERN JAHEIRAJ GGBLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 16
	SAY @3582
	IF ~Global("ys_CeinwenRescuedByElminster","GLOBAL",1)~ THEN REPLY @3583 GOTO 19
	IF ~!Global("ys_CeinwenRescuedByElminster","GLOBAL",1)~ THEN REPLY @3584 GOTO 18
  IF ~~ THEN REPLY @3585 GOTO 50
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 17
	SAY @3586
	IF ~Global("ys_CeinwenRescuedByElminster","GLOBAL",1)~ THEN REPLY @3583 GOTO 19
	IF ~!Global("ys_CeinwenRescuedByElminster","GLOBAL",1)~ THEN REPLY @3584 GOTO 18
	IF ~~ THEN REPLY @3585 GOTO 50
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 18
	SAY @3587
	IF ~~ THEN REPLY @3588 GOTO 49
	IF ~~ THEN REPLY @3585 GOTO 50
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 19
	SAY @3589
	IF ~~ THEN REPLY @3590 GOTO 20
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 20
	SAY @3591
	IF ~IfValidForPartyDialogue("Jaheira") InMyArea("Jaheira")
	   !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @3592 GOTO 21
	IF ~IfValidForPartyDialogue("Jaheira") OR(2) !InMyArea("Jaheira")
	   StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @3592 GOTO 210
	IF ~!InParty("Jaheira")~ THEN REPLY @3592 GOTO 210
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 21
	SAY @3593
	IF ~~ THEN EXTERN JAHEIRAJ GGBLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 210
	SAY@3593
	IF ~~ THEN REPLY @3594 GOTO 49
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 22
	SAY @3595
	IF ~~ THEN REPLY @3585 GOTO 50
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 49
	SAY @3596
	IF ~~ THEN REPLY @3585 GOTO 50
END

//---------------------------------------------------------
// Catch if the player has exploited Boots of Speed over the Traps of the Living
//---------------------------------------------------------
IF ~~ THEN BEGIN 2000
	SAY @3597
	IF ~~ THEN REPLY @3585 GOTO 50
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 50
	SAY @3598
	IF ~IfValidForPartyDialogue("Edwin") InMyArea("Edwin")
	   !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @3599 GOTO 5100
	IF ~IfValidForPartyDialogue("Edwin") OR(2) !InMyArea("Edwin")
	   StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @3600 GOTO 5100
	IF ~IfValidForPartyDialogue("Edwin") OR(2) !InMyArea("Edwin")
	   StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @3599 GOTO 51
	IF ~!InParty("Edwin")~ THEN REPLY @3599 GOTO 51
	IF ~IfValidForPartyDialogue("Edwin") InMyArea("Edwin")
	   !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @3600 GOTO 51
	IF ~!InParty("Edwin")~ THEN REPLY @3600 GOTO 51
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 51
	SAY @3601
	IF ~~ THEN REPLY @3602 GOTO 53
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5100
	SAY @3601
	IF ~~ THEN EXTERN BEDWIN GGBLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 510
	SAY @3603
	IF ~~ THEN REPLY @3604 GOTO 53
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 53
	SAY @3605
	IF ~IfValidForPartyDialogue("Anomen") OR(2) !InMyArea("Anomen")
	   StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN REPLY @3606 GOTO 54
	IF ~!InParty("Anomen")~ THEN REPLY @3606 GOTO 54
	IF ~IfValidForPartyDialogue("Anomen") InMyArea("Anomen")
	   !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN REPLY @3606 GOTO 540
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 54
	SAY @3607
	IF ~~ THEN REPLY @3608 GOTO 56
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 540
	SAY @3607
	IF ~~ THEN EXTERN ANOMENJ GGBLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 55
	SAY @3609
	IF ~~ THEN REPLY @3608 GOTO 56
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 56
	SAY @3610
	IF ~IfValidForPartyDialogue("Jan") InMyArea("Jan")
	   !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN REPLY @3611 GOTO 590
	IF ~IfValidForPartyDialogue("Jan") OR(2) !InMyArea("Jan")
	   StateCheck("Jan",CD_STATE_NOTVALID)~ THEN REPLY @3611 GOTO 59
	IF ~!InParty("Jan")~ THEN REPLY @3611 GOTO 59
END


//---------------------------------------------------------
IF ~~ THEN BEGIN 590
	SAY @3612
	IF ~~ THEN EXTERN BJAN GGBLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 57
	SAY @3613
	IF ~~ THEN EXTERN BJAN GGBLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 58
	SAY @3614
	IF ~~ THEN EXTERN BJAN GGBLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 558
	SAY @3615
	IF ~~ THEN REPLY @3616 GOTO 59
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 59
	SAY @3617
	IF ~~ THEN UNSOLVED_JOURNAL @153
  DO ~SetGlobal("ys_FindColver","GLOBAL",8)~
  EXIT
END

//---------------------------------------------------------
//Depart for Imradim
//---------------------------------------------------------
IF ~Global("ys_TalkedToGarGel","GLOBAL",2)
		Global("ys_FindColver","GLOBAL",8)~ THEN BEGIN 60
	SAY @3618
	IF ~PartyHasItem("ysgldag")~ THEN REPLY @3559 GOTO 61
	IF ~~ THEN REPLY @3558EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 61
	SAY @3619
	IF ~~ THEN REPLY @3559
	DO ~GiveItemCreate("ysprpt",Player1,0,0,0)
		SetGlobal("ys_TalkedToGarGel","GLOBAL",3)
  	ActionOverride(Player1,LeaveAreaLUA("ys0410","",[3320.150],0))
		ActionOverride(Player2,LeaveAreaLUA("ys0410","",[3320.170],0))
		ActionOverride(Player3,LeaveAreaLUA("ys0410","",[3290.150],0))
		ActionOverride(Player4,LeaveAreaLUA("ys0410","",[3300.120],0))
		ActionOverride(Player5,LeaveAreaLUA("ys0410","",[3340.100],0))
		ActionOverride(Player6,LeaveAreaLUA("ys0410","",[3310.115],0))
    ActionOverride(Player1,CreateVisualEffectObject("SPUSEANY",Player1))
    ActionOverride(Player2,CreateVisualEffectObject("SPUSEANY",Player2))
    ActionOverride(Player4,CreateVisualEffectObject("SPUSEANY",Player4))
    ActionOverride(Player3,CreateVisualEffectObject("SPUSEANY",Player3))
    ActionOverride(Player5,CreateVisualEffectObject("SPUSEANY",Player5))
    ActionOverride(Player6,CreateVisualEffectObject("SPUSEANY",Player6))~
	EXIT
	IF ~~ THEN REPLY @3558EXIT
END

//---------------------------------------------------------
//Return from Imradim - Geltarath is still in the Enclave
//---------------------------------------------------------
IF ~Global("ys_TalkedToGarGel","GLOBAL",3)~ THEN BEGIN 80
	SAY @3620
	IF ~PartyHasItem("ysteye")~ THEN REPLY @3621 GOTO 86
	IF ~InParty("Jaheira")
     PartyHasItem("ysteye")~ THEN REPLY @3622 GOTO 82
	IF ~InParty("Jaheira")
     !PartyHasItem("ysteye")~ THEN REPLY @3622 GOTO 81
	IF ~!InParty("Jaheira")
     PartyHasItem("ysteye")~ THEN REPLY @3622 GOTO 881
	IF ~!InParty("Jaheira")
     !PartyHasItem("ysteye")~ THEN REPLY @3622 GOTO 882
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 81
	SAY @3623
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",4)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 82
	SAY @3623
		IF ~IfValidForPartyDialogue("Jaheira") InMyArea("Jaheira")
	   !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @3624 GOTO 83
		IF ~IfValidForPartyDialogue("Jaheira") OR(2) !InMyArea("Jaheira")
	   StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @3624 GOTO 84
		IF ~!InParty("Jaheira")~ THEN REPLY @3624 GOTO 84
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 881
	SAY @3625
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",4)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 882
	SAY @3625
		IF ~~ THEN REPLY @3624 GOTO 84
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 83
	SAY @3626
	IF ~~ THEN EXTERN JAHEIRAJ GGBLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 84
	SAY @3627
	IF ~~ THEN REPLY @3628 GOTO 85
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 85
	SAY @3629
	IF ~~ THEN UNSOLVED_JOURNAL @165
	 DO ~SetGlobalTimer("ysCureEildaren","GLOBAL", ONE_DAY)
	 		TakePartyItem("ysteye")
	 		AddexperienceParty(4000)
			SetGlobal("ys_GarGelDislikesProt","GLOBAL",1)
			SetGlobal("ys_TalkedToGarGel","GLOBAL",6)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 86
	SAY @3630
  =@3631
	IF ~!InParty("Anomen")~ THEN UNSOLVED_JOURNAL @165
  REPLY @3632
	 DO ~SetGlobalTimer("ysCureEildaren","GLOBAL", ONE_DAY)
	 		TakePartyItem("ysteye")
	 		AddexperienceParty(10000)
			SetGlobal("ys_TalkedToGarGel","GLOBAL",6)~
	EXIT
	IF ~InParty("Anomen") !InMyArea("Anomen") 
     StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN UNSOLVED_JOURNAL @165
  REPLY @3632
	 DO ~SetGlobalTimer("ysCureEildaren","GLOBAL", ONE_DAY)
	 		TakePartyItem("ysteye")
	 		AddexperienceParty(10000)
			SetGlobal("ys_TalkedToGarGel","GLOBAL",6)~
	EXIT
	IF ~IfValidForPartyDialogue("Anomen") InMyArea("Anomen")
     !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN UNSOLVED_JOURNAL @165
  REPLY @3633 GOTO 870
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 870
  SAY@3634
	IF ~~ THEN EXTERN ANOMENJ GGBLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 87
	SAY @3635
	IF ~~ THEN REPLY @3632
	 DO ~SetGlobalTimer("ysCureEildaren","GLOBAL", ONE_DAY)
	 		TakePartyItem("ysteye")
	 		AddexperienceParty(10000)
			SetGlobal("ys_TalkedToGarGel","GLOBAL",6)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 88
	SAY @3636
	IF ~~ THEN REPLY @3632
	 DO ~SetGlobalTimer("ysCureEildaren","GLOBAL", ONE_DAY)
	 		TakePartyItem("ysteye")
	 		AddexperienceParty(10000)
			SetGlobal("ys_TalkedToGarGel","GLOBAL",6)~
	EXIT
END

//---------------------------------------------------------
//Eildaren is cured - Geltarath is not your friend
//---------------------------------------------------------
IF ~GlobalTimerExpired("ysCureEildaren","GLOBAL")
		Global("ys_GarGelDislikesProt","GLOBAL",1)
	  Global("ys_TalkedToGarGel","GLOBAL",6)~ THEN BEGIN 90
	SAY@3637
	IF ~~ THEN REPLY @3638 GOTO 91
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 91
	SAY @3639
	IF ~~ THEN UNSOLVED_JOURNAL @166
	 DO ~SetGlobalTimer("ysLiftCurse","GLOBAL", SEVEN_DAYS)
      SetGlobal("ys_TalkedToGarGel","GLOBAL",7)
      EraseJournalEntry(@153)
      EraseJournalEntry(@154)
  		EraseJournalEntry(@163)
  		EraseJournalEntry(@165)
	    EscapeArea()
	    ActionOverride("yselcol2",EscapeArea())
	    ActionOverride("ysanghrd",EscapeArea())~
	EXIT
END

//---------------------------------------------------------
//Eildaren is cured - Geltarath likes you - Jaheira is NOT in the party
//---------------------------------------------------------
IF ~GlobalTimerExpired("ysCureEildaren","GLOBAL")
		Global("ys_GarGelDislikesProt","GLOBAL",0)
		!InParty("Jaheira")
	  Global("ys_TalkedToGarGel","GLOBAL",6)~ THEN BEGIN 92
	SAY@3640
	IF ~~ THEN REPLY @3641 GOTO 93
END

//---------------------------------------------------------
//Eildaren is cured - Geltarath likes you - Jaheira is in the party
//---------------------------------------------------------
IF ~GlobalTimerExpired("ysCureEildaren","GLOBAL")
		Global("ys_GarGelDislikesProt","GLOBAL",0)
		IfValidForPartyDialogue("Jaheira")
		InMyArea("Jaheira")
	  !StateCheck("Jaheira",CD_STATE_NOTVALID)
	  Global("ys_TalkedToGarGel","GLOBAL",6)~ THEN BEGIN 99
	SAY@3640
	IF ~~ THEN EXTERN YSELCOL2 JAHEIRATALK
END

//---------------------------------------------------------
//Eildaren is cured - Geltarath likes you - Jaheira is in the party but not available
//---------------------------------------------------------
IF ~GlobalTimerExpired("ysCureEildaren","GLOBAL")
		Global("ys_GarGelDislikesProt","GLOBAL",0)
		IfValidForPartyDialogue("Jaheira")  
		OR(2) !InMyArea("Jaheira")
	  StateCheck("Jaheira",CD_STATE_NOTVALID)
	  Global("ys_TalkedToGarGel","GLOBAL",6)~ THEN BEGIN 100
	SAY@3640
	IF ~~ THEN REPLY @3641 GOTO 93
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 93
	SAY@3642
	IF ~~ THEN REPLY @3643 GOTO 200
END

//---------------------------------------------------------
//Interject Eildaren
IF ~~ THEN BEGIN 150
	SAY@3644
	IF ~~ THEN EXTERN JAHEIRAJ GGBLK6
END

//---------------------------------------------------------
//Interject Eildaren
IF ~~ THEN BEGIN 151
	SAY@3645
	IF ~~ THEN REPLY @3643 GOTO 200
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 200
	SAY@3646
	IF ~~ THEN UNSOLVED_JOURNAL @166
	 DO ~SetGlobalTimer("ysLiftCurse","GLOBAL", SEVEN_DAYS)
      SetGlobal("ys_TalkedToGarGel","GLOBAL",7)
      EraseJournalEntry(@153)
      EraseJournalEntry(@154)
  		EraseJournalEntry(@163)
  		EraseJournalEntry(@165)
	    EscapeArea()
	    ActionOverride("yselcol2",EscapeArea())
	    ActionOverride("ysanghrd",EscapeArea())~
	 EXIT
END

//---------------------------------------------------------
// Script the actual appearance in Porthpentryrch in ys1001.baf
//---------------------------------------------------------
// Party arrives before the week is out - CHARNAME is NOT liked
IF ~Global("ys_TalkedToGarGel","GLOBAL",7)
		Global("ys_GarGelDislikesProt","GLOBAL",1)
    !GlobalTimerExpired("ysLiftCurse","GLOBAL")~ THEN BEGIN 300
	SAY @3647
	IF ~~ THEN UNSOLVED_JOURNAL @45
	 DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",8)
	    EscapeArea()
      EraseJournalEntry(@166)
	    ActionOverride("yselcol2",EscapeArea())
	    ActionOverride("ysanghrd",EscapeArea())~
	 EXIT
END

//---------------------------------------------------------
// Party arrives before the week is out - CHARNAME is liked
IF ~Global("ys_TalkedToGarGel","GLOBAL",7)
		Global("ys_GarGelDislikesProt","GLOBAL",0)
    !GlobalTimerExpired("ysLiftCurse","GLOBAL")~ THEN BEGIN 301
	SAY @3648
=@3649
	IF ~~ THEN UNSOLVED_JOURNAL @46
	 DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",9)
      EraseJournalEntry(@166)
	    EscapeArea()
	    ActionOverride("yselcol2",EscapeArea())
	    ActionOverride("ysanghrd",EscapeArea())~
	 EXIT
END

//---------------------------------------------------------
// Script the appearance in Porthpentryrch in ys1001.baf
//---------------------------------------------------------
// Party arrives after the week is out - CHARNAME is NOT liked
IF ~Global("ys_TalkedToGarGel","GLOBAL",7)
		Global("ys_GarGelDislikesProt","GLOBAL",1)
    GlobalTimerExpired("ysLiftCurse","GLOBAL")~ THEN BEGIN 302
	SAY @3650
	IF ~~ THEN UNSOLVED_JOURNAL @47
	 DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",10)
	    EscapeArea()
	    AddexperienceParty(12000)
	    ActionOverride("yselcol2",EscapeArea())
	    ActionOverride("ysanghrd",EscapeArea())~
	 EXIT
END

//---------------------------------------------------------
// Party arrives after the week is out - CHARNAME is liked
IF ~Global("ys_TalkedToGarGel","GLOBAL",7)
		Global("ys_GarGelDislikesProt","GLOBAL",0)
    GlobalTimerExpired("ysLiftCurse","GLOBAL")~ THEN BEGIN 303
	SAY @3651
	IF ~~ THEN REPLY @3652 GOTO 3000
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3000
	SAY @3653
	IF ~!InParty("Jaheira")~ THEN REPLY @3654 GOTO 304
	IF ~IfValidForPartyDialogue("Jaheira") InMyArea("Jaheira")
	  !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @3654 GOTO 305
	IF ~IfValidForPartyDialogue("Jaheira") OR(2) !InMyArea("Jaheira")
	  StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @3654 GOTO 304
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 304
	SAY @3655
	=@3656
	IF ~~ THEN UNSOLVED_JOURNAL @49
	 DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",11)
	    AddexperienceParty(30000)
	    EscapeArea()
	    ActionOverride("yselcol2",EscapeArea())
	    ActionOverride("ysanghrd",EscapeArea())~
	 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 305
	SAY @3655
	=@3657
	IF ~~ THEN EXTERN JAHEIRAJ GGBLK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 306
	SAY @3658
	IF ~~ THEN SOLVED_JOURNAL @48
	 DO ~SetGlobal("ys_TalkedToGarGel","GLOBAL",11)
	    AddexperienceParty(30000)
	    EscapeArea()
	    ActionOverride("yselcol2",EscapeArea())
	    ActionOverride("ysanghrd",EscapeArea())~
	 EXIT
END


//---------------------------------------------------------
// Interjections
//---------------------------------------------------------
//Jaheira
CHAIN JAHEIRAJ GGBLK1
  @3659
EXTERN ysgargel BLK31

CHAIN JAHEIRAJ GGBLK2
 @3660
EXTERN ysgargel BLK41

CHAIN JAHEIRAJ GGBLK3
 @3661
EXTERN ysgargel 16

CHAIN JAHEIRAJ GGBLK4
 @3662
EXTERN ysgargel 22

CHAIN JAHEIRAJ GGBLK5
 @3663
EXTERN ysgargel 85

CHAIN JAHEIRAJ GGBLK6
 @3664
EXTERN ysgargel 151

CHAIN JAHEIRAJ GGBLK7
 @3665
 ==YSELCOL2 @3666
EXTERN ysgargel 306

//Anomen
CHAIN ANOMENJ GGBLK1
 @3667
EXTERN ysgargel 55

CHAIN ANOMENJ GGBLK2
 @3668
EXTERN ysgargel 88

CHAIN ANOMENJ GGBLK3
 @3668
EXTERN ysgargel 87

//Jan
CHAIN BJAN GGBLK1
 @3669
EXTERN ysgargel 57

CHAIN BJAN GGBLK2
 @3670
EXTERN ysgargel 58

CHAIN BJAN GGBLK3
 @3671
EXTERN ysgargel 558

//Edwin
CHAIN BEDWIN GGBLK1
 @3672
EXTERN ysgargel 510

//Eildaren
CHAIN YSELCOL2 JAHEIRATALK
	@3673
  =@3674
  =@3675
  =@3676
==JAHEIRAJ @3677
EXTERN ysgargel 150
