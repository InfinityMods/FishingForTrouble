BEGIN yscdmer

IF ~RandomNum(10,1)~ THEN BEGIN merch1
  	SAY @3920
    IF~~THEN EXIT
END

IF ~RandomNum(10,2)~ THEN BEGIN merch2
  	SAY @3921
    IF~~THEN EXIT
END

IF ~RandomNum(10,3)~ THEN BEGIN merch3
  	SAY @3922
    IF~~THEN EXIT
END

IF ~RandomNum(10,4)~ THEN BEGIN merch4
  	SAY @3923
    IF~~THEN EXIT
END

IF ~RandomNum(10,5)~ THEN BEGIN merch5
  	SAY @3924
    IF~~THEN EXIT
END

IF ~RandomNum(10,6)~ THEN BEGIN merch6
	SAY @3925
  IF~~THEN
    DO ~SetGlobal("ystalk","GLOBAL",1)~
    REPLY@3926 GOTO merch61
  IF~~THEN
    DO ~SetGlobal("ystalk","GLOBAL",1)~
    REPLY@3927 GOTO merch62
  IF~~THEN
    REPLY@3928
    EXIT
END

IF ~Global("ystalk","GLOBAL",1)~ THEN BEGIN merch61
    SAY @3929
    IF~~THEN
      DO ~SetGlobal("ystalk","GLOBAL",0)~
    REPLY@3930
    EXIT
END

IF ~Global("ystalk","GLOBAL",1)~ THEN BEGIN merch62
    SAY @3931
    IF~~THEN
      DO ~SetGlobal("ystalk","GLOBAL",0)~
    EXIT
END

IF ~RandomNum(10,7)~ THEN BEGIN merch7
  	SAY @3932
    IF~~THEN EXIT
END

IF ~RandomNum(10,8)~ THEN BEGIN merch8
	SAY @3933
  IF~~THEN
    DO ~SetGlobal("ystalk","GLOBAL",1)~
    REPLY@3934 GOTO merch81
  IF~~THEN
    DO ~SetGlobal("ystalk","GLOBAL",1)~
    REPLY@3935 GOTO merch82
  IF~~THEN
    REPLY@3936
    EXIT
END

IF ~Global("ystalk","GLOBAL",1)~ THEN BEGIN merch81
    SAY @3937
    IF~~THEN REPLY@3938 GOTO merch83
END

IF ~Global("ystalk","GLOBAL",1)~ THEN BEGIN merch82
    SAY @3939
    IF~~THEN
      DO ~SetGlobal("ystalk","GLOBAL",0)~
    EXIT
END

IF ~Global("ystalk","GLOBAL",1)~ THEN BEGIN merch83
    SAY @3940
    IF~~THEN
      DO ~SetGlobal("ystalk","GLOBAL",0)~
    EXIT
END

IF ~RandomNum(10,9)~ THEN BEGIN merch9
  	SAY @3941
    IF~~THEN EXIT
END

IF ~RandomNum(10,10)~ THEN BEGIN merch10
  	SAY @3942
    IF~~THEN EXIT
END
