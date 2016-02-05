BEGIN ysmuktar

IF ~Global("ys_SpeakToMukhtar","GLOBAL",0)~ THEN BEGIN 0
	SAY @4330
	IF~Global("ysTalkedToKarim","GLOBAL",3)~THEN REPLY @4331 GOTO 1
	IF~!Global("ysTalkedToKarim","GLOBAL",3)~THEN REPLY @4332 EXIT
	IF~~THEN REPLY @4333 EXIT
END

//---------------------------------------------------------
IF ~Global("ys_SpeakToMukhtar","GLOBAL",0)~ THEN BEGIN 1
	SAY @4334
	IF~CheckStatLT(LastTalkedToBy(Myself),13,CHR)~THEN REPLY @4335 GOTO 2
	IF~CheckStatGT(LastTalkedToBy(Myself),12,CHR)~THEN REPLY @4335 GOTO 3
	IF~~THEN REPLY @4336 EXIT
END

//---------------------------------------------------------
IF ~Global("ys_SpeakToMukhtar","GLOBAL",0)~ THEN BEGIN 2
	SAY @4337
	IF~~THEN
		DO ~SetGlobal("ys_SpeakToMukhtar","GLOBAL",1)~
	REPLY @4338 EXIT
END

//---------------------------------------------------------
IF ~Global("ys_SpeakToMukhtar","GLOBAL",0)~ THEN BEGIN 3
	SAY @4339
	IF~~THEN REPLY @4340 GOTO 5
	IF~~THEN REPLY @4341 GOTO 4
END

//---------------------------------------------------------
IF ~Global("ys_SpeakToMukhtar","GLOBAL",0)~ THEN BEGIN 4
	SAY @4342
	IF~~THEN
		DO ~SetGlobal("ys_SpeakToMukhtar","GLOBAL",1)~
	REPLY @4338 EXIT
END

//---------------------------------------------------------
IF ~Global("ys_SpeakToMukhtar","GLOBAL",0)~ THEN BEGIN 5
	SAY @4343
	IF~~THEN REPLY @4344 GOTO 6
	IF~~THEN REPLY @4345 GOTO 7
END

//---------------------------------------------------------
IF ~Global("ys_SpeakToMukhtar","GLOBAL",0)~ THEN BEGIN 6
	SAY @4346
	IF~~THEN REPLY @4347
		DO ~SetGlobal("ys_SpeakToMukhtar","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ys_SpeakToMukhtar","GLOBAL",0)~ THEN BEGIN 7
	SAY @4348
	IF~~THEN EXTERN YSJEHAN KARIM
END

//---------------------------------------------------------
IF ~Global("ys_SpeakToMukhtar","GLOBAL",0)~ THEN BEGIN 10
	SAY @4349
	IF~~THEN REPLY @4350
		DO ~SetGlobal("ys_SpeakToMukhtar","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_SpeakToMukhtar","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
//Jehan
//---------------------------------------------------------
CHAIN YSJEHAN KARIM
	@4351
EXTERN ysmuktar 10
