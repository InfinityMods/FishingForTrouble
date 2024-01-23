BEGIN ysrimon

IF ~Global("ysTalkedToRimon","GLOBAL",0)~ THEN BEGIN 0
	SAY @4900
	IF ~~ THEN REPLY @4901 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4902
	IF ~~ THEN REPLY @4903 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4904
	IF ~~ THEN REPLY @4905 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @4906
	IF ~~ THEN REPLY @4907 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @4908
	IF ~~ THEN
      DO ~SetGlobal("ysTalkedToRimon","GLOBAL",1)
		  EscapeAreaObject("travys0413")~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToRimon","GLOBAL",1)
    Global("ysCreateAkil","GLOBAL",1)~ THEN BEGIN 10
	SAY @4909
	IF ~~ THEN EXTERN YSAKIL 200
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
  SAY @4910
	IF ~~ THEN REPLY @4911 EXTERN YSAKIL 201
	IF ~~ THEN REPLY @4912 EXTERN YSAKIL 202
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @4913
	IF ~~ THEN REPLY @4914 GOTO 14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 13
	SAY @4915
	IF ~~ THEN REPLY @4916 GOTO 14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 14
  SAY@4917
	IF ~~ THEN REPLY @4918 GOTO 15
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 15
	SAY @4919
	IF ~~ THEN EXTERN YSAKIL 203
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 16
	SAY @4920
	IF ~~ THEN
	 DO ~SetGlobal("ysTalkedToRimon","GLOBAL",2)
		 AddJournalEntry(@159,QUEST)
		 EscapeAreaObject("travys0413")~
	EXIT
END


CHAIN YSAKIL 200
	@4921
EXTERN YSRIMON 11

CHAIN YSAKIL 201
  @4922
EXTERN YSRIMON 12

CHAIN YSAKIL 202
  @4923
EXTERN YSRIMON 13

CHAIN YSAKIL 203
  @4924
  =@4925
  =@4926
EXTERN YSRIMON 16
