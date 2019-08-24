EXTEND_TOP Habrega 0 #2
IF~PartyHasItem("yslotus")~ THEN REPLY ~I have confiscated this sample of black lotus that red wizards had planned to smuggle into Athkatla.~ + Lotus
END

CHAIN
IF~~THEN Habrega Lotus
~Such a quantity! I won't ask where you came by this. Thank you, friend, you've done a great service for the city. Taking such a lot off the streets will help us in our fight. You've earned a reward.~DO~TakePartyItem("yslotus") GiveGoldForce(1000)~EXIT

