BEGIN ysblmr

//---------------------------------------------------------
//Mordaran Rockfist
IF ~!Global("ys_TalkedToMR","GLOBAL",0)~ THEN BEGIN 1000
  SAY@2750
	IF~~THEN EXIT
END

//---------------------------------------------------------
//Easier fight; spawn less men if Megred brings you to him.
IF ~Global("ys_TalkedToBLWizard","GLOBAL",2)~ THEN BEGIN BLK0
	SAY @2751
	IF~~THEN REPLY @2752 GOTO BLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @2753
	IF~~THEN REPLY @2754 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @2755
	IF~~THEN REPLY @2756 GOTO BLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @2757
	IF~~THEN REPLY @2758 GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @2759
	IF~~THEN REPLY @2760 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @2761
	IF~~THEN REPLY @2762 GOTO BLK6
	IF~~THEN REPLY @2763 GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @2764
	IF~~THEN REPLY @2765 GOTO BLK7
	IF~~THEN REPLY @2766 GOTO BLK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @2767
	IF~~THEN EXTERN YSBLRWZ CHBLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK8
	SAY @2768
	IF~~THEN
	 DO~SetGlobal("ys_TalkedToBLWizard","GLOBAL",3)
      SetGlobal("ys_TalkedToMR","GLOBAL",1)
			SetGlobal("ys_BLRWIsDead","GLOBAL",1)
      ActionOverride("ysblrwz",EscapeArea())~
  EXIT
END

//---------------------------------------------------------
//If we're here then we haven't had the spiel about the hillmen
//---------------------------------------------------------
IF ~Global("ys_TalkedToMR","GLOBAL",0)~ THEN BEGIN BLK10
	SAY @2769
	IF~~THEN REPLY @2770 GOTO BLK12
	IF~~THEN REPLY @2771 GOTO BLK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
	SAY @2772
	IF~~THEN REPLY @2773 GOTO BLK12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK12
	SAY @2774
	IF~RandomNum(2,1)~THEN REPLY @2775 GOTO BLK14
	IF~RandomNum(2,2)~THEN REPLY @2775 GOTO BLK13
	IF~RandomNum(2,3)~THEN REPLY @2775 GOTO BLK14
	IF~~THEN REPLY @2776GOTO BLK24
END

//---------------------------------------------------------
//Instant fight! Use this to change the Red Guard AI
//---------------------------------------------------------
IF ~~ THEN BEGIN BLK13
	SAY @2777
	IF~~THEN
	DO~SetGlobal("ys_RedCompanyFight","GLOBAL",1)
    SetGlobal("ys_TalkedToMR","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
//Talk your way out of it
//---------------------------------------------------------
IF ~~ THEN BEGIN BLK14
	SAY @2778
	IF~!Global("ys_TalkedToBLWizard","GLOBAL",2)~THEN
	DO~ActionOverride("ysblrwz",MoveToPoint([1882.958]))~
	REPLY @2779 GOTO BLK15
	IF~Global("ys_TalkedToBLWizard","GLOBAL",2)~THEN REPLY @2779 GOTO BLK15
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK15
	SAY @2780
	IF~~THEN REPLY @2781 GOTO BLK16
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK16
	SAY @2753
	IF~~THEN REPLY @2754 GOTO BLK17
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK17
	SAY @2755
	IF~~THEN REPLY @2782 GOTO BLK18
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK18
	SAY @2757
	IF~~THEN REPLY @2783 GOTO BLK19
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK19
	SAY @2759
	IF~~THEN REPLY @2784 GOTO BLK20
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK20
	SAY @2785
	IF~~THEN EXTERN YSBLRWZ CHBLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK21
	SAY @2786
	IF~~THEN REPLY @2787 GOTO BLK22
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK22
	SAY @2788
	IF~~THEN REPLY @2789 GOTO BLK23
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK23
	SAY @2790
	IF~~THEN
	 DO~SetGlobal("ys_TalkedToBLWizard","GLOBAL",3)
			SetGlobal("ys_BLRWIsDead","GLOBAL",1)
      SetGlobal("ys_TalkedToMR","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
//Passengers
//---------------------------------------------------------
IF ~~ THEN BEGIN BLK24
	SAY @2791
	IF~~THEN REPLY @2792 GOTO BLK25
	IF~~THEN REPLY @2793 GOTO BLK26
END

//---------------------------------------------------------
//Prime the guards to go red if the party is seen two minutes later
IF ~~ THEN BEGIN BLK25
	SAY @2794
	IF~~THEN
  DO~SetGlobal("ys_TalkedToMR","GLOBAL",2)
      SetGlobal("ysblgrd","GLOBAL",3)
      SetGlobalTimer("ys_PrimeBLGuards","GLOBAL",120)~
  EXIT
END

//---------------------------------------------------------
//Talk your way out of it... again
IF ~~ THEN BEGIN BLK26
	SAY @2795
	IF~~THEN REPLY @2796 GOTO BLK27
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK27
	SAY @2797
	IF~RandomNum(2,1)~THEN REPLY @2798 GOTO BLK28
	IF~RandomNum(2,2)~THEN REPLY @2798 GOTO BLK32
END


//---------------------------------------------------------
IF ~~ THEN BEGIN BLK28
	SAY @2785
	IF~~THEN EXTERN YSBLRWZ CHBLK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK29
	SAY @2786
	IF~~THEN REPLY @2799 GOTO BLK30
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK30
	SAY @2800
	IF~~THEN REPLY @2789 GOTO BLK31
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK31
	SAY @2790
	IF~~THEN
  DO~SetGlobal("ys_TalkedToMR","GLOBAL",1)
		 SetGlobal("ys_BLRWIsDead","GLOBAL",1)
	   SetGlobal("ys_TalkedToBLWizard","GLOBAL",3)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK32
	SAY @2801
	IF~~THEN REPLY @2802 GOTO BLK33
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK33
	SAY @2803
	IF~~THEN REPLY @2789 GOTO BLK34
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK34
	SAY @2790
	IF~~THEN
  DO~SetGlobal("ys_TalkedToMR","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
//Interjections
//---------------------------------------------------------
//Megred Darlesson
CHAIN YSBLRWZ CHBLK1
@2804
EXTERN YSBLMR BLK8

CHAIN YSBLRWZ CHBLK2
@2804
EXTERN YSBLMR BLK21

CHAIN YSBLRWZ CHBLK3
@2804
EXTERN YSBLMR BLK29
