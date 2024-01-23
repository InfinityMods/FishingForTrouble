BEGIN yscdpop

IF ~RandomNum(13,1)~ THEN BEGIN res1
	SAY @3950
	IF~~ THEN EXIT
END

IF ~RandomNum(13,2)
    Global("ysCaveBlocked","GLOBAL",2)~ THEN BEGIN res3
	SAY @3951
	IF~~ THEN EXIT
END

IF ~RandomNum(13,2)
    !Global("ysCaveBlocked","GLOBAL",2)~ THEN BEGIN res4
	SAY @3952
	IF~~ THEN EXIT
END

IF ~RandomNum(13,3)
		!AreaCheck("ys0413")~ THEN BEGIN res51
	SAY @3953
	IF~~ THEN EXIT
END

IF ~RandomNum(13,3)
		AreaCheck("ys0413")~ THEN BEGIN res52
	SAY @3954
	IF~~ THEN EXIT
END

IF ~RandomNum(13,4)~ THEN BEGIN res6
	SAY @3955
	IF~~ THEN EXIT
END

IF ~RandomNum(13,5)~ THEN BEGIN res7
	SAY @3956
	IF~~ THEN EXIT
END

IF ~RandomNum(13,6)
    Gender(Myself,FEMALE)~ THEN BEGIN res8
	SAY @3957
	IF~~ THEN EXIT
END

IF ~RandomNum(13,6)
    Gender(Myself,MALE)~ THEN BEGIN res9
	SAY @3958
	IF~~ THEN EXIT
END

IF ~RandomNum(13,7)
    Gender(Myself,FEMALE)~ THEN BEGIN res10
	SAY @3959
	IF~~ THEN EXIT
END

IF ~RandomNum(13,7)
    Gender(Myself,MALE)~ THEN BEGIN res11
	SAY @3960
	IF~~ THEN EXIT
END

IF ~RandomNum(13,8)~ THEN BEGIN res12
	SAY @3961
	IF~~ THEN EXIT
END

IF ~RandomNum(13,9)
		AreaCheck("ys0413")~ THEN BEGIN res131
    SAY @3962
	IF~~ THEN EXIT
END

IF ~RandomNum(13,9)
		!AreaCheck("ys0413")~ THEN BEGIN res132
    SAY @3963
	IF~~ THEN EXIT
END

IF ~RandomNum(13,10)~ THEN BEGIN res0
	SAY @3964
	IF~~ THEN EXIT
END

IF ~RandomNum(13,11)
		AreaCheck("ys0413")~ THEN BEGIN res13
	SAY @3965
	IF~~ THEN EXIT
END

IF ~RandomNum(13,11)
		!AreaCheck("ys0413")~ THEN BEGIN res14
	SAY @3964
	IF~~ THEN EXIT
END

IF ~RandomNum(13,12)
		AreaCheck("ys0413")~ THEN BEGIN res15
	SAY @3966
	IF~~ THEN EXIT
END

IF ~RandomNum(13,12)
		!AreaCheck("ys0413")~ THEN BEGIN res16
	SAY @3956
	IF~~ THEN EXIT
END

IF ~RandomNum(13,13)
		AreaCheck("ys0413")~ THEN BEGIN res17
	SAY @3967
	IF~~ THEN EXIT
END

IF ~RandomNum(13,13)
		!AreaCheck("ys0413")
		Gender(Myself,MALE)~ THEN BEGIN res18
	SAY @3958
	IF~~ THEN EXIT
END

IF ~RandomNum(13,13)
		!AreaCheck("ys0413")
		Gender(Myself,FEMALE)~ THEN BEGIN res19
	SAY @3959
	IF~~ THEN EXIT
END
