//----------------------------------------------------------------
BEGIN yswmndlg

//Women
//---------------------------------------------------------
IF ~RandomNum(7,1)~ THEN BEGIN women1
    SAY @2050
    IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(7,2)~ THEN BEGIN women2
    SAY @2051
    IF ~~ THEN REPLY @2052 GOTO women21
    IF ~~ THEN REPLY @2053 GOTO women22
    IF ~~ THEN REPLY @2054 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN women21
    SAY @2055
    IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN women22
    SAY @2056
    IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(7,3)~ THEN BEGIN women3
    SAY @2057
    IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(7,4)~ THEN BEGIN women4
    SAY @2058
    IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(7,5)~ THEN BEGIN women5
	 SAY @2059
    IF ~~ THEN REPLY @2060 GOTO women51
    IF ~~ THEN REPLY @2061 GOTO women52
    IF ~~ THEN
      REPLY @2062
      EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN women51
    SAY @2063
    IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN women52
    SAY @2064
    IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(7,6)~ THEN BEGIN women6
    SAY @2065
    IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(7,7)
    Gender(Player1,MALE)~ THEN BEGIN women7
    SAY @2066
    IF ~~ THEN REPLY @2067 GOTO women71
    IF ~~ THEN REPLY @2068 GOTO women72
    IF ~~ THEN REPLY @2069 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN women71
    SAY @2070
    IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN women72
    SAY @2071
    IF ~~ THEN EXIT
END

