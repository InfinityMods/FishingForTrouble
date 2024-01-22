BEGIN ysprpt

IF ~Global("ysPortal","GLOBAL",0)~ THEN BEGIN 0
	SAY @4360
	IF ~Global("ys_HomewardBound","GLOBAL",0)~ THEN REPLY @4361 GOTO 1
	IF ~Global("ys_HomewardBound","GLOBAL",1)~ THEN REPLY @4361 GOTO 2
	IF ~~ THEN REPLY @4362 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4363
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4364
	IF ~~ THEN
		DO ~TakePartyItem("ysprpt")
		  	ActionOverride(Player1,LeaveAreaLUA("ys0392","",[367.346],9)) //and move the party to the required area
  			ActionOverride(Player2,LeaveAreaLUA("ys0392","",[367.346],9)) //and move the party to the required area
  			ActionOverride(Player3,LeaveAreaLUA("ys0392","",[367.346],9)) //and move the party to the required area
  			ActionOverride(Player4,LeaveAreaLUA("ys0392","",[367.346],9)) //and move the party to the required area
  			ActionOverride(Player5,LeaveAreaLUA("ys0392","",[367.346],9)) //and move the party to the required area
  			ActionOverride(Player6,LeaveAreaLUA("ys0392","",[367.346],9)) //and move the party to the required area
    		ActionOverride(Player1,CreateVisualEffectObject("SPUSEANY",Player1))
    		ActionOverride(Player2,CreateVisualEffectObject("SPUSEANY",Player2))
    		ActionOverride(Player4,CreateVisualEffectObject("SPUSEANY",Player4))
    		ActionOverride(Player3,CreateVisualEffectObject("SPUSEANY",Player3))
    		ActionOverride(Player5,CreateVisualEffectObject("SPUSEANY",Player5))
    		ActionOverride(Player6,CreateVisualEffectObject("SPUSEANY",Player6))~
	EXIT
END
