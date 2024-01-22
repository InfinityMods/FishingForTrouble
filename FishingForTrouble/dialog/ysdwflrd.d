BEGIN ysdwflrd

IF ~Global("ys_TalkedToDwarfLord","GLOBAL",0)~ THEN BEGIN 0
	SAY @3250
	IF ~~ THEN REPLY @3251 GOTO 1
	IF ~~ THEN REPLY @3252 GOTO 1
	IF ~~ THEN REPLY @3253 GOTO 15
END

//---------------------------------------------------------
//Path 1
//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @3254
	IF ~~ THEN
	 DO~
	  PlaySound("ysstdro")
	  CloseDoor("DOOR02")
      Lock("DOOR02")~
  REPLY @3255 GOTO 2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @3256
	IF ~~ THEN REPLY @3257 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @3258
	IF ~~ THEN REPLY @3259 GOTO 5
	IF ~~ THEN REPLY @3260 GOTO 4
END

//---------------------------------------------------------
//Trigger area script for tomb fight
IF ~~ THEN BEGIN 4
	SAY @3261
	IF ~~ THEN
	DO~
	SetGlobal("ys_TalkedToDwarfLord","GLOBAL",2)
	SetGlobal("ys_TombFight","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @3262
	IF ~~ THEN REPLY @3263 GOTO 6
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @3264
	IF ~~ THEN REPLY @3265 GOTO 7
	IF ~~ THEN REPLY @3266 GOTO 8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @3267
	IF ~~ THEN
	  DO~
	  SetGlobal("ys_TalkedToDwarfLord","GLOBAL",1)
      PlaySound("ysstdro")
      Unlock("DOOR02")
	  OpenDoor("DOOR02")~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @3268
	IF ~~ THEN REPLY @3269 GOTO 9
	IF ~~ THEN REPLY @3270 GOTO 10
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 9
	SAY @3271
	IF ~~ THEN
	  DO~
	  SetGlobal("ys_TalkedToDwarfLord","GLOBAL",1)
      PlaySound("ysstdro")
      Unlock("DOOR02")
	  OpenDoor("DOOR02")~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @3272
	IF ~~ THEN REPLY @3273 GOTO 11
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @3274
	IF ~ReputationLT(Player1,8)~ THEN 
	REPLY @3275 GOTO 12
	IF ~ReputationGT(Player1,7)
		ReputationLT(Player1,16)
		RandomNum(2,1)~ THEN 
	REPLY @3275 GOTO 13
	IF ~ReputationGT(Player1,7)
		ReputationLT(Player1,16)
		RandomNum(2,2)~ THEN 
	REPLY @3275 GOTO 150
	IF ~ReputationGT(Player1,15)~ THEN 
	REPLY @3275 GOTO 14
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @3276
	IF ~~ THEN
	  DO~
	  SetGlobal("ys_TalkedToDwarfLord","GLOBAL",1)
      PlaySound("ysstdro")
      Unlock("DOOR02")
	  OpenDoor("DOOR02")~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 13
	SAY @3277
	IF ~~ THEN
	  DO~
	  SetGlobal("ys_TalkedToDwarfLord","GLOBAL",1)
      PlaySound("ysstdro")
      Unlock("DOOR02")
	  OpenDoor("DOOR02")~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 14
	SAY @3278
    =@3279
	IF ~~ THEN
	DO ~GiveItemCreate("ysdltkey",PLAYER1,1,1,0)
		SetGlobal("ys_TalkedToAngharad","GLOBAL",2)
		Unlock("DOOR02")
	    OpenDoor("DOOR02")
		AddexperienceParty(8000)
		DestroySelf()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 150
	SAY @3280
    =@3279
	IF ~~ THEN
	DO ~GiveItemCreate("ysdltkey",PLAYER1,1,1,0)
		SetGlobal("ys_TalkedToAngharad","GLOBAL",2)
		Unlock("DOOR02")
		OpenDoor("DOOR02")
		AddexperienceParty(6500)
		DestroySelf()~
	EXIT
END

//---------------------------------------------------------
//Path 2
//---------------------------------------------------------
IF ~~ THEN BEGIN 15
	SAY @3281
	IF ~~ THEN REPLY @3282 GOTO 16
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 16
	SAY @3283
	IF ~~ THEN REPLY @3284 GOTO 20
	IF ~~ THEN REPLY @3285 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 20
	SAY @3286
	IF ~~ THEN REPLY @3257 GOTO 21
	IF ~~ THEN REPLY @3287 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 21
	SAY @3288
	IF ~~ THEN REPLY @3289 GOTO 22
	IF ~~ THEN REPLY @3287 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 22
	SAY @3290
	IF ~~ THEN REPLY @3291 GOTO 24
	IF ~~ THEN REPLY @3292 GOTO 23
	IF ~~ THEN REPLY @3287 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 23
	SAY @3293
	IF ~~ THEN REPLY @3291 GOTO 24
	IF ~~ THEN REPLY @3287 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 24
	SAY @3294
	IF ~~ THEN REPLY @3295 GOTO 25
	IF ~~ THEN REPLY @3287 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 25
	SAY @3296
	=@3297
	IF ~~ THEN REPLY @3298 GOTO 26
	IF ~~ THEN REPLY @3287 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 26
	SAY @3299
	=@3300
	IF ~~ THEN REPLY @3301 GOTO 27
	IF ~~ THEN REPLY @3287 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 27
	SAY @3302
  =@3303
	IF ~~ THEN REPLY @3304 GOTO 28
	IF ~~ THEN REPLY @3287 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 28
	SAY @3305
	=@3306
	IF ~~ THEN REPLY @3307 GOTO 29
	IF ~~ THEN REPLY @3308 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 29
	SAY @3309
	=@3310
	IF ~~ THEN REPLY @3311 GOTO 30
	IF ~~ THEN REPLY @3312 GOTO 30
	IF ~~ THEN REPLY @3308 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 30
	SAY @3313
	IF ~~ THEN REPLY @3314 GOTO 31
	IF ~~ THEN REPLY @3315 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 31
	SAY @3316
	=@3317
  =@3318
	IF ~~ THEN REPLY @3319 GOTO 33
	IF ~~ THEN REPLY @3320 GOTO 32
	IF ~~ THEN REPLY @3315 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 32
	SAY @3321
	IF ~~ THEN REPLY @3322 GOTO 33
	IF ~~ THEN REPLY @3315 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 33
	SAY @3323
	IF ~Global("ys_Player1Vamp","GLOBAL",2)~ THEN REPLY @3324 GOTO 34
	IF ~~ THEN REPLY @3325 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 34
	SAY @3326
	IF ~~ THEN REPLY @3327 GOTO 35
	IF ~~ THEN REPLY @3325 GOTO 117
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 35
	SAY @3328
	IF ~~ THEN UNSOLVED_JOURNAL @41
	DO ~SetGlobal("ys_TalkedToDwarfLord","GLOBAL",2)
		SetGlobal("ys_TalkedToAngharad","GLOBAL",2)
		GiveItemCreate("ysdltkey",PLAYER1,1,1,0)
        AddexperienceParty(20000)
        DestroySelf()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 117
	SAY @3329
	IF ~~ THEN REPLY @3330 GOTO 118
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 118
	SAY @3268
	IF ~~ THEN REPLY @3269 GOTO 119
	IF ~~ THEN REPLY @3331 GOTO 120
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 119
	SAY @3332
	IF ~~ THEN
	  DO~
	  SetGlobal("ys_TalkedToDwarfLord","GLOBAL",1)~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 120
	SAY @3333
	IF ~~ THEN REPLY @3334 GOTO 121
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 121
	SAY @3274
	IF ~ReputationLT(Player1,8)~ THEN REPLY @3275 GOTO 122
	IF ~ReputationGT(Player1,7)
		ReputationLT(Player1,16)
		RandomNum(2,1)~ THEN REPLY @3275 GOTO 123
	IF ~ReputationGT(Player1,7)
		ReputationLT(Player1,16)
		RandomNum(2,2)~ THEN REPLY @3275 GOTO 151
	IF ~ReputationGT(Player1,15)~ THEN REPLY @3275 GOTO 124
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 122
	SAY @3276
	IF ~~ THEN
	  DO~
	  SetGlobal("ys_TalkedToDwarfLord","GLOBAL",1)
      PlaySound("ysstdro")
      Unlock("DOOR02")
	  OpenDoor("DOOR02")~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 123
	SAY @3277
	IF ~~ THEN
	  DO~
	  SetGlobal("ys_TalkedToDwarfLord","GLOBAL",1)
      PlaySound("ysstdro")
      Unlock("DOOR02")
	  OpenDoor("DOOR02")~
  EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 124
	SAY @3278
    =@3279
	IF ~~ THEN
	DO ~GiveItemCreate("ysdltkey",PLAYER1,1,1,0)
		SetGlobal("ys_TalkedToAngharad","GLOBAL",2)
		Unlock("DOOR02")
		OpenDoor("DOOR02")
		AddexperienceParty(8000)
		DestroySelf()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 151
	SAY @3280
    =@3279
	IF ~~ THEN
	DO ~GiveItemCreate("ysdltkey",PLAYER1,1,1,0)
		SetGlobal("ys_TalkedToAngharad","GLOBAL",2)
		Unlock("DOOR02")
		OpenDoor("DOOR02")
		AddexperienceParty(6500)
		DestroySelf()~
	EXIT
END

//---------------------------------------------------------
//---------------------------------------------------------
//Trigger area script for tomb fight
IF ~Global("ys_TalkedToDwarfLord","GLOBAL",1)~ THEN BEGIN 200
	SAY @3335
	IF ~~ THEN UNSOLVED_JOURNAL @42
	DO~
    SetGlobal("ys_TalkedToAngharad","GLOBAL",2)
	SetGlobal("ys_TalkedToDwarfLord","GLOBAL",2)
	SetGlobal("ys_TombFight","GLOBAL",1)~
  EXIT
END


//---------------------------------------------------------
//IF ~Global("ys_TalkedToDwarfLord","GLOBAL",0)~ THEN BEGIN
//	SAY ~~
//	IF ~~ THEN REPLY ~~ GOTO
//END
