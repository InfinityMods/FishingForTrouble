BEGIN ~YSMCOOK~

IF ~NumTimesTalkedTo(0)
~ THEN BEGIN 0 // from:
  SAY @1080 /* #7634 */
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)
~ THEN BEGIN 1 // from:
  SAY @1081 /* #7635 */
  IF ~~ THEN EXIT
END

IF ~True()
~ THEN BEGIN 2 // from:
  SAY @1082 /* #7636 */
  IF ~~ THEN EXIT
END

IF ~StateCheck(Myself,STATE_CHARMED)
~ THEN BEGIN 3 // from:
  SAY @1083 /* #7637 */
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN 4 // from:
  SAY @1084 /* #9183 */
  IF ~~ THEN EXIT
END
