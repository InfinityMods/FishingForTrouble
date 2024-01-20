BEGIN ysjalil

IF ~Global("ysTalkedToJalil","GLOBAL",0)~ THEN BEGIN 0
	SAY @4750
	IF~~THEN REPLY @4751 GOTO 10
	IF~~THEN REPLY @4752 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4753
	IF~~THEN REPLY @4754 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4755
	IF~~THEN REPLY @4756 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @4757
	IF~~THEN REPLY @4758 GOTO 4
	IF~~THEN REPLY @4759 GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @4760
	IF~~THEN REPLY @4761 GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
  SAY @4762
	IF~~THEN
	 DO~SetGlobal("ysTalkedToJalil","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @4753
	IF~~THEN REPLY @4763 GOTO 11
	IF~~THEN REPLY @4764 GOTO 11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @4765
	IF~~THEN REPLY @4766 GOTO 12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @4767
	IF~~THEN REPLY @4768 GOTO 13
	IF~~THEN REPLY @4769 GOTO 13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 13
	SAY @4770
	IF~~THEN REPLY @4771 GOTO 14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 14
	SAY @4772
	IF~~THEN REPLY @4773 GOTO 15
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 15
	SAY @4774
	IF~Global("ysTalkedToAiesha","GLOBAL",0)
     CheckStatGT(LastTalkedToBy(Myself),14,CHR)~THEN REPLY @4775 GOTO 16
	IF~GlobalGT("ysTalkedToAiesha","GLOBAL",0)
     CheckStatGT(LastTalkedToBy(Myself),14,CHR)~THEN REPLY @4776 GOTO 18
	IF~Global("ysTalkedToAiesha","GLOBAL",0)
     CheckStatLT(LastTalkedToBy(Myself),15,CHR)~THEN REPLY @4775 GOTO 16
	IF~GlobalGT("ysTalkedToAiesha","GLOBAL",0)
     CheckStatLT(LastTalkedToBy(Myself),15,CHR)~THEN REPLY @4776 GOTO 17
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 16
	SAY @4777
	IF~CheckStatGT(LastTalkedToBy(Myself),14,CHR)~THEN REPLY @4778 GOTO 18
	IF~CheckStatLT(LastTalkedToBy(Myself),15,CHR)~THEN REPLY @4778 GOTO 17
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 17
	SAY @4779
	IF~~THEN
	 DO~SetGlobal("ysTalkedToJalil","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 18
	SAY @4780
	IF~~THEN REPLY @4781 GOTO 19
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 19
	SAY @4782
	IF~~THEN
	 DO~SetGlobal("ysTalkedToJalil","GLOBAL",2)~
  EXIT
END

//---------------------------------------------------------
IF ~GlobalGT("ysTalkedToJalil","GLOBAL",0)~ THEN BEGIN 100
	SAY @4779
	IF~~THEN EXIT
END

//---------------------------------------------------------
//IF ~~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END
