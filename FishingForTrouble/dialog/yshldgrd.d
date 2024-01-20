BEGIN yshldgrd

IF ~RandomNum(8,8)~ THEN BEGIN BLK1
    SAY @6000
    IF~~THEN EXIT
END

IF ~RandomNum(8,1)
		GlobalLT("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK2
    SAY @6001
    IF~~THEN EXIT
END

IF ~RandomNum(8,1)
		Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK3
    SAY @6002
    IF~~THEN EXIT
END

IF ~RandomNum(8,2)~ THEN BEGIN BLK4
    SAY @6003
    IF~~THEN EXIT
END

IF ~RandomNum(8,3)~ THEN BEGIN BLK5
    SAY @6004
    IF~~THEN EXIT
END

IF ~RandomNum(8,4)~ THEN BEGIN BLK6
    SAY @6005
    IF~~THEN EXIT
END

IF ~RandomNum(8,5)
		GlobalLT("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK7
    SAY @6006
    IF~~THEN EXIT
END

IF ~RandomNum(8,5)
		Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK8
    SAY @6007
    IF~~THEN EXIT
END

IF ~RandomNum(8,6)
		GlobalLT("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK9
    SAY @6008
    IF~~THEN EXIT
END

IF ~RandomNum(8,6)
		Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK10
    SAY @6009
    IF~~THEN EXIT
END

IF ~RandomNum(8,7)
		GlobalLT("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK11
    SAY @6010
    IF~~THEN EXIT
END

IF ~RandomNum(8,7)
		Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK12
    SAY @6011
    IF~~THEN EXIT
END
