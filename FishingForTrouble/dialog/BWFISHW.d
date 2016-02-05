// creator  : DLTCEP_enhanced_WeiDU (version 192)
// argument : BFISHW2.DLG
// game     : .
// source   : ./override/BFISHW2.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN BWFISH2 // non-zero flags may indicate non-pausing dialogue
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #5 /* Triggers after states #: 3 4 5 6 7 even though they appear after this state */
~RandomNum(3,1)
~ THEN BEGIN 0 // from:
  SAY @2080 /* #26257 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 3 4 5 6 7 even though they appear after this state */
~RandomNum(3,2)
~ THEN BEGIN 1 // from:
  SAY @2081 /* #26258 */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 3 4 5 6 7 even though they appear after this state */
~RandomNum(3,3)
~ THEN BEGIN 2 // from:
  SAY @2082 /* #26259 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~RandomNum(3,1)
~ THEN BEGIN 3 // from:
  SAY @2083 /* #26260 */
  IF ~~ THEN EXIT
END

IF WEIGHT #1 ~RandomNum(3,1)
~ THEN BEGIN 4 // from:
  SAY @2084 /* #26261 */
  IF ~~ THEN EXIT
END
