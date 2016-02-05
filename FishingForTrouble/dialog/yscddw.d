BEGIN yscddw

IF ~RandomNum(6,1)
		Gender(Myself, MALE)~ THEN BEGIN res0
	SAY @3970
	IF~~THEN EXIT
END

IF ~RandomNum(6,1)
		Gender(Myself, FEMALE)~ THEN BEGIN res0
	SAY @3971
	IF~~THEN EXIT
END

IF ~RandomNum(6,2)
		Gender(Myself, MALE)~ THEN BEGIN res1
	SAY @3972
	IF~~THEN EXIT
END

IF ~RandomNum(6,2)
		Gender(Myself, FEMALE)~ THEN BEGIN res1
	SAY @3971
	IF~~THEN EXIT
END

IF ~RandomNum(6,3)
		Gender(Myself, MALE)~ THEN BEGIN res2
	SAY @3973
	IF~~THEN EXIT
END

IF ~RandomNum(6,3)
		Gender(Myself, FEMALE)~ THEN BEGIN res2
	SAY @3974
	IF~~THEN EXIT
END

IF ~RandomNum(6,4)
		Gender(Myself, MALE)~ THEN BEGIN res3
	SAY @3975
	IF~~THEN EXIT
END

IF ~RandomNum(6,4)
		Gender(Myself, FEMALE)~ THEN BEGIN res3
	SAY @3974
	IF~~THEN EXIT
END

IF ~RandomNum(6,5)
		Gender(Myself, MALE)~ THEN BEGIN res4
	SAY @3976
	IF~~THEN EXIT
END

IF ~RandomNum(6,5)
		Gender(Myself, FEMALE)~ THEN BEGIN res4
	SAY @3977
	IF~~THEN EXIT
END

IF ~RandomNum(6,6)
		Gender(Myself, MALE)~ THEN BEGIN res5
	SAY @3978
	IF~~THEN EXIT
END

IF ~RandomNum(6,6)
		Gender(Myself, FEMALE)~ THEN BEGIN res5
	SAY @3977
	IF~~THEN EXIT
END

