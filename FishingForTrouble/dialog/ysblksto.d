BEGIN ysblksto

//If already visited then jump round the dialog block as needed
IF ~Global("dai_TalkedToHoldSmith","LOCALS",1)~ THEN BEGIN STRBLK1
    SAY ~My wares are available to you at anytime. Please take a look~
    IF~~THEN REPLY ~Well open up then.~ GOTO LHBLOCK6
    IF~~THEN REPLY ~Not now.~ EXIT
END

//If already visited then jump round the dialog block as needed
IF ~Global("dai_TalkedToHoldSmith","LOCALS",2)~ THEN BEGIN STRBLK2
    SAY ~My wares are available to you at anytime. Please take a look~
    IF~~THEN REPLY ~Thank you~ GOTO BLK10
    IF~~THEN REPLY ~Not at the moment, thank you~ EXIT
END

//---------------------------------------------------------
//Blacksmith
//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN LHBLOCK0
    SAY ~What do you want?~
    IF~~THEN REPLY ~Who are you?~ GOTO BLK1
    IF~~THEN REPLY ~Don't be so rude, old man. You might just regret it.~ GOTO LHBLOCK1
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN LHBLOCK1
    SAY ~That would not be a good idea, despite what you might think. Care to try it? Put your money where your mouth is?~
    IF~~THEN REPLY ~One day, old man, one day. Who are you?~ GOTO LHBLOCK2
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN LHBLOCK2
    SAY ~I am Havren HoldSmith, armourer and smith of Cerendor Hold.~
    IF~~THEN REPLY ~What do you know about the Red Wizard guards around here?~ GOTO LHBLOCK3
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN LHBLOCK3
    SAY ~You need to talk to the Caravan Master about that. I do smithing, not politicking.~
    IF~~THEN REPLY ~Aye - and maybe you're right about doing that too. Do you have anything for sale?~ GOTO LHBLOCK4
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)
    AreaCheck("ys0081")~ THEN BEGIN LHBLOCK4
    SAY ~My wares are available to you at anytime. Please take a look~
    IF~~THEN REPLY ~Thank you~ GOTO LHBLOCK6
    IF~~THEN REPLY ~Not at the moment, thank you~ EXIT
END

//---------------------------------------------------------
//Open the plain store
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN LHBLOCK6
    SAY ~Here you are~
    IF~~THEN
      DO ~SetGlobal("dai_TalkedToHoldSmith","LOCALS",2)
          StartStore("ysblksto",LastTalkedToBy())~
      EXIT
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK1
    SAY ~I am Havren HoldSmith, armourer and smith of Cerendor Hold.~
    IF~~THEN REPLY ~What can you tell me about the Thayan guards around here, Havren HoldSmith?~ GOTO BLK2
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK2
    SAY ~Dirt - nothing but dirt. Came in with the last caravan and just sort of took over, without actually saying so. The Caravan Master can tell you more than I.~
    IF~~THEN REPLY ~Helped themselves to the weapons too, no doubt?~ GOTO BLK3
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK3
    SAY ~Why? What are you here for?~
    IF~~THEN REPLY ~In Mystra's Name I intend to break the trade in Black Lotus but I'm needing help. ~ GOTO BLK4
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK4
    SAY ~Mystra?~
    IF~~THEN REPLY ~Well - with a bit of help from Elminster too. I'm investigating a number of problems for him and so far they've all led here.~ GOTO BLK5
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK5
    SAY ~Elminster? I know Elminster.~
    IF~~THEN REPLY ~It seems that everybody does. Ah well - I guess that comes with age.~ GOTO BLK6
END

//---------------------------------------------------------
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK6
    SAY ~To answer your question about the weapons: they tried to take them. I might look thick but I know which way the wind blows. No - I hid all the best stuff~
    IF~~THEN REPLY ~Ah! Could we have a look?~ GOTO BLK10
END

//---------------------------------------------------------
//Open the fancy store
IF ~Global("dai_TalkedToHoldSmith","LOCALS",0)~ THEN BEGIN BLK10
    SAY ~Here you go.~
    IF~~THEN
      DO ~SetGlobal("dai_TalkedToHoldSmith","LOCALS",2)
          StartStore("ysbk1sto",LastTalkedToBy())~
      EXIT
END

