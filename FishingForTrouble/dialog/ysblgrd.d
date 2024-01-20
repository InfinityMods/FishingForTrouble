BEGIN ysblgrd

IF ~Global("ysblgrd","GLOBAL",0)
    RandomNum(5,1)~ THEN BEGIN BLK0
	SAY @2650
	IF ~~ THEN REPLY @2651 GOTO BLK10
	IF ~~ THEN REPLY @2652 EXIT
END

//---------------------------------------------------------
IF ~Global("ysblgrd","GLOBAL",0)
    RandomNum(5,2)~ THEN BEGIN BLK1
	SAY @2653
	IF ~Gender(Myself,FEMALE)~ THEN REPLY @2654 GOTO BLK11
	IF ~Gender(Myself,FEMALE)~ THEN REPLY @2655 GOTO BLK11
	IF ~Gender(Myself,MALE)~ THEN REPLY @2656 EXIT
END

//---------------------------------------------------------
IF ~Global("ysblgrd","GLOBAL",0)
    RandomNum(5,3)~ THEN BEGIN BLK2
	SAY @2657
	IF ~~ THEN REPLY @2658EXIT
END

//---------------------------------------------------------
IF ~Global("ysblgrd","GLOBAL",0)
    RandomNum(5,4)~ THEN BEGIN BLK3
  SAY@2659
	IF ~~ THEN REPLY @2660 EXIT
END

//---------------------------------------------------------
IF ~Global("ysblgrd","GLOBAL",0)
    RandomNum(5,5)~ THEN BEGIN BLK4
  SAY@2661
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK10
  SAY@2662
	IF ~~ THEN REPLY @2663 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK11
  SAY@2664
	IF ~~ THEN REPLY @2665 EXIT
END

//---------------------------------------------------------
IF ~OR(2)
    Global("ysblgrd","GLOBAL",1)
    Global("ysblgrd","GLOBAL",3)~ THEN BEGIN 0
	SAY @2666
 	IF ~Global("ysblgrd","GLOBAL",1)
		OR(2)
			Global("ys_TalkedToMR","GLOBAL",1)
			Global("ys_TalkedToMR","GLOBAL",2)~ THEN REPLY @2667 GOTO 2
	IF ~Global("ysblgrd","GLOBAL",1)
		Global("ys_TalkedToMR","GLOBAL",0)~ THEN REPLY @2667 GOTO 4
	IF ~Global("ysblgrd","GLOBAL",3)~ THEN REPLY @2667 GOTO 3
	IF ~~ THEN REPLY @2668 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
  SAY@2669
	IF ~~ THEN
		DO ~SetGlobal("ysblgrd","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
  SAY@2670
	IF ~~ THEN REPLY @2671
		DO ~SetGlobal("ysblgrd","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
  SAY@2672
	IF ~~ THEN
		DO ~SetGlobal("ysblgrd","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
  SAY@2673
	IF ~~ THEN
		DO ~SetGlobal("ysblgrd","GLOBAL",2)~
	EXIT
END


//---------------------------------------------------------
//IF ~~ THEN BEGIN
//  Say~~
//	IF ~~ THEN REPLY ~~ GOTO BLK
//	IF ~~ THEN REPLY ~~ GOTO BLK
//END
