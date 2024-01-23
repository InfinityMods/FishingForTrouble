BEGIN ysmandlg

//Men
//-----------------------------------------------
IF ~RandomNum(14,14)~ THEN BEGIN men1
  	SAY @2020
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,1)~ THEN BEGIN men2
	SAY @2021
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,2)~ THEN BEGIN men3
    SAY @2022
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,3)~ THEN BEGIN men4
    SAY @2023
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,4)~ THEN BEGIN men5
	SAY @2024
  IF ~~ THEN
    DO ~SetGlobal("ystalk","GLOBAL",1)~
    REPLY @2025 GOTO men51
  IF ~~ THEN
    DO ~SetGlobal("ystalk","GLOBAL",1)~
    REPLY @2026 GOTO men52
  IF ~~ THEN REPLY @2027 EXIT
END

//-----------------------------------------------
IF ~~ THEN BEGIN men51
    SAY @2028
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~~ THEN BEGIN men52
    SAY @2029
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,5)~ THEN BEGIN men6
    SAY @2030
    IF ~~ THEN
      DO ~SetGlobal("ystalk","GLOBAL",1)~
      REPLY @2031 GOTO men61
    IF ~~ THEN
      DO ~SetGlobal("ystalk","GLOBAL",1)~
      REPLY @2032 GOTO men62
    IF ~~ THEN REPLY @2033 EXIT
END

//-----------------------------------------------
IF ~~ THEN BEGIN men61
    SAY @2034
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~~ THEN BEGIN men62
    SAY @2035
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,6)~ THEN BEGIN fisher0
  	SAY @2036
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,7)~ THEN BEGIN fisher1
  	SAY @2037
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,8)
		AreaCheck("ys0161")~ THEN BEGIN fisher2
  	SAY @2038
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,9)~ THEN BEGIN fisher3
  	SAY @2039
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,10)
		AreaCheck("ys0161")~ THEN BEGIN fisher4
  	SAY @2040
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,11)~ THEN BEGIN fisher5
  	SAY @2041
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,12)~ THEN BEGIN fisher6
  	SAY @2042
    IF ~~ THEN EXIT
END

//-----------------------------------------------
IF ~RandomNum(14,13)~ THEN BEGIN fisher7
  	SAY @2043
    IF ~~ THEN EXIT
END
