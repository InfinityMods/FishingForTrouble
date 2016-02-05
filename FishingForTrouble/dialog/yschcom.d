//--------------------------------------------------
BEGIN yschcom

IF ~RandomNum(12,1)~THEN BEGIN yscom1
    SAY @510
    IF~~THEN EXIT
END

IF ~RandomNum(12,2)~THEN BEGIN yscom2
    SAY @511
    IF~~THEN EXIT
END

IF ~RandomNum(12,3)~THEN BEGIN yscom3
    SAY @512
    IF~~THEN EXIT
END

IF ~RandomNum(12,4)~THEN BEGIN yscom4
    SAY @513
    IF~~THEN EXIT
END

IF ~RandomNum(12,5)~THEN BEGIN yscom5
    SAY @514
    IF~~THEN EXIT
END

IF ~RandomNum(12,6)
		!Global("ys_GarrisonFight","GLOBAL",3)~THEN BEGIN yscom6
    SAY @515
    IF~~THEN EXIT
END

IF ~RandomNum(12,7)
		!Global("ys_GarrisonFight","GLOBAL",3)~THEN BEGIN yscom7
    SAY @516
    IF~~THEN EXIT
END

IF ~RandomNum(12,8)
		!Global("ys_GarrisonFight","GLOBAL",3)~THEN BEGIN yscom8
    SAY @517
    IF~~THEN EXIT
END

IF ~RandomNum(12,9)~THEN BEGIN yscom9
    SAY @518
    IF~~THEN EXIT
END

IF ~RandomNum(12,10)~THEN BEGIN yscom10
    SAY @519
    IF~~THEN EXIT
END

IF ~RandomNum(12,10)
		Global("ys_GarrisonFight","GLOBAL",3)~THEN BEGIN yscom11
    SAY @520
    IF~~THEN EXIT
END

IF ~RandomNum(12,10)
		Global("ys_GarrisonFight","GLOBAL",3)~THEN BEGIN yscom12
    SAY @521
    IF~~THEN EXIT
END
