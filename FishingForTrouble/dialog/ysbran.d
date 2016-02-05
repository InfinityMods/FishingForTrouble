BEGIN ysbran

IF ~Global("ysYalkedToBran","GLOBAL",0)~ THEN BEGIN 0
	SAY @4600
	IF~~THEN REPLY @4601 GOTO 1
	IF~~THEN REPLY @4602
		DO~SetGlobal("ysYalkedToBran","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4603
	IF~~THEN REPLY @4604 GOTO 2
	IF~~THEN REPLY @4602
		DO~SetGlobal("ysYalkedToBran","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4605
	IF~~THEN
		DO~SetGlobal("ysYalkedToBran","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
//Beholders attacked route
IF ~Global("ysYalkedToBran","GLOBAL",1)
		Global("ysBranIllusion","GLOBAL",1)~ THEN BEGIN 13
	SAY @4606
	IF~~THEN REPLY @4607 GOTO 14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 14
	SAY @4608
	=@4609
	IF~~THEN REPLY @4610 GOTO 15
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 15
	SAY @4611
	IF~~THEN
		DO~SetGlobal("ysYalkedToBran","GLOBAL",4)
			MoveToPoint([431.173])
			EscapeAreaMove("ys0431",507,367,5)~
	EXIT
END

//---------------------------------------------------------
//Beholders not attacked route
IF ~Global("ysYalkedToBran","GLOBAL",1)
		Global("ysBranBehold","GLOBAL",1)~ THEN BEGIN 3
	SAY @4612
	IF~~THEN REPLY @4613 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @4614
	IF~~THEN REPLY @4615 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @4616
	IF~~THEN
		DO~SetGlobal("ysYalkedToBran","GLOBAL",2)
  		ActionOverride("ysbehol1",DestroySelf())
	 	  Deactivate("ysbehol2")
			MoveToPoint([431.173])
			EscapeAreaMove("ys0431",507,367,5)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysYalkedToBran","GLOBAL",2)
		Global("ysBranBehold","GLOBAL",1)~ THEN BEGIN 5
	SAY @4617
	IF~~THEN REPLY @4618 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @4619
	IF~~THEN REPLY @4620 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @4621
	IF~~THEN REPLY @4622 GOTO 8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @4623
	IF~~THEN
		DO~SetGlobal("ysYalkedToBran","GLOBAL",3)
			MoveToPoint([375.483])
			EscapeAreaMove("ys0430",243,435,7)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysYalkedToBran","GLOBAL",3)~ THEN BEGIN 9
	SAY @4624
	IF~~THEN REPLY @4625 GOTO 11
	IF~~THEN REPLY @4626 GOTO 10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @4627
	IF~~THEN
		DO~SetGlobal("ysYalkedToBran","GLOBAL",4)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @4628
	IF~~THEN REPLY @4629 GOTO 12
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @4630
	IF~~THEN
		DO~SetGlobal("ysYalkedToBran","GLOBAL",4)~
	EXIT
END
// Done no-fight path


//---------------------------------------------------------
//IF ~Global("","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END

//---------------------------------------------------------
//IF ~~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END
