BEGIN ~YSCOOK1~

//---------------------------------------------------------
IF~Global("ysTalkedToCountess","GLOBAL",3)
	 Global("ysTalkedToCerendorCook","GLOBAL",0)
	 OR(2)
		RACE(Protagonist,ELF)
	  RACE(Protagonist,HALF_ELF)~ THEN BEGIN 10
	SAY@6200
  IF~~THEN REPLY @6201 GOTO 11
	IF~~THEN REPLY @6202 GOTO 12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @6203
	IF~~THEN REPLY @6204 GOTO 30
END

//--------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @6205
	IF~~THEN REPLY @6206 GOTO 30
END

//---------------------------------------------------------
IF~Global("ysTalkedToCountess","GLOBAL",3)
	 Global("ysTalkedToCerendorCook","GLOBAL",0)
	!RACE(Protagonist,ELF)
	!RACE(Protagonist,HALF_ELF)~ THEN BEGIN 20
	SAY@6207
  IF~~THEN REPLY @6208 GOTO 21
  IF~~THEN REPLY @6209 GOTO 25
END

//--------------------------------------------------
IF ~~ THEN BEGIN 21
	SAY @6210
	IF~~THEN REPLY @6211 GOTO 25
  IF~~THEN REPLY @6212 GOTO 30
END

//--------------------------------------------------
IF ~~ THEN BEGIN 25
	SAY @6213
	IF~~THEN REPLY @6214 GOTO 26
END

//--------------------------------------------------
IF ~~ THEN BEGIN 26
	SAY @6215
	IF~~THEN REPLY @6216 GOTO 27
END

//--------------------------------------------------
IF ~~ THEN BEGIN 27
	SAY @6217
	IF~~THEN REPLY @6218 GOTO 31
END

//--------------------------------------------------
IF ~~ THEN BEGIN 30
	SAY @6219
	IF~~THEN REPLY @6220 GOTO 31
END

//--------------------------------------------------
IF ~~ THEN BEGIN 31
	SAY @6221
	IF~~THEN REPLY @6222 GOTO 32
END

//--------------------------------------------------
IF ~~ THEN BEGIN 32
	SAY @6223
	IF~~THEN REPLY @6224 GOTO 33
END

//--------------------------------------------------
IF ~~ THEN BEGIN 33
	SAY @6225
	IF~~THEN REPLY @6226 GOTO 34
END

//--------------------------------------------------
IF ~~ THEN BEGIN 34
	SAY @6227
	IF~~THEN REPLY @6228GOTO 35
END

//--------------------------------------------------
IF ~~ THEN BEGIN 35
	SAY @6229
	IF~~THEN
	DO~SetGlobal("ysTalkedToCerendorCook","GLOBAL",1)~
	UNSOLVED_JOURNAL @67
	EXIT
END

//--------------------------------------------------
IF ~StateCheck(Myself,STATE_CHARMED)~ THEN BEGIN 4
  SAY @6230
  IF ~~ THEN EXIT
END

//--------------------------------------------------
IF ~NumTimesTalkedTo(1)~ THEN BEGIN 2
  SAY @6237
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(2)~ THEN BEGIN 3
  SAY @6238
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
	  !RACE(Protagonist,ELF)
	  !RACE(Protagonist,HALF_ELF)~ THEN BEGIN 0
  SAY @6231
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(0)
	OR(2)
	  RACE(Protagonist,ELF)
	  RACE(Protagonist,HALF_ELF)~ THEN BEGIN 1
  SAY @6232
  IF ~RACE(Protagonist,ELF)~ THEN REPLY @6233GOTO 01
  IF ~RACE(Protagonist,HALF_ELF)~ THEN REPLY @6234GOTO 02
END

IF~~THEN BEGIN 01
  SAY@6235
	IF~~THEN EXIT
END

IF~~THEN BEGIN 02
  SAY@6236
	IF~~THEN EXIT
END

IF ~True()~ THEN BEGIN 4
  SAY @6239
  IF ~~ THEN EXIT
END
