BEGIN yselcol2

//---------------------------------------------------------
IF ~Global("ys_TalkedToEildaren","GLOBAL",0)~THEN BEGIN 0
	SAY ~Thank you for saving my life. That was a good thing that you did, going all that way to Imradim.~
	IF~~THEN EXIT
END

