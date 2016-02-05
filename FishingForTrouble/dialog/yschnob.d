BEGIN yschnob

IF ~RandomNum(12,1)~ THEN BEGIN BLK1
    SAY @530
    IF~~THEN EXIT
END

IF ~RandomNum(12,2)~ THEN BEGIN BLK2
    SAY @531
    IF~~THEN EXIT
END

IF ~RandomNum(12,3)~ THEN BEGIN BLK3
    SAY @532
    IF~~THEN EXIT
END

IF ~RandomNum(12,4)
		!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK4
    SAY @533
    IF~~THEN EXIT
END

IF ~RandomNum(12,5)
		!Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK5
    SAY @534
    IF~~THEN EXIT
END

IF ~RandomNum(12,6)~ THEN BEGIN BLK6
    SAY @535
    IF~~THEN EXIT
END

IF ~RandomNum(12,7)~ THEN BEGIN BLK7
    SAY @536
    IF~~THEN EXIT
END

IF ~RandomNum(12,8)~THEN BEGIN BLK8
    SAY @537
    IF~~THEN EXIT
END

IF ~RandomNum(12,9)
		!Global("ys_GarrisonFight","GLOBAL",3)~THEN BEGIN BLK9
    SAY @538
    IF~~THEN EXIT
END

IF ~RandomNum(12,10)~ THEN BEGIN BLK10
    SAY @539
    IF~~THEN EXIT
END

IF ~RandomNum(12,11)
		Global("ys_GarrisonFight","GLOBAL",3)~THEN BEGIN BLK10
    SAY @540
    IF~~THEN EXIT
END

IF ~RandomNum(12,12)
		Global("ys_GarrisonFight","GLOBAL",3)~THEN BEGIN BLK11
    SAY @541
    IF~~THEN EXIT
END
