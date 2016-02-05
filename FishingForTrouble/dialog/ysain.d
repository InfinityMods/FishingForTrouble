BEGIN ysain

IF ~Global("ysTalkedToAin","GLOBAL",0)
		Global("ysTalkedToGivon","GLOBAL",0)~ THEN BEGIN 0
	SAY @4420
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAin","GLOBAL",0)
		Global("ysTalkedToGivon","GLOBAL",1)~ THEN BEGIN 1
	SAY @4421
	IF~~THEN EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToAin","GLOBAL",0)
		Global("ysTalkedToGivon","GLOBAL",3)~ THEN BEGIN 2
	SAY @4422
	IF~~THEN
		DO~SetGlobal("ysTalkedToAin","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END

