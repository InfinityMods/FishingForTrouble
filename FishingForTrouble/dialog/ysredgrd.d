BEGIN ysredgrd

IF ~RandomNum(6,1)~ THEN BEGIN BLK1
    SAY @6020
    IF~~THEN EXIT
END

IF ~RandomNum(6,2)~ THEN BEGIN BLK2
    SAY @6021
    IF~~THEN EXIT
END

IF ~RandomNum(6,3)~ THEN BEGIN BLK3
    SAY @6022
    IF~~THEN EXIT
END

IF ~RandomNum(6,4)~ THEN BEGIN BLK4
    SAY @6023
    IF~~THEN EXIT
END

IF ~RandomNum(6,5)~ THEN BEGIN BLK5
    SAY @6024
    IF~~THEN EXIT
END

IF ~RandomNum(6,6)~ THEN BEGIN BLK6
    SAY @6025
    IF~~THEN EXIT
END
