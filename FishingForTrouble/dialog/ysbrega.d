EXTEND_TOP Habrega 0 #2
IF ~PartyHasItem("yslotus")~ THEN 
REPLY @493 + Lotus
END

CHAIN
IF ~~ THEN Habrega Lotus
@494
DO ~TakePartyItem("yslotus") GiveGoldForce(1000)~ 
EXIT

