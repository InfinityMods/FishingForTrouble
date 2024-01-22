BEGIN yslkeep

//---------------------------------------------------------
//No more conversation
//---------------------------------------------------------
IF ~Global("ysTalkedToLHKeeper","GLOBAL",2)
    !AreaCheck("ys0031")~ THEN BEGIN LHKNOCON
  SAY @600
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
//Talked to keeper but not tried the lighthouse door yet
//---------------------------------------------------------
IF ~Global("ysLHDoorIsLocked","GLOBAL",0)
    Global("ysTalkedToLHKeeper","GLOBAL",1)~ THEN BEGIN LHKNOTYET
    SAY @601
    IF ~~ THEN REPLY @602
  EXIT
END

//---------------------------------------------------------
//Lighthouse door is locked - the party has tried it
//and has already talked to the keeper
//---------------------------------------------------------
IF ~Global("ysLHDoorIsLocked","GLOBAL",1)
    Global("ysTalkedToLHKeeper","GLOBAL",1)~ THEN BEGIN LHKLOCKED
    SAY @601
    IF ~~ THEN REPLY @603 GOTO LHKBLOCKEND
END

//---------------------------------------------------------
//Find lighthouse keeper hiding in shed
//---------------------------------------------------------
IF ~Global("ysTalkedToLHKeeper","GLOBAL",0)~ THEN BEGIN LHKBLOCK0
	SAY @604
	IF ~~ THEN REPLY @605GOTO LHKBLOCK1
	IF ~~ THEN REPLY @606GOTO LHKBLOCK2
	IF ~~ THEN REPLY @607GOTO LHKBLOCK3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK2
  SAY @608
  IF ~~ THEN REPLY @609GOTO LHKBLOCK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK1
  SAY @610
  IF ~~ THEN REPLY @611GOTO LHKBLOCK4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK3
  SAY @612
  IF ~~ THEN REPLY @613 GOTO LHKBLOCK41
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK4
  SAY @614
		=@615
  IF ~~ THEN REPLY @616GOTO LHKBLOCK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK41
  SAY @614 
		=@615
  IF ~~ THEN REPLY @617GOTO LHKBLOCK6
  IF ~~ THEN REPLY @618GOTO LHKBLOCK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK5
  SAY @619
  IF ~~ THEN REPLY @620GOTO LHKBLOCK6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK6
  SAY @621
  IF ~~ THEN REPLY @622GOTO LHKBLOCK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK7
  SAY @623
	= @624
  IF ~~ THEN REPLY @625GOTO LHKBLOCK8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK8
  SAY @626
		=@627
  IF ~~ THEN REPLY @628GOTO LHKBLOCK10
  IF ~~ THEN REPLY @629GOTO LHKBLOCK9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK9
  SAY @630
  IF ~~ THEN REPLY @631GOTO LHKBLOCK10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK10
  SAY @632
		= @633
  IF ~~ THEN REPLY @634 GOTO LHKBLOCK11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK11
  SAY @635
  = @636
  = @637
  IF ~~ THEN REPLY @638
	  DO ~SetGlobal("ysBranchFlag","LOCALS",0)~
    GOTO LHKBLOCK12
  IF ~~ THEN REPLY @639
      DO ~SetGlobal("ysBranchFlag","LOCALS",1)~
    GOTO LHKBLOCK12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN LHKBLOCK12
  SAY @640

  IF ~Global("ysLHDoorIsLocked","GLOBAL",0)
      Global("ysBranchFlag","LOCALS",0)~ THEN REPLY @641
        DO ~SetGlobal("ysTalkedToLHKeeper","GLOBAL",1)
		    AddJournalEntry(@5,QUEST)~
  EXIT
  IF ~Global("ysLHDoorIsLocked","GLOBAL",0)
      Global("ysBranchFlag","LOCALS",1)~ THEN REPLY @642
        DO ~SetGlobal("ysTalkedToLHKeeper","GLOBAL",1)
		    AddJournalEntry(@6,QUEST)~
  EXIT
  IF ~Global("ysLHDoorIsLocked","GLOBAL",1)~ THEN REPLY @643 GOTO LHKBLOCKEND
END


//---------------------------------------------------------
//Both conversation paths come together at this point. Give the party the key.
IF ~~ THEN BEGIN LHKBLOCKEND
  SAY @644
  IF ~~ THEN REPLY @645
	DO ~GiveItemCreate("yslhskey",Player1,0,0,0)
        SetGlobal("ysTalkedToLHKeeper","GLOBAL",2)~
  EXIT
  IF ~~ THEN REPLY @646
	DO ~GiveItemCreate("yslhskey",Player1,0,0,0)
        SetGlobal("ysTalkedToLHKeeper","GLOBAL",2)~
  EXIT
END

//----------------------------------------
//Area restored
//----------------------------------------
IF ~AreaCheck("ys0031")
    Global("ysTalkedToLHKeeper","GLOBAL",2)~ THEN BEGIN BLK100
  SAY @647
	IF ~~ THEN REPLY @648 GOTO BLK101
	IF ~~ THEN REPLY @649 GOTO BLK104
END

//----------------------------------------
IF ~~ THEN BEGIN BLK101
  SAY @650
	IF ~~ THEN REPLY @651 GOTO BLK102
END

//----------------------------------------
IF ~~ THEN BEGIN BLK102
  SAY @652
	IF ~~ THEN REPLY @653
	  DO~
      SetGlobal("ysTalkedToLHKeeper","GLOBAL",3)~
    EXIT
	IF ~~ THEN REPLY @654 GOTO BLK103
END

//----------------------------------------
IF ~~ THEN BEGIN BLK103
  SAY @655
	IF ~~ THEN REPLY @656
	DO~
    SetGlobal("ysTalkedToLHKeeper","GLOBAL",4)~
  GOTO BLK120
END

//----------------------------------------
IF ~~ THEN BEGIN BLK120
  SAY @657
	IF ~~ THEN REPLY @658 GOTO BLK121
END

//----------------------------------------
IF ~~ THEN BEGIN BLK121
  SAY @659
	IF ~~ THEN REPLY @660
	 DO~
    SetGlobal("ysTalkedToLHKeeper","GLOBAL",5)
    EscapeArea()~
	EXIT
END

//----------------------------------------
IF ~~ THEN BEGIN BLK104
  SAY @661
	IF ~~ THEN REPLY @662 GOTO BLK105
END

//----------------------------------------
IF ~~ THEN BEGIN BLK105
  SAY @663
	IF ~~ THEN REPLY @664 GOTO BLK106
END

//----------------------------------------
IF ~~ THEN BEGIN BLK106
  SAY @665
	IF ~~ THEN
	 DO~
    SetGlobal("ysTalkedToLHKeeper","GLOBAL",5)
    EscapeArea()~
	EXIT
END


