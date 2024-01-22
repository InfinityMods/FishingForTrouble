BEGIN yscolla

//Note: two stores.
//---------------------------------------------------------
IF ~Global("ys_TalkedToColla","GLOBAL",1)~ THEN BEGIN 10
	SAY @3350
	IF ~~ THEN REPLY @3351 GOTO 20
	IF ~~ THEN REPLY @3352 EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToColla","GLOBAL",2)~ THEN BEGIN 11
	SAY @3350
	IF ~~ THEN REPLY @3351 GOTO 30
	IF ~~ THEN REPLY @3352 EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToColla","GLOBAL",0)
    GlobalGT("ys_TalkedToTigernach","GLOBAL",1)~ THEN BEGIN 0
	SAY @3353
	IF ~~ THEN REPLY @3354 GOTO 2
	IF ~~ THEN REPLY @3355 GOTO 3
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToColla","GLOBAL",0)
    Global("ys_TalkedToTigernach","GLOBAL",0)~ THEN BEGIN 1
	SAY @3356
	IF ~~ THEN REPLY @3354 GOTO 2
	IF ~~ THEN REPLY @3355 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @3357
	IF ~~ THEN REPLY @3358 GOTO 20
	IF ~~ THEN REPLY @3359
	   DO ~SetGlobal("ys_TalkedToColla","GLOBAL",1)~
  EXIT
END


//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @3360
	IF ~~ THEN REPLY @3361 GOTO 30
	IF ~~ THEN REPLY @3352
	   DO ~SetGlobal("ys_TalkedToColla","GLOBAL",2)~
  EXIT
END

//---------------------------------------------------------
//Open the cheap store
IF ~~ THEN BEGIN 20
    SAY @3362
    IF ~~ THEN
      DO ~StartStore("yscolla1",LastTalkedToBy())~
      EXIT
END

//---------------------------------------------------------
//Open the expensive store
IF ~~ THEN BEGIN 30
    SAY @3362
    IF ~~ THEN
      DO ~StartStore("yscolla2",LastTalkedToBy())~
      EXIT
END

//---------------------------------------------------------
//IF ~Global("","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END
