// creator  : DLTCEP_enhanced_WeiDU (version 192)
// argument : BFISHER1.DLG
// game     : .
// source   : ./override/BFISHER1.DLG
// dialog   : ./dialog.tlk
// dialogF  : (none)

BEGIN ~BFISHER2~ 2 // non-zero flags may indicate non-pausing dialogue
//////////////////////////////////////////////////
// WARNING: this file contains non-trivial WEIGHTs
//////////////////////////////////////////////////

IF WEIGHT #4 /* Triggers after states #: 4 5 6 7 even though they appear after this state */
~RandomNum(4,1)
~ THEN BEGIN 0 // from:
  SAY @2090 /* #26245 */
  IF ~~ THEN EXIT
END

IF WEIGHT #5 /* Triggers after states #: 4 5 6 7 even though they appear after this state */
~RandomNum(4,2)
~ THEN BEGIN 1 // from:
  SAY @2091 /* #26246 */
  IF ~~ THEN EXIT
END

IF WEIGHT #6 /* Triggers after states #: 4 5 6 7 even though they appear after this state */
~RandomNum(4,3)
~ THEN BEGIN 2 // from:
  SAY @2092 /* #26247 */
  IF ~~ THEN EXIT
END

IF WEIGHT #7 /* Triggers after states #: 4 5 6 7 even though they appear after this state */
~RandomNum(4,4)
~ THEN BEGIN 3 // from:
  SAY @2093 /* #26248 */
  IF ~~ THEN EXIT
END

IF WEIGHT #0 ~Global("InteractAerie","LOCALS",0)
InParty("Aerie")
!StateCheck("Aerie",STATE_SLEEPING)
RandomNum(2,1)
~ THEN BEGIN 4 // from:
  SAY @2094 /* #26251 */
  IF ~~ THEN DO ~SetGlobal("InteractAerie","LOCALS",1)
~ EXTERN ~AERIEJ~ 31
END

IF WEIGHT #1 ~Global("InteractCernd","LOCALS",0)
InParty("Cernd")
!StateCheck("Cernd",STATE_SLEEPING)
RandomNum(2,1)
~ THEN BEGIN 5 // from:
  SAY @2095 /* #26254 */
  IF ~~ THEN DO ~SetGlobal("InteractCernd","LOCALS",1)
~ EXTERN ~CERNDJ~ 77
END

IF WEIGHT #2 ~Global("InteractEdwin","LOCALS",0)
IsValidForPartyDialog("Edwin")
RandomNum(2,1)~ THEN BEGIN 6 // from:
  SAY @2096 /* #48689 */
  IF ~~ THEN DO ~SetGlobal("InteractEdwin","LOCALS",1)~ EXTERN ~EDWINJ~ 54
END

IF WEIGHT #3 ~Global("InteractAnomen","LOCALS",0)
IsValidForPartyDialog("Anomen")
RandomNum(2,1)~ THEN BEGIN 7 // from:
  SAY @2097 /* #48695 */
  IF ~~ THEN DO ~SetGlobal("InteractAnomen","LOCALS",1)~ EXTERN ~ANOMENJ~ 191
END
