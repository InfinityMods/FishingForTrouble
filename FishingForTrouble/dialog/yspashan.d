BEGIN yspashan

IF ~Global("ys_TalkedToPashan","GLOBAL",0)~ THEN BEGIN 0
	SAY @3700
	IF~~THEN REPLY @3701
    DO~SetGlobal("ys_TalkedToPashan","GLOBAL",1)~
  EXIT
	IF~~THEN REPLY @3702 GOTO 10
	IF~~THEN REPLY @3703 GOTO 1
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToPashan","GLOBAL",1)~ THEN BEGIN 1000
	SAY @3704
	IF~~THEN REPLY @3701 EXIT
	IF~~THEN REPLY @3705 GOTO 10
	IF~~THEN REPLY @3703 GOTO 1
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToPashan","GLOBAL",0)~ THEN BEGIN 1
	SAY @3706
	IF~~THEN
		DO~SetGlobal("ys_TalkedToPashan","GLOBAL",2)
    EscapeArea()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @3707
	IF~~THEN REPLY @3708
		DO~SetGlobal("ys_TalkedToPashan","GLOBAL",1)~
  EXIT
	IF~~THEN REPLY @3709 GOTO 40
	IF~~THEN REPLY @3710 GOTO 50
	IF~~THEN REPLY @3711 GOTO 60
	IF~~THEN REPLY @3712 GOTO 70
	IF~~THEN REPLY @3713 GOTO 20
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 20
	SAY @3714
	IF~~THEN REPLY @3715 GOTO 30
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 30
	SAY @3716
	IF~~THEN REPLY @3708
		DO~SetGlobal("ys_TalkedToPashan","GLOBAL",1)~
  EXIT
	IF~~THEN REPLY @3709 GOTO 40
	IF~~THEN REPLY @3710 GOTO 50
	IF~~THEN REPLY @3711 GOTO 60
	IF~~THEN REPLY @3712 GOTO 70
	IF~~THEN REPLY @3717 GOTO 80
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 40
	SAY @3718
	IF~~THEN REPLY @3708
		DO~SetGlobal("ys_TalkedToPashan","GLOBAL",1)~
  EXIT
	IF~~THEN REPLY @3710 GOTO 50
	IF~~THEN REPLY @3711 GOTO 60
	IF~~THEN REPLY @3712 GOTO 70
	IF~~THEN REPLY @3713 GOTO 20
	IF~~THEN REPLY @3717 GOTO 80
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 50
	SAY @3719
	IF~~THEN REPLY @3708
		DO~SetGlobal("ys_TalkedToPashan","GLOBAL",1)~
  EXIT
	IF~~THEN REPLY @3709 GOTO 40
	IF~~THEN REPLY @3711 GOTO 60
	IF~~THEN REPLY @3712 GOTO 70
	IF~~THEN REPLY @3713 GOTO 20
	IF~~THEN REPLY @3717 GOTO 80
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 60
	SAY @3720
	IF~~THEN REPLY @3708
		DO~SetGlobal("ys_TalkedToPashan","GLOBAL",1)~
  EXIT
	IF~~THEN REPLY @3709 GOTO 40
	IF~~THEN REPLY @3710 GOTO 50
	IF~~THEN REPLY @3712 GOTO 70
	IF~~THEN REPLY @3713 GOTO 20
	IF~~THEN REPLY @3717 GOTO 80
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 70
	SAY @3721
	IF~~THEN REPLY @3708
		DO~SetGlobal("ys_TalkedToPashan","GLOBAL",1)~
  EXIT
	IF~~THEN REPLY @3709 GOTO 40
	IF~~THEN REPLY @3710 GOTO 50
	IF~~THEN REPLY @3711 GOTO 60
	IF~~THEN REPLY @3713 GOTO 20
	IF~~THEN REPLY @3717 GOTO 80
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 80
	SAY @3722
	IF~~THEN REPLY @3723 GOTO 90
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 90
	SAY @3724
	IF~~THEN REPLY @3725 GOTO 100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 100
	SAY @3726
	IF~~THEN REPLY @3708
		DO~SetGlobal("ys_TalkedToPashan","GLOBAL",1)~
  EXIT
	IF~~THEN REPLY @3709 GOTO 40
	IF~~THEN REPLY @3710 GOTO 50
	IF~~THEN REPLY @3711 GOTO 60
	IF~~THEN REPLY @3712 GOTO 70
	IF~~THEN REPLY @3713 GOTO 20
END
