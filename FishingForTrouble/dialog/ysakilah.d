BEGIN ysakilah

IF ~Global("ysTalkedToAkilah","GLOBAL",0)~ THEN BEGIN 0
	SAY @5050
	IF~Global("ysTalkedToAiesha","GLOBAL",0)~THEN REPLY @5051 GOTO 2
	IF~!Global("ysTalkedToAiesha","GLOBAL",0)~THEN REPLY @5052 GOTO 4
	IF~~THEN REPLY @5053 GOTO 10
	IF~~THEN REPLY @5054 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @5055
	IF~Global("ysTalkedToAiesha","GLOBAL",0)~THEN REPLY @5051 GOTO 2
	IF~~THEN REPLY @5056 GOTO 4
	IF~~THEN REPLY @5057 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @5058
	IF~~THEN
	 DO~SetGlobal("ysTalkedToAkilah","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @5059
	IF~~THEN REPLY @5060 GOTO 3
	IF~~THEN REPLY @5056 GOTO 4
	IF~~THEN REPLY @5061 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @5062
	IF~~THEN REPLY @5056 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @5063
	IF~Global("ysTalkedToAiesha","GLOBAL",0)~THEN REPLY @5064 GOTO 8
	IF~!Global("ysTalkedToAiesha","GLOBAL",0)~THEN REPLY @5065 GOTO 8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @5066
	IF~~THEN REPLY @5067 GOTO 7
	IF~~THEN REPLY ~~ GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @5069
	IF~~THEN
	 DO~SetGlobal("ysTalkedToAkilah","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @5070
	IF~~THEN
	 DO~SetGlobal("ysTalkedToAkilah","GLOBAL",1)~
	EXIT
END
