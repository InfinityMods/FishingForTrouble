BEGIN ysmorv

//-----------------------------------------------
IF ~Global("ys_TalkedToMorvans","LOCALS",1)
    AreaCheck("ys0161")~ THEN BEGIN CHEAPGOODS
    SAY @1900
    IF~Global("ys_PianoTalk","GLOBAL",1)~THEN REPLY @1901 GOTO BLK11
    IF ~~ THEN REPLY @1902 GOTO OPENSTORE
    IF ~~ THEN REPLY @1903 EXIT
END

//-----------------------------------------------
IF ~Global("ys_TalkedToMorvans","LOCALS",2)
    AreaCheck("ys0161")~ THEN BEGIN CHEAPGOODS2
    SAY @1900
    IF ~~ THEN REPLY @1911 
		DO ~StartStore("ysmorv",LastTalkedToBy())~
	EXIT
    IF ~~ THEN REPLY @1912 EXIT
END

//-----------------------------------------------
IF ~Global("ys_TalkedToMorvans","LOCALS",0)
    AreaCheck("ys0161")~ THEN BEGIN BLK0
    SAY @1904
    IF ~~ THEN REPLY @1905 GOTO BLK3
    IF ~~ THEN REPLY @1906 GOTO BLK1
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK1
    SAY @1907
    IF ~~ THEN REPLY @1908 GOTO BLK10
    IF ~~ THEN REPLY @1909 GOTO BLK2
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK2
    SAY @1910
    IF ~~ THEN REPLY @1911 
		DO ~SetGlobal("ys_TalkedToMorvans","LOCALS",2)
			StartStore("ysmorv",LastTalkedToBy())~
	EXIT
    IF ~~ THEN REPLY @1912
		  DO ~SetGlobal("ys_TalkedToMorvans","LOCALS",2)~
			EXIT
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK3
    SAY @1913
    IF ~~ THEN REPLY @1914 GOTO BLK4
    IF ~Global("ys_PianoTalk","GLOBAL",1)~THEN REPLY @1901 GOTO BLK11
    IF ~~ THEN REPLY @1915 GOTO OPENSTORE
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK4
    SAY @1916
    IF ~~ THEN REPLY @1917 GOTO BLK5
    IF ~~ THEN REPLY @1918 GOTO OPENSTORE
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK5
    SAY @1919
    IF ~~ THEN REPLY @1920 GOTO BLK6
    IF~Global("ys_PianoTalk","GLOBAL",1)~THEN REPLY @1901 GOTO BLK11
    IF ~~ THEN REPLY @1921 GOTO OPENSTORE
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK6
    SAY @1922
    IF~Global("ys_PianoTalk","GLOBAL",1)~THEN REPLY @1901 GOTO BLK11
    IF ~~ THEN REPLY @1921 GOTO OPENSTORE
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK10
    SAY @1923
    IF ~~ THEN REPLY @1915 GOTO OPENSTORE
    IF ~Global("ys_PianoTalk","GLOBAL",1)~THEN REPLY @1901 GOTO BLK11
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK11
    SAY @1924
    IF ~~ THEN REPLY @1925 GOTO BLK12
    IF ~~ THEN REPLY @1926 GOTO BLK20
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK20
    SAY @1923
    IF ~~ THEN REPLY @1915 GOTO OPENSTORE
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK12
    SAY @1927
		= @1928
		= @1929
		= @1930
    IF ~~ THEN REPLY @1931 GOTO BLK13
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK13
    SAY @1932
    = @1933
    = @1934
    IF ~~ THEN REPLY @1935 GOTO BLK14
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK14
    SAY @1936
    IF ~~ THEN REPLY @1937 GOTO BLK15
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK15
    SAY @1938
    = @1939
    = @1940
    = @1941
    IF ~~ THEN REPLY @1942 GOTO BLK16
END

//-----------------------------------------------
IF ~~ THEN BEGIN BLK16
    SAY @1943
    IF ~~ THEN
    	DO ~SetGlobal("ys_PianoTalk","GLOBAL",2)~
		REPLY @1944 GOTO OPENSTORE
END

//-----------------------------------------------
//IF ~~ THEN BEGIN BLK
//    SAY ~~
//    IF ~~ THEN REPLY ~~ GOTO BLK
//    IF ~~ THEN REPLY ~~ GOTO BLK
//END

//Open the store
IF ~~ THEN BEGIN OPENSTORE
    SAY @1945
    IF ~~ THEN
      DO ~SetGlobal("ys_TalkedToMorvans","LOCALS",1)
          StartStore("ysmorv",LastTalkedToBy())~
      EXIT
END

