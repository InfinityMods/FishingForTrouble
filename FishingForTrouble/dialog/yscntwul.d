BEGIN yscntwul

//---------------------------------------------------------
// Quest complete
//---------------------------------------------------------
IF ~Global("ysTalkedToCountess","GLOBAL",10)~ THEN BEGIN QUESTDONE
	SAY @6080
	IF~~THEN EXIT
END

//---------------------------------------------------------
// Second attempt to give the quest
//---------------------------------------------------------
IF ~Global("ysTalkedToCountess","GLOBAL",1)~ THEN BEGIN 100
	SAY @6081
	IF~~THEN REPLY @6082 GOTO 5
	IF~~THEN REPLY @6083 GOTO 101
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 101
	SAY @6084
	IF~~THEN REPLY @6082 GOTO 5
	IF~~THEN REPLY @6085 GOTO 102
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 102
	SAY @6086
	IF~~THEN
		DO~SetGlobal("ysTalkedToCountess","GLOBAL",100)~
	EXIT
END

//---------------------------------------------------------
// Initial greeting
//---------------------------------------------------------
IF ~Global("ysTalkedToCountess","GLOBAL",0)~ THEN BEGIN 0
	SAY @6087
	IF~~THEN REPLY @6082 GOTO 6
	IF~~THEN REPLY @6088 GOTO 1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @6089
	IF~~THEN REPLY @6090 GOTO 3
	IF~~THEN REPLY @6091 GOTO 2
	IF~~THEN REPLY @6092 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @6093
	IF~~THEN
		DO~SetGlobal("ysTalkedToCountess","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @6094
	IF~~THEN
		DO~SetGlobal("ysTalkedToCountess","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @6095
	IF~~THEN REPLY @6096 GOTO 7
	IF~~THEN REPLY @6097 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @6098
	IF~~THEN REPLY @6099 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @6100
	IF~~THEN REPLY @6101 GOTO 7
	IF~~THEN REPLY @6102 GOTO 7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @6103
	IF~~THEN REPLY @6104 GOTO 9
	IF~~THEN REPLY @6105 GOTO 8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @6106
	IF~~THEN
		DO~SetGlobal("ysTalkedToCountess","GLOBAL",2)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToCountess","GLOBAL",2)~ THEN BEGIN 200
	SAY @6107
	IF~~THEN REPLY @6108 GOTO 9
	IF~~THEN REPLY @6109 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 9
	SAY @6110
	IF~~THEN
		UNSOLVED_JOURNAL @64
		DO~SetGlobal("ysTalkedToCountess","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
// Holding dialog
//---------------------------------------------------------
IF ~Global("ysTalkedToCountess","GLOBAL",3)
		Global("ysCerendorThief","GLOBAL",0)~ THEN BEGIN 250
	SAY @6111
	IF~Global("ysTalkedToCerendorCook","GLOBAL",0)~THEN REPLY @6112 EXIT
	IF~Global("ysTalkedToCerendorCook","GLOBAL",1)~THEN REPLY @6113 GOTO 251
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 251
	SAY @6114
	IF~~THEN REPLY @6115 EXIT
END

//---------------------------------------------------------
// Cado escaped
//---------------------------------------------------------
IF ~Global("ysTalkedToCountess","GLOBAL",3)
		Global("ysCerendorThief","GLOBAL",1)~ THEN BEGIN 260
	SAY @6111
	IF~Global("ysTalkedToCerendorCook","GLOBAL",0)~THEN REPLY @6116 GOTO 261
	IF~Global("ysTalkedToCerendorCook","GLOBAL",1)~THEN REPLY @6117 GOTO 261
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 261
	SAY @6118
	IF~~THEN REPLY @6119 GOTO 262
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 262
	SAY @6120
	IF~~THEN REPLY @6121 GOTO 263
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 263
	SAY @6122
	IF~~THEN REPLY @6123
		DO~SetGlobal("ysTalkedToCountess","GLOBAL",10)
		AddexperienceParty(2000)
		EraseJournalEntry(@62)
		EraseJournalEntry(@64)
		EraseJournalEntry(@67)~
		SOLVED_JOURNAL @65
	EXIT
END

//---------------------------------------------------------
// Cado talked
//---------------------------------------------------------
IF ~Global("ysTalkedToCountess","GLOBAL",3)
		Global("ysCerendorThief","GLOBAL",2)~ THEN BEGIN 300
	SAY @6111
	IF~Global("ysTalkedToCerendorCook","GLOBAL",0)~THEN REPLY @6124 GOTO 301
	IF~Global("ysTalkedToCerendorCook","GLOBAL",1)~THEN REPLY @6125 GOTO 301
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 301
	SAY @6118
	IF~~THEN REPLY @6126 GOTO 302
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 302
	SAY @6120
	IF~~THEN REPLY @6127 GOTO 303
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 303
	SAY @6128
	IF~~THEN REPLY @6129 GOTO 304
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 304
	SAY @6130
	IF~~THEN REPLY @6131 GOTO 305
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 305
	SAY @6132
	IF~~THEN REPLY @6123
		DO~SetGlobal("ysTalkedToCountess","GLOBAL",10)
		AddexperienceParty(5000)
		EraseJournalEntry(@63)
		EraseJournalEntry(@64)
		EraseJournalEntry(@67)~
		SOLVED_JOURNAL @66
	EXIT
END
