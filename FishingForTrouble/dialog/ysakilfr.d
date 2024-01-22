BEGIN ~ysakilfr~

IF ~RandomNum(3,1)~ THEN BEGIN 0
  SAY @570
  IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(3,2)~ THEN BEGIN 1
  SAY @571
  IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~RandomNum(3,3)~ THEN BEGIN 2
  SAY @572
  IF ~~ THEN EXIT
END
