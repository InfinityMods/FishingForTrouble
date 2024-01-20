BEGIN ~yselpara~

//----------------------------
IF ~Global("ys_talkedToEP","GLOBAL",0)~ THEN BEGIN 1
  SAY @2450
  IF ~~ THEN REPLY @2451 GOTO 7
  IF ~~ THEN REPLY @2452 GOTO 6
  IF ~~ THEN REPLY @2453 GOTO 8
END

//----------------------------
IF ~Global("ys_talkedToEP","GLOBAL",1)~ THEN BEGIN 5
  SAY @2454
  IF ~~ THEN EXIT
END

//----------------------------
IF ~~THEN BEGIN 6
  SAY @2455
  IF ~~ THEN REPLY @2456 GOTO 9
END

//----------------------------
IF ~~ THEN BEGIN 7
  SAY @2457
  IF ~~ THEN
	DO ~GiveGoldForce(189)
  ReputationInc(-2)
  SetGlobal("ys_talkedToEP","GLOBAL",1)~
  EXIT
END

//----------------------------
IF ~~ THEN BEGIN 8
  SAY @2458
  IF ~~ THEN REPLY @2456 GOTO 9
END

//----------------------------
//Fedex starts
IF ~~ THEN BEGIN 9
  SAY @2459
  IF ~~ THEN REPLY @2460 GOTO 12
  IF ~~ THEN REPLY @2461 GOTO 10
END

//----------------------------
IF ~~ THEN BEGIN 10
  SAY @2462
  IF ~~ THEN REPLY @2463 GOTO 11
  IF ~~ THEN REPLY @2460 GOTO 12
END

//----------------------------
IF ~~ THEN BEGIN 11
  SAY @2464
  IF ~~ THEN
  DO ~SetGlobal("ys_talkedToEP","GLOBAL",1)~
  EXIT
END

//----------------------------
IF ~~ THEN BEGIN 12
  SAY @2465
  IF ~~ THEN REPLY @2466 GOTO 13
  IF ~~ THEN REPLY @2467
  DO ~SetGlobal("ys_talkedToEP","GLOBAL",1)~
  EXIT
END

//----------------------------
IF ~~ THEN BEGIN 13
  SAY @2468
  =@2469
  IF ~~ THEN REPLY @2470 GOTO 14
END

//----------------------------
IF ~~ THEN BEGIN 14
  SAY @2471
  IF ~!Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY @2472 GOTO 15
  IF ~!Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY @2473 GOTO 16
  IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN REPLY @2474 GOTO 160
END

//----------------------------
IF ~~ THEN BEGIN 15
  SAY @2475
  IF ~~ THEN REPLY @2476 GOTO 115
END

//----------------------------
IF ~~ THEN BEGIN 115
  SAY @2477
  IF ~~ THEN
  DO ~SetGlobal("ys_talkedToEP","GLOBAL",2)
      AddJournalEntry(@59,QUEST)
      SetGlobal("ys_AnnoyedEP","GLOBAL",1)~
  EXIT
END

//----------------------------
IF ~~ THEN BEGIN 16
  SAY @2478
  IF ~~ THEN REPLY @2479 GOTO 17
END

//----------------------------
IF ~~ THEN BEGIN 17
  SAY @2480
  IF ~~ THEN REPLY @2481 GOTO 18
END

//----------------------------
IF ~~ THEN BEGIN 18
  SAY @2482
  IF ~~ THEN
  DO ~SetGlobal("ys_talkedToEP","GLOBAL",2)
      AddJournalEntry(@59,QUEST)
      SetGlobal("ys_AnnoyedEP","GLOBAL",2)~
  EXIT
END

//----------------------------
//Fedex under way
IF ~Global("ys_talkedToEP","GLOBAL",2)
	!PartyHasItem("ysepring")~ THEN BEGIN 100
  SAY @2483
  IF ~~ THEN REPLY @2484
  EXIT
END

//----------------------------
//Fedex finished - LE is not annoyed
IF ~Global("ys_talkedToEP","GLOBAL",2)
	PartyHasItem("ysepring")
    Global("ys_AnnoyedEP","GLOBAL",1)~ THEN BEGIN 200
  SAY @2485
  IF ~~ THEN REPLY @2486 GOTO 201
END

//----------------------------
IF ~~ THEN BEGIN 201
  SAY @2487
  IF ~~ THEN REPLY @2488 SOLVED_JOURNAL @60
  DO ~SetGlobal("ys_talkedToEP","GLOBAL",1)
      GivePartyGold(100)
	  TakePartyItem("ysepring")
      AddexperienceParty(2000)~
  EXIT
END

//----------------------------
//Fedex finished - LE is annoyed
IF ~Global("ys_talkedToEP","GLOBAL",2)
	PartyHasItem("ysepring")
    Global("ys_AnnoyedEP","GLOBAL",2)~ THEN BEGIN 300
  SAY @2489
  IF ~~ THEN REPLY @2490 GOTO 301
END

//----------------------------
IF ~~ THEN BEGIN 301
  SAY @2491
  IF ~~ THEN REPLY @2492 SOLVED_JOURNAL @60
  DO ~SetGlobal("ys_talkedToEP","GLOBAL",1)
      TakePartyItem("ysepring")
      AddexperienceParty(400)~
  EXIT
END

//----------------------------
// Working for Bohdi
IF ~Global("WorkingForBodhi","GLOBAL",1)~ THEN BEGIN 160
  SAY @2493
  IF ~~ THEN
	  DO ~SetGlobal("ys_talkedToEP","GLOBAL",1)~
  EXIT
END

//----------------------------
//IF ~Global("ys_talkedToEP","GLOBAL",0)~ THEN BEGIN
//  SAY ~~
//  IF ~~ THEN REPLY ~~ GOTO
//END

//----------------------------
//IF ~Global("ys_talkedToEP","GLOBAL",0)~ THEN BEGIN
//  SAY ~~
//  IF ~~ THEN REPLY ~~ GOTO
//END