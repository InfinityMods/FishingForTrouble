BEGIN yscvmstr

IF ~Global("ys_TalkedToCaravanMaster","GLOBAL",0)~ THEN BEGIN BLK0
	SAY @2100
	IF ~~ THEN REPLY @2101 GOTO BLK3
	IF ~~ THEN REPLY @2102 GOTO BLK1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK1
	SAY @2103
	IF ~~ THEN REPLY @2104 GOTO BLK3
	IF ~~ THEN REPLY @2105 GOTO BLK2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK2
	SAY @2106
	IF ~~ THEN REPLY @2107 GOTO BLK4
	IF ~!InParty("Edwin")~ THEN REPLY @2108 GOTO BLK6
	IF ~IfValidForPartyDialogue("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @2108 GOTO BLK100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK3
	SAY @2109
	IF ~~ THEN REPLY @2110 GOTO BLK4
	IF ~!InParty("Edwin")~ THEN REPLY @2111 GOTO BLK6
	IF ~IfValidForPartyDialogue("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @2111 GOTO BLK100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK4
	SAY @2112
	IF ~!InParty("Edwin")~ THEN REPLY @2113 GOTO BLK6
	IF ~IfValidForPartyDialogue("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @2113 GOTO BLK100
	IF ~~ THEN REPLY @2114 GOTO BLK5
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK5
	SAY @2115
	IF ~!InParty("Edwin")~ THEN REPLY @2113 GOTO BLK6
	IF ~!InParty("Edwin")~ THEN REPLY @2108 GOTO BLK6
	IF ~IfValidForPartyDialogue("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @2113 GOTO BLK100
	IF ~IfValidForPartyDialogue("Edwin") InMyArea("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN REPLY @2108 GOTO BLK100
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK6
	SAY @2116
	IF ~~ THEN REPLY @2117 GOTO BLK7
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK7
	SAY @2118
	IF ~~ THEN REPLY @2119 GOTO BLK8
	IF ~~ THEN REPLY @2120 GOTO BLK9
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK8
	SAY @2121
	IF ~~ THEN REPLY @2122
	DO~ SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",1)
		EscapeArea()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK9
	SAY @2123
	IF ~~ THEN REPLY @2122
	DO~ SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",1)
		EscapeArea()~
	EXIT
END


//---------------------------------------------------------
//With Edwin path
//---------------------------------------------------------
IF ~~ THEN BEGIN BLK100
	SAY @2124
	IF ~~ THEN REPLY @2125 GOTO BLK101
	IF ~~ THEN REPLY @2126  EXTERN EDWINJ CH1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK101
	SAY @2127
	IF ~~ THEN REPLY @2128 GOTO BLK105
	IF ~~ THEN REPLY @2129 GOTO BLK105
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK102
	SAY @2130
	IF ~~ THEN REPLY @2131 GOTO BLK104
	IF ~~ THEN REPLY @2132 GOTO BLK103
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK103
	SAY @2133
	IF ~~ THEN REPLY @2134 GOTO BLK110
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK104
	SAY @2135
	IF ~~ THEN EXTERN EDWINJ CH2
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK105
	SAY @2136
	IF ~~ THEN
		DO~ SetGlobal("ys_EdwinTalkedToCaravanMaster","GLOBAL",2)~
	REPLY @2137 GOTO BLK110
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK110
	SAY @2138
	IF ~~ THEN REPLY @2119 GOTO BLK111
	IF ~~ THEN REPLY @2139 GOTO BLK112
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK111
	SAY @2121
	IF ~~ THEN REPLY @2122
	DO~ SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",1)
		EscapeArea()~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK112
	SAY @2140
	IF ~~ THEN REPLY @2122
	DO~ SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",1)
		EscapeArea()~
	EXIT
END

//---------------------------------------------------------
//Find caravan master in his room.
//---------------------------------------------------------
IF ~Global("ys_TalkedToCaravanMaster","GLOBAL",1)~ THEN BEGIN BLK200
	SAY @2141
	IF ~~ THEN REPLY @2142 GOTO BLK201
	IF ~~ THEN REPLY @2143 GOTO BLK201
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK201
	SAY @2144
	IF ~~ THEN REPLY @2145 GOTO BLK202
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK202
	SAY @2146
	IF ~~ THEN REPLY @2147 GOTO BLK204
	IF ~~ THEN REPLY @2148 GOTO BLK203
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK203
	SAY @2149
	IF ~~ THEN REPLY @2150 GOTO BLK204
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK204
	SAY @2151
	=@2152
	=@2153
	IF ~~ THEN REPLY @2154 GOTO BLK205
	IF ~~ THEN REPLY @2155 GOTO BLK205
END

//---------------------------------------------------------
//Set the flag to allow the coward to change his mind
IF ~~ THEN BEGIN BLK205
	SAY @2156
		IF ~~ THEN REPLY @2157
		DO~ AddJournalEntry(@33,QUEST)~
		GOTO BLK206

	IF ~~ THEN REPLY @2158
	DO ~SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",2)
		AddJournalEntry(@33,QUEST)~
	EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK206
	SAY @2159
	IF ~~ THEN
	  DO ~SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",3)
	  GiveItemCreate("yschdnky",Player1,0,0,0)~
	EXIT
END

//---------------------------------------------------------
//Changed mind
//---------------------------------------------------------
IF ~Global("ys_TalkedToCaravanMaster","GLOBAL",2)~ THEN BEGIN BLK300
	SAY @2160
	IF ~~ THEN REPLY @2161
	DO~ AddJournalEntry(@35,QUEST)~
	GOTO BLK301
	IF ~~ THEN REPLY @2162 EXIT
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK301
	SAY @2159
	IF ~~ THEN
	DO ~SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",3)
		GiveItemCreate("yschdnky",Player1,0,0,0)~
	EXIT
END

//---------------------------------------------------------
//Start the fight
//---------------------------------------------------------
IF ~Global("ys_TalkedToCaravanMaster","GLOBAL",3)~ THEN BEGIN BLK310
	SAY @2163
	IF ~Global("ys_TalkedToWultheof","GLOBAL",1)~ THEN REPLY @2164 GOTO BLK311
	IF ~~ THEN REPLY @2165
		EXIT
END

//---------------------------------------------------------
//Change all the garrison scripts
//---------------------------------------------------------
IF ~~ THEN BEGIN BLK311
	SAY @2166
	IF ~~ THEN
	DO ~SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",4)
		SetGlobal("ys_GarrisonFight","GLOBAL",1)
		EscapeArea()~
	EXIT
END

//---------------------------------------------------------
//The Caravan Master has found Ailoth Tam
//---------------------------------------------------------
IF ~Global("ys_TalkedToCaravanMaster","GLOBAL",4)
    Global("ys_TalkedToAiloth","GLOBAL",0)
	Global("ys_GarrisonFight","GLOBAL",3)~ THEN BEGIN BLK330
	SAY @2167
	IF ~!InParty("Minsc")~ THEN REPLY @2168
	  DO ~SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",5)~
    EXIT
	IF ~IfValidForPartyDialogue("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN EXTERN MINSCJ CH1
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK331
	SAY @2169
	IF ~~ THEN
		DO ~SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",5)~
	EXIT
END

//---------------------------------------------------------
//Thank you
//---------------------------------------------------------
// Talked to Caravan Master after Ailoth Tam and has already spoken to Earl Wultheof
IF ~Global("ys_TalkedToCaravanMaster","GLOBAL",5)
    Global("ys_TalkedToAiloth","GLOBAL",1)
	Global("ys_GarrisonFight","GLOBAL",3)
	Global("ys_WultheofReward","GLOBAL",1)~ THEN BEGIN BLK320
	SAY @2170
	IF ~!InParty("Nalia")~ THEN
	DO~ AddexperienceParty(60000)
        RevealAreaOnMap("ys0370")
		SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",6)
		AddJournalEntry(@36,QUEST)~
	EXIT

	IF ~IfValidForPartyDialogue("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
		Global("ys_NaliaInterjectCapt","GLOBAL",1)~ THEN EXTERN NALIAJ CH2

	IF ~IfValidForPartyDialogue("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
		Global("ys_NaliaInterjectCapt","GLOBAL",0)~ THEN EXTERN NALIAJ CH3

END


//---------------------------------------------------------
// Talked to Caravan Master after Ailoth Tam and has NOT spoken to Earl Wultheof
IF ~Global("ys_TalkedToCaravanMaster","GLOBAL",5)
    Global("ys_TalkedToAiloth","GLOBAL",1)
	Global("ys_GarrisonFight","GLOBAL",3)
	Global("ys_WultheofReward","GLOBAL",0)~ THEN BEGIN BLK322
	SAY @2171
	IF ~!InParty("Nalia")~ THEN
	DO~ AddexperienceParty(60000)
		RevealAreaOnMap("ys0370")
		SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",6)
		AddJournalEntry(@36,QUEST)~
	EXIT

	IF ~IfValidForPartyDialogue("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
		Global("ys_NaliaInterjectCapt","GLOBAL",1)~ THEN EXTERN NALIAJ CH2
	IF ~IfValidForPartyDialogue("Nalia") InMyArea("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)
		Global("ys_NaliaInterjectCapt","GLOBAL",0)~ THEN EXTERN NALIAJ CH3
END

//---------------------------------------------------------
IF ~~ THEN BEGIN BLK321
	SAY @2172
	IF ~~ THEN
	DO~ AddexperienceParty(45000)
      RevealAreaOnMap("ys0370")
			SetGlobal("ys_TalkedToCaravanMaster","GLOBAL",6)
			AddJournalEntry(@36,QUEST)~
		EXIT
END

//---------------------------------------------------------
IF ~Global("ys_TalkedToCaravanMaster","GLOBAL",6)~ THEN BEGIN BLKDONE
	SAY @2173
	IF ~~ THEN EXIT
END

//---------------------------------------------------------
//Interjections
//---------------------------------------------------------
//Nalia
CHAIN NALIAJ CH2
@2174
== yscvmstr @2175
== NALIAJ @2176
== yscvmstr @2177
== NALIAJ @2178
END
++@2179 EXTERN yscvmstr BLK321

CHAIN NALIAJ CH3
@2180
== yscvmstr @2181
== NALIAJ @2176
== yscvmstr @2177
== NALIAJ @2178
END
++@2179 EXTERN yscvmstr BLK321

//Minsc
CHAIN MINSCJ CH1
@2182
== yscvmstr @2183
== MINSCJ @2184
END
++ @2185 EXTERN yscvmstr BLK331

CHAIN MINSCJ CH2
@2186
END
++@2187 EXTERN yscvmstr BLK102

//Edwin
CHAIN EDWINJ CH1
@2188
END
IF ~IfValidForPartyDialogue("Minsc") InMyArea("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN EXTERN MINSCJ CH2
++@2187 EXTERN yscvmstr BLK102

CHAIN EDWINJ CH2
@2189
END
++@2190 EXTERN yscvmstr BLK105
