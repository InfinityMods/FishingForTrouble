BEGIN ystigres

IF ~RandomNum(4,1)~ THEN BEGIN res1
	SAY @4480
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(4,2)
		Gender(Myself,MALE)~ THEN BEGIN res2
	SAY @4481
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(4,2)
		Gender(Myself,FEMALE)~ THEN BEGIN res2
	SAY @4482
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(4,3)~ THEN BEGIN res3
	SAY @4483
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(4,4)~ THEN BEGIN res4
	SAY @4484
	IF~~THEN EXIT
END

