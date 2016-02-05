BEGIN yswmnres

IF ~RandomNum(10,1)
		!AreaCheck("ys1001")~ THEN BEGIN res0
	SAY @2000
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(10,2)
		!AreaCheck("ys1001")~ THEN BEGIN res1
	SAY @2001
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(10,3)~ THEN BEGIN res2
	SAY @2002
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(10,4)~ THEN BEGIN res3
	SAY @2003
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(10,5)~ THEN BEGIN res4
	SAY @2004
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(10,6)~ THEN BEGIN res5
	SAY @2005
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(10,7)~ THEN BEGIN res6
	SAY @2006
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(10,8)~ THEN BEGIN res7
	SAY @2007
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(10,9)~ THEN BEGIN res8
	SAY @2008
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(10,10)
		!AreaCheck("ys0161")~ THEN BEGIN res9
	SAY @2009
	IF~~THEN EXIT
END
