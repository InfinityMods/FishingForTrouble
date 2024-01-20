BEGIN ystignch

IF ~Global("ys_TalkedToTigernach","GLOBAL",0)~ THEN BEGIN 0
	SAY @3400
	IF ~~ THEN REPLY @3401 GOTO 1
	IF ~~ THEN REPLY @3402 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @3403
	IF~!InParty("Jaheira")~THEN REPLY @3404 GOTO 4
	IF~InParty("Jaheira")
      StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN REPLY @3404 GOTO 4
	IF~InParty("Jaheira")
      !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN EXTERN JAHEIRAJ TMM1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @3405
	IF ~~ THEN REPLY @3406 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @3407
	IF ~~ THEN REPLY @3408 GOTO 10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @3409
	IF ~~ THEN REPLY @3410 GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @3411
	IF ~~ THEN REPLY @3412 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @3413
	IF ~~ THEN REPLY @3414 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @3415
	IF ~~ THEN
  DO ~GiveItemCreate("ysgldag",Player1,0,0,0)~
  REPLY @3416 GOTO 8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
  SAY@3417
	IF ~~ THEN REPLY @3418 GOTO 9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 9
	SAY @3419
	IF ~~ THEN REPLY @3420
	DO ~SetGlobal("ys_TalkedToTigernach","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @3409
	IF ~~ THEN REPLY @3421 GOTO 11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @3422
	IF ~~ THEN REPLY @3423 GOTO 12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @3424
	IF ~~ THEN
		DO ~GiveItemCreate("ysgldag",Player1,0,0,0)
			SetGlobal("ys_TalkedToTigernach","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_TalkedToTigernach","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END


//---------------------------------------------------------
//Jaheira
CHAIN JAHEIRAJ TMM1
  @3425
EXTERN ystignch 2
