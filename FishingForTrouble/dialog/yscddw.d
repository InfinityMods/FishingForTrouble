BEGIN yscddw

IF ~RandomNum(6,1)
		Gender(Myself, MALE)~ THEN BEGIN res01
	SAY @3970
	IF~~THEN EXIT
END

IF ~RandomNum(6,1)
		Gender(Myself, FEMALE)~ THEN BEGIN res02
	SAY @3971
	IF~~THEN EXIT
END

IF ~RandomNum(6,2)
		Gender(Myself, MALE)~ THEN BEGIN res11
	SAY @3972
	IF~~THEN EXIT
END

IF ~RandomNum(6,2)
		Gender(Myself, FEMALE)~ THEN BEGIN res12
	SAY @3971
	IF~~THEN EXIT
END

IF ~RandomNum(6,3)
		Gender(Myself, MALE)~ THEN BEGIN res21
	SAY @3973
	IF~~THEN EXIT
END

IF ~RandomNum(6,3)
		Gender(Myself, FEMALE)~ THEN BEGIN res22
	SAY @3974
	IF~~THEN EXIT
END

IF ~RandomNum(6,4)
		Gender(Myself, MALE)~ THEN BEGIN res31
	SAY @3975
	IF~~THEN EXIT
END

IF ~RandomNum(6,4)
		Gender(Myself, FEMALE)~ THEN BEGIN res32
	SAY @3974
	IF~~THEN EXIT
END

IF ~RandomNum(6,5)
		Gender(Myself, MALE)~ THEN BEGIN res41
	SAY @3976
	IF~~THEN EXIT
END

IF ~RandomNum(6,5)
		Gender(Myself, FEMALE)~ THEN BEGIN res42
	SAY @3977
	IF~~THEN EXIT
END

IF ~RandomNum(6,6)
		Gender(Myself, MALE)~ THEN BEGIN res51
	SAY @3978
	IF~~THEN EXIT
END

IF ~RandomNum(6,6)
		Gender(Myself, FEMALE)~ THEN BEGIN res52
	SAY @3977
	IF~~THEN EXIT
END

