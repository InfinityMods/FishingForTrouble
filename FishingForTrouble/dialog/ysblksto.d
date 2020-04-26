BEGIN ysblksto

//If already visited then jump round the dialog block as needed
IF ~Global("dai_TalkedToHoldSmith","LOCALS",1)~ THEN BEGIN STRBLK1
    SAY @6240
    IF~~THEN REPLY @6241 GOTO LHBLOCK6
    IF~~THEN REPLY @6242 EXIT
END

//If already visited then jump round the dialog block as needed
IF ~Global("dai_TalkedToHoldSmith","LOCALS",2)~ THEN BEGIN STRBLK2
    SAY @6240
    IF~~THEN REPLY @6243 GOTO BLK10
    IF~~THEN REPLY @6244 EXIT
END

//---------------------------------------------------------
//Blacksmith
//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN LHBLOCK0
    SAY @6245
    IF~~THEN REPLY @6246 GOTO BLK1
    IF~~THEN REPLY @6247 GOTO LHBLOCK1
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN LHBLOCK1
    SAY @6248
    IF~~THEN REPLY @6249 GOTO LHBLOCK2
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN LHBLOCK2
    SAY @6250
    IF~~THEN REPLY @6251 GOTO LHBLOCK3
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN LHBLOCK3
    SAY @6252
    IF~~THEN REPLY @6253 GOTO LHBLOCK4
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK4
    SAY @6240
    IF~~THEN REPLY @6243 GOTO LHBLOCK6
    IF~~THEN REPLY @6244 EXIT
END

//---------------------------------------------------------
//Open the plain store
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN LHBLOCK6
    SAY @6254
    IF~~THEN
      DO ~SetGlobal("dai_TalkedToHoldSmith","LOCALS",2)
          StartStore("ysblksto",LastTalkedToBy())~
      EXIT
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK1
    SAY @6250
    IF~~THEN REPLY @6255 GOTO BLK2
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK2
    SAY @6256
    IF~~THEN REPLY @6257 GOTO BLK3
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK3
    SAY @6258
    IF~~THEN REPLY @6259 GOTO BLK4
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK4
    SAY @6260
    IF~~THEN REPLY @6261 GOTO BLK5
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK5
    SAY @6262
    IF~~THEN REPLY @6263 GOTO BLK6
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK6
    SAY @6264
    IF~~THEN REPLY @6265 GOTO BLK10
END

//---------------------------------------------------------
//Open the fancy store
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK10
    SAY @6266
    IF~~THEN
      DO ~SetGlobal("dai_TalkedToHoldSmith","LOCALS",2)
          StartStore("ysbk1sto",LastTalkedToBy())~
      EXIT
END

