//---------------------------------------------------
BEGIN ysgrldlg
//Girls
IF ~RandomNum(5,0)
    Gender (Player1,MALE)~ THEN BEGIN girl1
    SAY @1980
    IF~~THEN EXIT
END

IF ~RandomNum(5,0)
    Gender (Player1,FEMALE)~ THEN BEGIN girl11
    SAY @1981
    IF~~THEN EXIT
END

IF ~RandomNum(5,1)~ THEN BEGIN girl2
    SAY @1982
    IF~~THEN EXIT
END

IF ~RandomNum(5,2)~ THEN BEGIN girl3
    SAY @1983
    IF~~THEN EXIT
END

IF ~RandomNum(5,3)
    Gender (Player1,MALE)~ THEN BEGIN girl4
    SAY @1984
    IF~~THEN EXIT
END

IF ~RandomNum(5,3)
    Gender (Player1,FEMALE)~ THEN BEGIN girl114
    SAY @1985
    IF~~THEN EXIT
END

IF ~RandomNum(5,4)~ THEN BEGIN girl5
    SAY @1986
    IF~~THEN EXIT
END

IF ~RandomNum(5,5)~ THEN BEGIN girl6
    SAY @1987
    IF~~THEN EXIT
END

