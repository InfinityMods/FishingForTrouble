BEGIN ysapopm

IF ~RandomNum(6,1)~ THEN BEGIN 0
	SAY @2530
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(6,2)~ THEN BEGIN 1
	SAY @2531
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(6,3)~ THEN BEGIN 2
	SAY @2532
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(6,4)
		InParty("KAGAIN")~ THEN BEGIN 3
	SAY @2533
	IF~~THEN EXTERN KAGAIJ ATHPOP1
END

//---------------------------------------------------------
IF ~RandomNum(6,5)
		OR(2)
			InParty("JAHEIRA")
			InParty("CERND")~ THEN BEGIN 4
	SAY @2534
	IF~InParty("JAHEIRA")~THEN EXTERN JAHEIRAJ ATHPOP1
	IF~InParty("CERND")~THEN EXTERN CERNDJ ATHPOP1
END

//---------------------------------------------------------
IF ~RandomNum(6,6)
		InParty("EDWIN")~ THEN BEGIN 5
	SAY @2535
	IF~~THEN EXTERN EDWINJ ATHPOP1
END

//---------------------------------------------------------
CHAIN EDWINJ ATHPOP1
  @2536
EXIT

CHAIN JAHEIRAJ ATHPOP1
  @2537
EXIT

CHAIN CERNDJ ATHPOP1
  @2538
EXIT

CHAIN KAGAIJ ATHPOP1
  @2539
EXIT
