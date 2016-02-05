BEGIN yscrnbl

//ClearedHold is a possible for killing all guards in the hold
//---------------------------------------------------------
IF ~Global("ys_cernbell","GLOBAL",0)
		Global("ys_ClearedHold","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @1490
	IF~~THEN REPLY @1491 GOTO BLK1
 	IF~~THEN REPLY @1492
 	  DO~ActionOverride("yscrnbl",DestroySelf())~
   EXIT
END

//---------------------------------------------------------
//Trigger the gatehouse guard cutscene
IF ~Global("ys_cernbell","GLOBAL",0)
		Global("ys_ClearedHold","GLOBAL",0)~ THEN BEGIN BLK1
	SAY @1493
	IF~~THEN
		DO~
		  ActionOverride("yscrnbl",DestroySelf())
      ClearAllActions()
      StartCutSceneMode()
      StartCutScene("yscutgte")~
    EXIT
END

//---------------------------------------------------------
IF ~Global("ys_cernbell","GLOBAL",0)
		Global("ys_ClearedHold","GLOBAL",1)~ THEN BEGIN BLK2
	SAY @1490
	IF~~THEN REPLY @1491 GOTO BLK3
 	IF~~THEN REPLY @1492
 	  DO~ActionOverride("yscrnbl",DestroySelf())~
   EXIT
END

//---------------------------------------------------------
IF ~Global("ys_cernbell","GLOBAL",0)
		Global("ys_ClearedHold","GLOBAL",1)~ THEN BEGIN BLK3
	SAY @1494
 	IF~~THEN REPLY @1492
 	  DO~ActionOverride("yscrnbl",DestroySelf())~
   EXIT
END

//---------------------------------------------------------
//IF ~Global("ys_cernbell","GLOBAL",0)~ THEN BEGIN BLK
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO BLK
//	IF~~THEN REPLY ~~ GOTO BLK
//END

