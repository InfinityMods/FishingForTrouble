
BEGIN ~yssanob1~

IF ~RandomNum(4,1)~ THEN BEGIN 1
  SAY @2500
  IF ~~ THEN 
  EXIT
END
//----------------------------
IF ~RandomNum(4,2)~ THEN BEGIN 2
  SAY @2501
  IF ~~ THEN
  EXIT
END

//----------------------------
IF ~RandomNum(4,3)~ THEN BEGIN 3
  SAY @2502
  IF ~~ THEN
  EXIT
END

//----------------------------
IF ~RandomNum(4,4)~ THEN BEGIN 4
  SAY @2503
  IF ~~ THEN
  EXIT
END
