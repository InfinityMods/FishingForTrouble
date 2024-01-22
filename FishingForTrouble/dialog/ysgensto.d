BEGIN ysgensto

//Cheap general goods
IF ~Global("dai_TalkedToStoreKeep2","LOCALS",2)
    AreaCheck("ys0121")~ THEN BEGIN CHEAPGOODS
    SAY @900
    IF ~~ THEN REPLY @901 GOTO LHBLOCK15
    IF ~~ THEN REPLY @902 GOTO LHBLOCK17
END

//Expensive general goods
IF ~Global("dai_TalkedToStoreKeep2","LOCALS",1)
    AreaCheck("ys0121")~ THEN BEGIN EXPENSIVEGOODS
    SAY @903
    IF ~~ THEN REPLY @904 GOTO LHBLOCK16
    IF ~~ THEN REPLY @905 GOTO LHBLOCK17
END

//-----------------------------------------------
//General store

IF ~Global("dai_TalkedToStoreKeep2","LOCALS",0)
    AreaCheck("ys0121")~ THEN BEGIN LHBLOCK10
    SAY @906
    IF ~~ THEN REPLY @907 GOTO LHBLOCK11
    IF ~~ THEN REPLY @908 GOTO LHBLOCK12
END

IF ~~ THEN BEGIN LHBLOCK11
    SAY @909
    IF ~~ THEN REPLY @910 GOTO LHBLOCK100
END

IF ~~ THEN BEGIN LHBLOCK100
    SAY @911
    IF ~~ THEN REPLY @912 GOTO LHBLOCK101
END

IF ~~ THEN BEGIN LHBLOCK101
    SAY @913
    IF ~~ THEN REPLY @914 GOTO LHBLOCK13
END

IF ~~ THEN BEGIN LHBLOCK12
    SAY @915
    IF ~~ THEN REPLY @916 GOTO LHBLOCK14
END

IF ~~ THEN BEGIN LHBLOCK13
    SAY @917
    IF ~~ THEN REPLY @918 GOTO LHBLOCK15
    IF ~~ THEN REPLY @902 GOTO LHBLOCK17
END

IF ~~ THEN BEGIN LHBLOCK14
    SAY @919
    IF ~~ THEN REPLY @904 GOTO LHBLOCK16
    IF ~~ THEN REPLY @905 GOTO LHBLOCK17
END

//Open the cheap store
IF ~~ THEN BEGIN LHBLOCK15
    SAY @920
    IF ~~ THEN
      DO ~SetGlobal("dai_TalkedToStoreKeep2","LOCALS",2)
          StartStore("ysstor2c",LastTalkedToBy())~
      EXIT
END

//Open the expensive store
IF ~~ THEN BEGIN LHBLOCK16
    SAY @920
    IF ~~ THEN
      DO ~SetGlobal("dai_TalkedToStoreKeep2","LOCALS",1)
          StartStore("ysstor2e",LastTalkedToBy())~
      EXIT
END

//Exit
IF ~~ THEN BEGIN LHBLOCK17
    SAY @921
    IF ~~ THEN
      EXIT
END

