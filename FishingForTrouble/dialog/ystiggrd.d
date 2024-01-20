BEGIN ystiggrd
//---------------------------------------------------------
IF ~!Global("ys_TalkedToTigGuard","GLOBAL",1)~ THEN BEGIN 0
	SAY @3450
	IF ~Global("ys_TalkedToTigGuard","GLOBAL",0)~ THEN REPLY @3451 GOTO 1
	IF ~Global("ys_TalkedToTigGuard","GLOBAL",2)~ THEN REPLY @3451 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @3452
	IF ~!Global("ys_FindColver","GLOBAL",8)~ THEN REPLY @3453 GOTO 3
	IF ~Global("ys_FindColver","GLOBAL",8)~ THEN REPLY @3453 GOTO 4
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToTigGuard","GLOBAL",1)~ THEN BEGIN 2
	SAY @3454
	IF ~!Global("ys_FindColver","GLOBAL",8)~THEN REPLY @3453 GOTO 3
	IF ~Global("ys_FindColver","GLOBAL",8)~THEN REPLY @3453 GOTO 4
END


//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @3455
	IF ~~ THEN
  	DO ~SetGlobal("ys_TalkedToTigGuard","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @3456
	IF ~~ THEN REPLY @3457 GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @3458
	IF ~~ THEN
    DO ~SetGlobal("ys_TalkedToTigGuard","GLOBAL",2)~
  EXIT
END


//---------------------------------------------------------
//IF ~Global("ys_TalkedToTigGuard","GLOBAL",0)
//    Global("ys_FindColver","GLOBAL",8)
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//	IF ~~ THEN REPLY ~~ GOTO
//END
