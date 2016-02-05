BEGIN ysaiesha

IF ~Global("ysTalkedToAiesha","GLOBAL",0)~ THEN BEGIN 0
	SAY @4530
	IF~Global("ys_TalkedToPashan","GLOBAL",1)~THEN REPLY @4531 GOTO 1
	IF~Global("ys_TalkedToPashan","GLOBAL",0)~THEN REPLY @4532 GOTO 50
	IF~~THEN REPLY @4533 GOTO 9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 50
	SAY @4534
	IF~~THEN REPLY @4535 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4536
	IF~~THEN REPLY @4537 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4538
	IF~~THEN REPLY @4539 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @4540
	IF~~THEN REPLY @4541 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @4542
	IF~~THEN REPLY @4543 GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @4544
	IF~~THEN REPLY @4545 GOTO 6
	IF~~THEN REPLY @4546 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @4547
	IF~~THEN REPLY @4548 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @4549
	IF~~THEN REPLY @4550 GOTO 8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @4551
	IF~~THEN
	 DO~SetGlobal("ysTalkedToAiesha","GLOBAL",1)
   AddJournalEntry(@160,QUEST)~
	EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~~ THEN BEGIN 9
	SAY @4552
	IF~~THEN REPLY @4553 GOTO 11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @4538
	IF~~THEN REPLY @4554 GOTO 12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @4555
	IF~~THEN REPLY @4556 GOTO 13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 13
	SAY @4557
	IF~~THEN REPLY @4543 GOTO 14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 14
	SAY @4558
	IF~~THEN REPLY @4545 GOTO 15
	IF~~THEN REPLY @4559 GOTO 15
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 15
	SAY @4547
	IF~~THEN REPLY @4548 GOTO 16
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 16
	SAY @4560
	IF~~THEN REPLY @4550 GOTO 17
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 17
	SAY @4561
	IF~~THEN
	 DO~SetGlobal("ysTalkedToAiesha","GLOBAL",1)
   AddJournalEntry(@160,QUEST)~
	EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToAiesha","GLOBAL",1)
    !PartyHasItem("yscpfl")~ THEN BEGIN 18
	SAY @4562
	IF~~THEN REPLY@4563EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToAiesha","GLOBAL",1)
    PartyHasItem("yscpfl")~ THEN BEGIN 19
	SAY @4564
  IF~~THEN
  DO~TakePartyItem("yscpfl")~
  REPLY@4565GOTO 20
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 20
	SAY @4566
	IF~~THEN REPLY @4567 GOTO 25
	IF~~THEN REPLY @4568 GOTO 21
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 21
	SAY @4569
	IF~~THEN REPLY @4570 GOTO 22
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 22
	SAY @4571
	IF~Global("ysCaveBlocked","GLOBAL",0)~THEN REPLY @4572
	 DO~SetGlobal("ysCaveBlocked","GLOBAL",2)~
	EXIT
	IF~Global("ysCaveBlocked","GLOBAL",1)~THEN REPLY @4573
    DO~SetGlobal("ysCaveBlocked","GLOBAL",2)~
  GOTO 23
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 23
	SAY @4574
	IF~~THEN REPLY @4575 GOTO 24
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 24
	SAY @4576
	IF~~THEN
    DO~SetGlobal("ysTalkedToAiesha","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToAiesha","GLOBAL",1)~ THEN BEGIN 25
	SAY @4577
	IF~Global("ysCaveBlocked","GLOBAL",0)~THEN REPLY @4578
	 DO~SetGlobal("ysCaveBlocked","GLOBAL",2)~
	GOTO 26
	IF~Global("ysCaveBlocked","GLOBAL",1)~THEN REPLY @4579
    DO~SetGlobal("ysCaveBlocked","GLOBAL",2)~
  GOTO 26
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 26
	SAY @4580
	IF~~THEN REPLY @4581 GOTO 28
	IF~~THEN REPLY @4582 GOTO 27
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 28
	SAY @4583
	IF~~THEN REPLY @4584 GOTO 29
	IF~~THEN REPLY @4582 GOTO 27
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 29
	SAY @4585
	IF~~THEN REPLY @4586
		DO~SetGlobal("ysTalkedToAiesha","GLOBAL",3)
      AddJournalEntry(@161,QUEST)~
	EXIT
	IF~~THEN REPLY @4582 GOTO 27
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 27
	SAY @4587
	IF~~THEN
    DO~SetGlobal("ysTalkedToAiesha","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToAiesha","GLOBAL",3)
    !PartyHasItem("yssfrb")~ THEN BEGIN 30
	SAY @4588
	IF~~THEN REPLY @4563 EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
IF ~Global("ysTalkedToAiesha","GLOBAL",3)
    PartyHasItem("yssfrb")~ THEN BEGIN 31
	SAY @4588
	IF~Global("ysCaveBlocked","GLOBAL",3)~THEN
    DO~TakePartyItem("yssfrb")~
  REPLY @4589 GOTO 32
	IF~Global("ysCaveBlocked","GLOBAL",2)~THEN
    DO~TakePartyItem("yssfrb")~
  REPLY @4589 GOTO 33
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 32
	SAY @4590
	IF~~THEN
	  DO~SetGlobal("ysTalkedToAiesha","GLOBAL",4)
    EraseJournalEntry(@160)
    AddJournalEntry(@164,QUEST)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 33
	SAY @4591
	IF~~THEN REPLY @4592 GOTO 34
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 34
	SAY @4593
	IF~~THEN
		DO~SetGlobal("ysTalkedToAiesha","GLOBAL",4)
    AddJournalEntry(@162,QUEST)
    EraseJournalEntry(@160)
    EraseJournalEntry(@161)
    SetGlobal("ysAieshaAdvice","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
//IF ~Global("ysTalkedToAiesha","GLOBAL",3)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
//IF ~Global("ysTalkedToAiesha","GLOBAL",3)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//END