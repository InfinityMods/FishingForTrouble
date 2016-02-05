BEGIN ysapopf

IF ~RandomNum(6,1)~ THEN BEGIN 0
	SAY @2520
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(6,2)~ THEN BEGIN 1
	SAY @2521
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(6,3)~ THEN BEGIN 2
	SAY @2522
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(6,4)
		InParty("HAERDALIS")~ THEN BEGIN 3
	SAY @2523
	IF~~THEN EXTERN HAERDAJ ATHPOP2
END

//---------------------------------------------------------
IF ~RandomNum(6,5)
		InParty("MINSC")~ THEN BEGIN 4
	SAY @2524
	IF~~THEN EXTERN MINSCJ ATHPOP2
END

//---------------------------------------------------------
IF ~RandomNum(6,6)
		InParty("AERIE")~ THEN BEGIN 5
	SAY @2525
	IF~~THEN EXTERN AERIEJ ATHPOP2
END

//---------------------------------------------------------
CHAIN HAERDAJ ATHPOP2
  @2526
EXIT

CHAIN MINSCJ ATHPOP2
  @2527
EXIT

CHAIN AERIEJ ATHPOP2
  @2528
EXIT
