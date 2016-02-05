BEGIN ysbengch

IF ~Global("ys_TalkedToBenGoch","GLOBAL",0)~ THEN BEGIN 0
	SAY @4200
	IF~~THEN REPLY @4201 GOTO 1
	IF~~THEN REPLY @4202 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4203
	IF~~THEN REPLY @4204 GOTO 30
	IF~~THEN REPLY @4205 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4206
	IF~~THEN REPLY @4204 GOTO 30
	IF~~THEN REPLY @4207 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @4208
	IF~~THEN REPLY @4209 GOTO 30
	IF~~THEN REPLY @4210 GOTO 60
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @4211
	IF~~THEN REPLY @4212 GOTO 40
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 30
	SAY @4211
	IF~~THEN REPLY @4213 GOTO 40
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 40
	SAY @4214
	IF~Global("ysFoundCaravan","GLOBAL",1)~THEN REPLY @4215 GOTO 60
	IF~Global("ysFoundCaravan","GLOBAL",0)~THEN REPLY @4215 GOTO 80
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 60
	SAY @4216
	IF~~THEN REPLY @4217 GOTO 61
	IF~~THEN REPLY @4218 GOTO 61
	IF~~THEN REPLY @4219 GOTO 61
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 61
	SAY @4220
	IF~~THEN REPLY @4221 GOTO 70
	IF~~THEN REPLY @4222 GOTO 62
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 62
	SAY @4223
	IF~~THEN
	 DO~SetGlobal("ys_TalkedToBenGoch","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 70
	SAY @4224
	IF~~THEN REPLY @4225 GOTO 71
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 71
	SAY @4226
	IF~~THEN REPLY @4227 GOTO 72
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 72
	SAY @4228
	IF~CheckStatLT(LastTalkedToBy(Player1),15,CHR)~THEN REPLY @4229 GOTO 73
	IF~CheckStatGT(LastTalkedToBy(Player1),14,CHR)~THEN REPLY @4230 GOTO 74
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 73
	SAY @4231
	IF~~THEN SOLVED_JOURNAL @61
	DO~AddexperienceParty(10000)
		SetGlobal("ys_TalkedToBenGoch","GLOBAL",1)
    EraseJournalEntry(@33)
    EraseJournalEntry(@34)
    EraseJournalEntry(@35)
    EraseJournalEntry(@36)
    EraseJournalEntry(@37)
    EraseJournalEntry(@151)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 74
	SAY @4232
	IF~Global("ys_TalkedToGarGel","GLOBAL",100)~THEN REPLY@4233GOTO 75
	IF~!Global("ys_TalkedToGarGel","GLOBAL",100)~THEN REPLY@4234GOTO 75
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 75
	SAY @4235
	=@4236
	=@4237
  =@4238
	IF~~THEN REPLY@4239 SOLVED_JOURNAL @55
	DO~AddexperienceParty(40000)
		SetGlobal("ys_BenGochIsDead","GLOBAL",1)
    EraseJournalEntry(@33)
    EraseJournalEntry(@34)
    EraseJournalEntry(@35)
    EraseJournalEntry(@36)
    EraseJournalEntry(@37)
    EraseJournalEntry(@151)
		ActionOverride("ysbengch",EscapeArea())~
  EXIT
END

//---------------------------------------------------------
// Caravan not destroyed
//---------------------------------------------------------
IF ~~ THEN BEGIN 80
	SAY @4216
	IF~~THEN REPLY @4217 GOTO 81
	IF~~THEN REPLY @4218 GOTO 81
	IF~~THEN REPLY @4219 GOTO 82
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 81
	SAY @4220
	IF~~THEN REPLY @4220 GOTO 83
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 82
	SAY @4240
	IF~~THEN REPLY @4241 GOTO 83
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 83
	SAY @4242
	IF~CheckStatLT(LastTalkedToBy(Player1),15,CHR)~THEN REPLY @4243 GOTO 84
	IF~CheckStatGT(LastTalkedToBy(Player1),14,CHR)~THEN REPLY @4244 GOTO 85
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 84
	SAY @4231
	IF~~THEN SOLVED_JOURNAL @61
	DO~AddexperienceParty(10000)
		SetGlobal("ys_TalkedToBenGoch","GLOBAL",1)
    EraseJournalEntry(@33)
    EraseJournalEntry(@34)
    EraseJournalEntry(@35)
    EraseJournalEntry(@36)
    EraseJournalEntry(@37)
    EraseJournalEntry(@151)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 85
	SAY @4245
  =@4246
	=@4247
  =@4248
	IF~~THEN REPLY@4249 SOLVED_JOURNAL @55
	DO~AddexperienceParty(40000)
		SetGlobal("ys_BenGochIsDead","GLOBAL",1)
    EraseJournalEntry(@33)
    EraseJournalEntry(@34)
    EraseJournalEntry(@35)
    EraseJournalEntry(@36)
    EraseJournalEntry(@37)
    EraseJournalEntry(@151)
		ActionOverride("ysbengch",EscapeArea())~
  EXIT
END
