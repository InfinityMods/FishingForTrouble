BEGIN ysarmsto

//If already visited then jump round the dialog block as needed
//Cheap weapons
IF ~Global("dai_TalkedToStoreKeep1","LOCALS",2)
    AreaCheck("ys0081")~ THEN BEGIN CHEAPWEAPONS
    SAY @950
    IF~~THEN REPLY @951 GOTO LHBLOCK6
    IF~~THEN REPLY @952 GOTO LHBLOCK7
END

//Expensive weapons
IF ~Global("dai_TalkedToStoreKeep1","LOCALS",1)
    AreaCheck("ys0081")~ THEN BEGIN EXPENSIVEWEAPONS
    SAY @953
    IF~~THEN REPLY @954 GOTO LHBLOCK5
    IF~~THEN REPLY @955 GOTO LHBLOCK7
END

//---------------------------------------------------------
//Two stores - weapons and potions/general
//Weapons
//---------------------------------------------------------
IF ~Global("dai_TalkedToStoreKeep1","LOCALS",0)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK0
    SAY @956
    IF~~THEN REPLY @957 GOTO LHBLOCK2
    IF~~THEN REPLY @958 GOTO LHBLOCK1
END

IF ~Global("dai_TalkedToStoreKeep1","LOCALS",0)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK1
    SAY @959
    IF~~THEN REPLY @960 GOTO LHBLOCK3
END

IF ~Global("dai_TalkedToStoreKeep1","LOCALS",0)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK2
    SAY @961
    IF~~THEN REPLY @962 GOTO LHBLOCK20
    IF~~THEN REPLY @963 GOTO LHBLOCK4
END

IF ~Global("dai_TalkedToStoreKeep1","LOCALS",0)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK20
    SAY @964
    IF~~THEN REPLY @965 GOTO LHBLOCK21
END

IF ~Global("dai_TalkedToStoreKeep1","LOCALS",0)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK21
    SAY @966
    IF~~THEN REPLY @963 GOTO LHBLOCK4
END

IF ~Global("dai_TalkedToStoreKeep1","LOCALS",0)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK3
    SAY @967
    IF~~THEN REPLY @968 GOTO LHBLOCK5
    IF~~THEN REPLY @969 GOTO LHBLOCK7
END

IF ~Global("dai_TalkedToStoreKeep1","LOCALS",0)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK4
    SAY @950
    IF~~THEN REPLY @951 GOTO LHBLOCK6
    IF~~THEN REPLY @952 GOTO LHBLOCK7
END

//Open the expensive store
IF ~OR(2)
			Global("dai_TalkedToStoreKeep1","LOCALS",0)
			Global("dai_TalkedToStoreKeep1","LOCALS",1)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK5
    SAY @970
    IF~~THEN
      DO ~SetGlobal("dai_TalkedToStoreKeep1","LOCALS",1)
          StartStore("ysstor1e",LastTalkedToBy())~
      EXIT
END

//Open the cheap store
IF ~OR(2)
			Global("dai_TalkedToStoreKeep1","LOCALS",0)
			Global("dai_TalkedToStoreKeep1","LOCALS",2)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK6
    SAY @970
    IF~~THEN
      DO ~SetGlobal("dai_TalkedToStoreKeep1","LOCALS",2)
          StartStore("ysstor1c",LastTalkedToBy())~
      EXIT
END

IF ~AreaCheck("ys0081")~ THEN BEGIN LHBLOCK7
    SAY @971
    IF~~THEN EXIT
END


