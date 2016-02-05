BEGIN ysyasar

IF ~Global("ysTalkedToYasar","GLOBAL",0)~ THEN BEGIN 0
	SAY @4370
	IF~~THEN REPLY @4371 GOTO 1
	IF~~THEN REPLY @4372
	 DO~SetGlobal("ysTalkedToYasar","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToYasar","GLOBAL",0)~ THEN BEGIN 1
	SAY @4373
	IF~~THEN REPLY @4374 GOTO 2
	IF~~THEN REPLY @4375 GOTO 2
	IF~~THEN REPLY @4376 GOTO 2
	IF~~THEN REPLY @4377 GOTO 2
	IF~~THEN REPLY @4378 GOTO 2
	IF~~THEN REPLY @4379 GOTO 2
	IF~~THEN REPLY @4380 GOTO 2
END

//---------------------------------------------------------
IF ~Global("ysTalkedToYasar","GLOBAL",0)~ THEN BEGIN 2
	SAY @4381
	IF~~THEN REPLY @4382 GOTO 3
END

//---------------------------------------------------------
IF ~Global("ysTalkedToYasar","GLOBAL",0)~ THEN BEGIN 3
	SAY @4383
	IF~~THEN
	 DO~SetGlobal("ysTalkedToYasar","GLOBAL",1)
   RandomWalk()~
	EXIT
END

//---------------------------------------------------------
//IF ~Global("ysTalkedToYasar","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF~~THEN REPLY ~~ GOTO
//	IF~~THEN REPLY ~~ GOTO
//END
