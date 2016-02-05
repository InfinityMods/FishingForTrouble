BEGIN yseunch

IF ~Global("ysTalkedToEunuch","GLOBAL",0)~ THEN BEGIN 0
	SAY @866
	IF~~THEN
		DO~SetGlobal("ysTalkedToEunuch","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToEunuch","GLOBAL",1)~ THEN BEGIN 1
	SAY @867
	IF~~THEN EXIT
END

