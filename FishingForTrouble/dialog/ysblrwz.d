BEGIN ysblrwz

//---------------------------------------------------------
//Megred Darlesson
//---------------------------------------------------------
// If Rockfist has been spoken to then abort the conversation
IF ~GlobalGT("ys_TalkedToMR","GLOBAL",0)~ THEN BEGIN 1000
  SAY@2700
	IF~~THEN EXIT
END

//---------------------------------------------------------
// Start here
IF ~Global("ys_TalkedToBLWizard","GLOBAL",0)~ THEN BEGIN BLK0
  SAY@2701
	IF~~THEN REPLY @2702 GOTO BLK1
	IF~~THEN REPLY @2703 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
  SAY@2704
	IF~~THEN REPLY @2705 GOTO BLK3
	IF~~THEN REPLY @2706 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
  SAY@2707
	IF~~THEN REPLY @2708
	DO~SetGlobal("ys_TalkedToBLWizard","GLOBAL",1)~
   EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
  SAY@2709
	IF~~THEN REPLY @2710GOTO BLK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
  SAY@2711
	IF~RandomNum(2,1)~THEN REPLY @2712GOTO BLK5
	IF~RandomNum(2,2)~THEN REPLY @2712GOTO BLK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
  SAY@2713
	IF~~THEN
  DO~SetGlobal("ys_TalkedToBLWizard","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
  SAY@2714
	IF~~THEN
  DO~	SetGlobal("ys_TalkedToBLWizard","GLOBAL",2)
    ActionOverride("ysblrwz",MoveToPoint([1882.958]))
    ActionOverride(Player1,MoveToPoint([1882.968]))
    ActionOverride(Player2,MoveToPoint([1882.968]))
    ActionOverride(Player3,MoveToPoint([1882.978]))
    ActionOverride(Player4,MoveToPoint([1882.988]))
    ActionOverride(Player5,MoveToPoint([1882.998]))
    ActionOverride(Player6,MoveToPoint([1882.998]))~
  EXIT
END
//---------------------------------------------------------
//IF ~Global("TalkedToBLWizard","GLOBAL",0)~ THEN BEGIN BLK
//  SAY~~
//	IF~~THEN REPLY ~~ GOTO BLK
//	IF~~THEN REPLY ~~ GOTO BLK
//END