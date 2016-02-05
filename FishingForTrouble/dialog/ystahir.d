BEGIN ystahir

IF ~Global("ysTalkedToTahir","GLOBAL",0)~ THEN BEGIN 0
	SAY @3890
	IF~~THEN REPLY @3891 GOTO 1
	IF~~THEN REPLY @3892 GOTO 10
END

//---------------------------------------------------------
IF ~Global("ysTalkedToTahir","GLOBAL",0)~ THEN BEGIN 10
	SAY @3893
	IF~~THEN REPLY @3894 GOTO 2
	IF~~THEN REPLY @3895 GOTO 3
END

//---------------------------------------------------------
IF ~Global("ysTalkedToTahir","GLOBAL",0)~ THEN BEGIN 1
	SAY @3896
	IF~~THEN REPLY @3894 GOTO 2
	IF~~THEN REPLY @3897 GOTO 3
	IF~~THEN REPLY @3895 GOTO 3
END

//---------------------------------------------------------
IF ~Global("ysTalkedToTahir","GLOBAL",0)~ THEN BEGIN 2
	SAY @3898
	IF~~THEN REPLY @3899 GOTO 3
	IF~~THEN REPLY @3900 GOTO 3
END

//---------------------------------------------------------
IF ~Global("ysTalkedToTahir","GLOBAL",0)~ THEN BEGIN 3
	SAY @3901
	IF~~THEN REPLY @3902
	 DO ~StartStore("ystahir",LastTalkedToBy())
        SetGlobal("ysTalkedToTahir","GLOBAL",1)~
  EXIT
	IF~~THEN
  	 DO ~SetGlobal("ysTalkedToTahir","GLOBAL",1)~
  REPLY @3903 EXIT
	IF~~THEN REPLY @3904 GOTO 4
END

//---------------------------------------------------------
IF ~Global("ysTalkedToTahir","GLOBAL",0)~ THEN BEGIN 4
	SAY @3905
	IF~~THEN REPLY @3906
	 DO ~StartStore("ystahir",LastTalkedToBy())
      SetGlobal("ysTalkedToTahir","GLOBAL",1)~
  EXIT
	IF~~THEN
  	 DO ~SetGlobal("ysTalkedToTahir","GLOBAL",1)~
  REPLY @3907 EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToTahir","GLOBAL",1)~ THEN BEGIN 5
	SAY @3908
	IF~~THEN REPLY @3909
	 DO ~StartStore("ystahir",LastTalkedToBy())~
  EXIT
	IF~~THEN REPLY @3910 EXIT
END

//---------------------------------------------------------
//IF ~Global("ysTalkedToTahir","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END
