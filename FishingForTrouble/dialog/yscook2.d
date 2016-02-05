BEGIN ~YSCOOK2~

IF~Global("ysTalkedToCountess","GLOBAL",3)
	 Global("ysTalkedToCerendorCookApp","GLOBAL",0)
	 Global("ysTalkedToCerendorCook","GLOBAL",0)~THEN BEGIN 10
	 SAY@6150
   IF ~~ THEN REPLY@6151 GOTO 11
END

IF~~THEN BEGIN 11
	 SAY@6152
   IF ~~ THEN REPLY@6153 GOTO 12
END

IF~~THEN BEGIN 12
	 SAY@6154
   IF ~~ THEN
	 DO~SetGlobal("ysTalkedToCerendorCookApp","GLOBAL",1)~
	 EXIT
END

IF ~NumTimesTalkedTo(0)~ THEN BEGIN 0
  SAY @6155
  IF ~~ THEN EXIT
END

IF ~NumTimesTalkedTo(1)~ THEN BEGIN 1
  SAY @6156
  IF ~~ THEN EXIT
END

IF ~True()~ THEN BEGIN 2
  SAY @6157
  IF ~~ THEN EXIT
END