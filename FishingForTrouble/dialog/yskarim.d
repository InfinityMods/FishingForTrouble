BEGIN yskarim

//---------------------------------------------------------
//Abort conversation
IF ~Global("ysTalkedToKarim","GLOBAL",1)~ THEN BEGIN Abort
	SAY @4260
	IF~~THEN EXIT
END

//---------------------------------------------------------
//Karim is away with the fairies
IF ~Global("ysTalkedToKarim","GLOBAL",2)~ THEN BEGIN Mumble
	SAY @4261
	IF~~THEN EXIT
END

//---------------------------------------------------------
//Start here
IF ~Global("ysTalkedToKarim","GLOBAL",0)~ THEN BEGIN 0
	SAY @4262
	IF~~THEN REPLY @4263 GOTO 1
	IF~~THEN REPLY @4264 GOTO 1
	IF~~THEN REPLY @4265 GOTO 20
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 1
	SAY @4266
	IF~~THEN REPLY @4267 GOTO 2
	IF~~THEN REPLY @4268 GOTO 3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 2
	SAY @4269
	IF~~THEN REPLY @4270 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 3
	SAY @4271
	IF~~THEN REPLY @4270 GOTO 4
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 4
	SAY @4272
	IF~~THEN REPLY @4273 GOTO 5
	IF~~THEN REPLY @4274 GOTO 5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 5
	SAY @4275
	IF~~THEN REPLY @4276 GOTO 6
	IF~~THEN
		DO ~SetGlobal("ysTalkedToKarim","GLOBAL",1)~
	REPLY @4277 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 6
	SAY @4278
	IF~~THEN REPLY @4279 GOTO 7
	IF~~THEN REPLY @4280 GOTO 8
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 7
	SAY @4281
	IF~~THEN REPLY @4282 GOTO 10
	IF~~THEN REPLY @4283 GOTO 9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 8
	SAY @4284
	IF~~THEN REPLY @4282 GOTO 10
	IF~~THEN REPLY @4285 GOTO 9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 9
	SAY @4286
	IF~~THEN
		DO ~SetGlobal("ysTalkedToKarim","GLOBAL",2)~
 	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 10
	SAY @4287
	IF~~THEN REPLY @4288 GOTO 11
	IF~~THEN
		DO ~SetGlobal("ysTalkedToKarim","GLOBAL",1)~
	REPLY @4289 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 11
	SAY @4290
	IF~~THEN REPLY @4291 GOTO 12
	IF~~THEN REPLY @4292 GOTO 13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 12
	SAY @4293
	IF~~THEN REPLY @4294 GOTO 13
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 13
	SAY @4295
	IF~~THEN REPLY @4296 GOTO 14
	IF~~THEN REPLY @4297
			DO ~SetGlobal("ysTalkedToKarim","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 14
	SAY @4298
	IF~~THEN REPLY @4299 GOTO 15
	IF~~THEN REPLY @4297
			DO ~SetGlobal("ysTalkedToKarim","GLOBAL",3)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 15
	SAY @4300
	IF~~THEN
		DO ~SetGlobal("ysTalkedToKarim","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 20
	SAY @4301
	IF~~THEN
		DO ~SetGlobal("ysTalkedToKarim","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
//Mukhtar has threatened him
//---------------------------------------------------------
IF ~Global("ysTalkedToKarim","GLOBAL",3)
		Global("ys_SpeakToMukhtar","GLOBAL",1)~ THEN BEGIN 30
	SAY @4302
	IF~~THEN REPLY @4303 GOTO 31
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 31
	SAY @4304
	IF~~THEN REPLY @4305 GOTO 32
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 32
	SAY @4306
	IF~~THEN
		DO ~AddexperienceParty(2000)
				SetGlobal("ysTalkedToKarim","GLOBAL",4)~
	EXIT
END

//---------------------------------------------------------
//Wait one year
//---------------------------------------------------------
IF ~Global("ysTalkedToKarim","GLOBAL",3)
		Global("ys_SpeakToMukhtar","GLOBAL",2)~ THEN BEGIN 40
	SAY @4302
	IF~~THEN REPLY @4307 GOTO 41
	IF~~THEN REPLY @4308 GOTO 100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 41
	SAY @4309
	IF~~THEN
		DO ~AddexperienceParty(6000)
				SetGlobal("ysTalkedToKarim","GLOBAL",4)~
	EXIT
END

//---------------------------------------------------------
//Jehan has rejected him
//---------------------------------------------------------
IF ~Global("ysTalkedToKarim","GLOBAL",3)
		Global("ys_SpeakToMukhtar","GLOBAL",3)~ THEN BEGIN 50
	SAY @4302
	IF~~THEN REPLY @4310 GOTO 51
	IF~~THEN REPLY @4308 GOTO 100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 51
	SAY @4311
	IF~~THEN REPLY @4312 GOTO 52
	IF~~THEN REPLY @4313 GOTO 100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 52
	SAY @4314
	IF~~THEN REPLY @4315 GOTO 53
END

//---------------------------------------------------------
IF ~~ THEN BEGIN 53
	SAY @4316
	IF~~THEN REPLY @4317
		DO ~AddexperienceParty(6000)
				SetGlobal("ysTalkedToKarim","GLOBAL",1)~
	EXIT
END

//---------------------------------------------------------
IF ~Global("ysTalkedToKarim","GLOBAL",0)~ THEN BEGIN 100
	SAY @4318
	IF~~THEN REPLY @4319
		DO ~SetGlobal("ysTalkedToKarim","GLOBAL",1)~
	EXIT
END
