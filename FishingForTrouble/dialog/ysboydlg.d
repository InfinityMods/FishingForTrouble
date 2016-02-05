//---------------------------------------------------
BEGIN ysboydlg
//Boys
IF ~RandomNum(6,0)
    Gender (Player1,MALE)~ THEN BEGIN boy1
    SAY @1950
    IF~~THEN EXIT
END

IF ~RandomNum(6,0)
    Gender (Player1,FEMALE)~ THEN BEGIN boy11
    SAY @1951
    IF~~THEN EXIT
END

IF ~RandomNum(6,1)
    Gender (Player1,MALE)~ THEN BEGIN boy2
    SAY @1952
    IF~~THEN EXIT
END

IF ~RandomNum(6,1)
    Gender (Player1,FEMALE)~ THEN BEGIN boy12
    SAY @1953
    IF~~THEN EXIT
END

IF ~RandomNum(6,2)~ THEN BEGIN boy3
    SAY @1954
    IF~~THEN EXIT
END

IF ~RandomNum(6,3)~ THEN BEGIN boy4
    SAY @1955
    IF~~THEN EXIT
END

IF ~RandomNum(6,4)~ THEN BEGIN boy5
    SAY @1956
    IF~~THEN EXIT
END

IF ~RandomNum(6,5)
    Gender (Player1,MALE)~ THEN BEGIN boy6
    SAY @1957
    IF~~THEN EXIT
END

IF ~RandomNum(6,6)
    Gender (Player1,FEMALE)~ THEN BEGIN boy6
    SAY @1958
    IF~~THEN EXIT
END

