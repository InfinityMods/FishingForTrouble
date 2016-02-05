BEGIN YSLABRD

IF ~Global("ys_LabraidJournal","GLOBAL",0)~ THEN BEGIN 0
	SAY @6050
	IF~~THEN REPLY @6051 GOTO 1
	IF~~THEN REPLY @6052 GOTO close
END

IF ~~ THEN BEGIN 1
	SAY @6053
	IF~~THEN REPLY @6054 GOTO first
	IF~~THEN REPLY @6055 GOTO second
	IF~~THEN REPLY @6056 GOTO third
	IF~~THEN REPLY @6057 GOTO fourth
	IF~~THEN REPLY @6058 GOTO fifth
	IF~~THEN REPLY @6059 GOTO last
	IF~~THEN REPLY @6052 GOTO close
END

//---------------------------------------------------------
IF ~~ THEN BEGIN first
	SAY @6060
	IF~~THEN REPLY @6061 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN second
	SAY @6062
	IF~~THEN REPLY @6061 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN third
	SAY @6063
	=@6064
	IF~~THEN REPLY @6061 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN fourth
	SAY @6065
	=@6066
	IF~~THEN REPLY @6061 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN fifth
	SAY @6067
	IF~~THEN REPLY @6061 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN last
	SAY @6068
	IF~~THEN REPLY @6061 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN close
	SAY @6069
	IF~~THEN EXIT
END
